function gcm
    # Function to generate commit message
    function generate_commit_message
        git diff --cached | llm "
Below is a diff of all staged changes, coming from the command:

```
git diff --cached
```

Please generate a concise, one-line commit message for these changes."
    end

    # Main script
    echo "Generating AI-powered commit message..."
    set commit_message (generate_commit_message)

    while true
        echo -e "\nProposed commit message:"
        echo $commit_message

        read -n 1 -P "Do you want to (a)ccept, (e)dit, (r)egenerate, or (c)ancel? " choice

        switch $choice
            case a A
                if git commit -m (string escape -- $commit_message)
                    echo "Changes committed successfully!"
                    return 0
                else
                    echo "Commit failed. Please check your changes and try again."
                    return 1
                end

            case e E
                read -P "Enter your commit message: " user_message
                if test -n "$user_message"; and git commit -m (string escape -- $user_message)
                    echo "Changes committed successfully with your message!"
                    return 0
                else
                    echo "Commit failed. Please check your message and try again."
                    return 1
                end

            case r R
                echo "Regenerating commit message..."
                set commit_message (generate_commit_message)

            case c C
                echo "Commit cancelled."
                return 1

            case '*'
                echo "Invalid choice. Please try again."
        end
    end
end
