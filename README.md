# FileSystem Watcher Daemon (Go)

This program is a simple daemon written in Go that monitors a specified file for access, modification, creation, deletion, and movement events using Linux's inotify API. Whenever the watched file is accessed or changed, the program prints a message to the console describing the event.

## Why use Docker?
Using Docker ensures that the program runs in a consistent environment with the correct Go version and dependencies, regardless of your host system setup. This avoids issues with Go version mismatches or missing dependencies.

## How to Run with Docker

1. **Build the Docker image:**
   ```bash
   docker build -t filewatcher .
   ```

2. **Run the watcher:**
   Replace `backend.txt` with the file you want to monitor (must be in your current directory):
   ```bash
   docker run --rm -v "$PWD:/watched" filewatcher /watched/yourfile.txt
   ```
   - `-v "$PWD:/watched"` mounts your current directory into the container at `/watched`.
   - `/watched/yourfile.txt` is the path to your file inside the container.

## Example
If you want to watch a file called `test.txt` in your project directory:
```bash
docker run --rm -v "$PWD:/watched" filewatcher /watched/backend.txt
```

---

# CHEERS🎊🎊🎉

