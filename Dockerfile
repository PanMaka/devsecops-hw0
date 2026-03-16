# Outdated compiler to have obvious vulnerabilities
FROM gcc:8

# Directory inside the container
WORKDIR /usr/src/bank

# Copy file into container
COPY bank.c .

# Compile with gnu17 and pthread for type extensions
RUN gcc -std=gnu17 -pthread -o my_bank bank.c

# Run the application with default arguments
CMD ["./my_bank", "10", "1000", "50", "0", "4"]