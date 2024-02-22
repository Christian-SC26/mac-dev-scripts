# Shell productivity functions

# Make directory and cd into it
mkcd() {
    mkdir -p "$1" && cd "$1"
}

# Kill process running on a specific port
killport() {
    if [ -z "$1" ]; then
        echo "Usage: killport <port_number>"
        return 1
    fi
    local pid
    pid=$(lsof -ti tcp:"$1")
    if [ -n "$pid" ]; then
        kill -9 "$pid"
        echo "Killed process $pid on port $1"
    else
        echo "No process found on port $1"
    fi
}
