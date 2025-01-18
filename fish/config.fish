# Disable the fish greeting message on startup
set -g fish_greeting

# Alias Definitions
# Alias for opening Neovim with 'n'
alias n="nvim"

# Alias for displaying the local IP address (excluding IPv6)
alias ip="ifconfig | awk '/inet / && !/inet6/ {print \$1, \$2}'"

# Alias to quickly navigate to the home directory
alias h="cd $HOME"

# Function to show current date and time in RFC 3339 format with timezone and Unix timestamp
function now
    echo -n "Current Date and Time: "
    # Output the current date and time in RFC 3339 format (with timezone offset)
    date '+%Y-%m-%dT%H:%M:%S%z'
    
    echo -n "Unix Timestamp: "
    # Output the current Unix timestamp (seconds since epoch)
    date +%s
end

# Function to output the current Unix timestamp
function timestamp
    # Print Unix timestamp (seconds since epoch)
    date +%s
end

# Function to format a given timestamp (Unix timestamp) to a human-readable format
function format_timestamp
    # Convert the provided Unix timestamp to a human-readable date format (YYYY-MM-DD HH:MM:SS)
    date -r $argv[1] "+%Y-%m-%d %H:%M:%S"
end

# Conditional block to run commands only in interactive sessions
if status is-interactive
    # Place commands that should run only in interactive mode here
end

# Initialize Homebrew environment (ensure proper setup for Homebrew)
eval "$(/opt/homebrew/bin/brew shellenv)"
