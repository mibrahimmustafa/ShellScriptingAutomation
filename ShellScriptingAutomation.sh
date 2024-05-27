#!/bin/bash

# Define root directory
ROOT_DIR="root"

# Create root directory if it doesn't exist
mkdir -p $ROOT_DIR

# Step 1: Create ten directories under the root folder
for i in {1..10}; {
    mkdir -p $ROOT_DIR/dir$i
}

# Step 2: Create ten documents in each directory
for i in {1..10}; {
    for j in {1..10}; {
        touch $ROOT_DIR/dir$i/doc$j.txt
    }
}

# Step 3: Add content to all documents
for i in {1..10}; {
    for j in {1..10}; {
        echo "This is the initial content for doc$j in dir$i" > $ROOT_DIR/dir$i/doc$j.txt
    }
}

# Step 4: Update all documents by appending five lines of phrase to each document
for i in {1..10}; {
    for j in {1..10}; {
        for k in {1..5}; {
            echo "This is an appended line $k in doc$j in dir$i" >> $ROOT_DIR/dir$i/doc$j.txt
        }
    }
}

# Step 5: Delete one document in each directory
for i in {1..10}; {
    rm -f $ROOT_DIR/dir$i/doc1.txt
}

echo "Task completed."
