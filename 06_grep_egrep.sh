#!/bin/bash
# grep and egrep examples

cat > sample.txt <<EOF
apple
banana
cat
apple123
dog
123apple
cat123
hello
EOF

echo "===== grep examples ====="

echo
echo "1. Lines containing 'apple':"
grep "apple" sample.txt

echo
echo "2. Lines starting with 'cat':"
grep "^cat" sample.txt

echo
echo "3. Lines ending with one or more digits:"
grep "[0-9]$" sample.txt

echo
echo "===== egrep examples ====="

echo
echo "1. Lines containing 'apple' OR 'dog':"
egrep "apple|dog" sample.txt

echo
echo "2. Lines containing 'apple' OR 'cat':"
egrep "apple|cat" sample.txt

echo
echo "3. Lines ending with digits:"
egrep "[0-9]+$" sample.txt
