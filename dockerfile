# Use the official Golang image as a base
FROM golang:1.20 as builder

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy everything from the current directory to the working directory
COPY . .

# Build the Go app
RUN go build -o myapp .

# Start a new stage from scratch
FROM alpine:latest  

# Copy the Pre-built binary file from the previous stage
COPY --from=builder /app/myapp .

# Command to run the executable
CMD ["./myapp"]

