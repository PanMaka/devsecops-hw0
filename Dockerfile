# Outdated compiler to have obvious vulnerabilities
FROM gcc:8

# Directory inside the container
WORKDIR /usr/src/bank

# 3. Copy your C file from your computer into the container
COPY main.c .

# Compile with gnu17 and pthread for type extensions
RUN gcc -std=gnu17 -pthread -o my_app main.c

# Run the application with default arguments
CMD ["./my_app", "10", "1000", "50", "0", "4"]