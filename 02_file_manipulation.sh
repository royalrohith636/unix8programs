#!/bin/bash
# File Manipulation Commands

# Create a file
touch sample.txt

# Write content to the file
echo "Welcome to Unix" > sample.txt
echo "File manipulation example" >> sample.txt

# Display file content
echo "----- File Content -----"
cat sample.txt

# Display first line(s)
echo "----- First 2 Lines -----"
head -n 2 sample.txt

# Display last line(s)
echo "----- Last 2 Lines -----"
tail -n 2 sample.txt

# Copy the file
cp sample.txt sample_copy.txt

# Move/rename the copied file
mv sample_copy.txt renamed_sample.txt

# Create a new file with cat
cat > newfile.txt <<EOF
This is a new file.
Created using the cat command.
EOF

echo "Files created successfully."
ls -l sample.txt renamed_sample.txt newfile.txt
