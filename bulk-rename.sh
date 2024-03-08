#! /bin/bash
# Bulk renaming script # 
# Function to check if arguements are provided #
if [ $# -eq 0 ]; then
echo
echo "Usage: $0 [old_name] [new_name]"
echo 
exit 1
fi 

# renaming function #
while (("$#")); do
if [ -e "$1" ]; then
echo
echo "Renaming $1 to $2"
echo
mv "$1" "$2"
else
echo "$1 does not exist!"
fi
shift 2
done

