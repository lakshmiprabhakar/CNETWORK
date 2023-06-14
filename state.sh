#!/bin/bash

# Read the name of the Indian state
echo "Enter the name of an Indian state:"
read -r state

# Convert the state name to lowercase for case-insensitive comparison
state=$(echo "$state" | tr '[:upper:]' '[:lower:]')

# Check the state and display the main language
case $state in
  "andhra pradesh")
    echo "Main Language: Telugu"
    ;;
  "assam")
    echo "Main Language: Assamese"
    ;;
  "bihar")
    echo "Main Language: Hindi"
    ;;
  "himachal pradesh")
    echo "Main Language: Hindi"
    ;;
  "karnataka")
    echo "Main Language: Kannada"
    ;;
  "kerala" | "lakshadweep")
    echo "Main Language: Malayalam"
    ;;
  "tamil nadu")
    echo "Main Language: Tamil"
    ;;
  *)
    echo "Main Language: Unknown"
    ;;
esac

////////////////////////////////////////
OUTPUT
mca@cscc2d78:~$ gedit state.sh
^C
mca@cscc2d78:~$ ./state.sh
bash: ./state.sh: Permission denied
mca@cscc2d78:~$ chmod +x state.sh
mca@cscc2d78:~$ ./state.sh
Enter the name of an Indian state:
Lakshadweep
Main Language: Malayalam
mca@cscc2d78:~$ ./state.sh
Enter the name of an Indian state:
Andhra Pradesh
Main Language: Telugu
mca@cscc2d78:~$ ./state.sh
Enter the name of an Indian state:
Gujarat
Main Language: Unknown
mca@cscc2d78:~$ ./state.sh
Enter the name of an Indian state:
Assam
Main Language: Assamese
mca@cscc2d78:~$ ./state.sh
Enter the name of an Indian state:
Tamil Nadu
Main Language: Tamil
------------------------------
