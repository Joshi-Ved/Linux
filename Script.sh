!#/bin/bash

echo "This script is running to test auto comitting a message on git hub"
echo "Checking GitHub for updates..."
git fetch

STATUS=$(git status -uno)

if [[ $STATUS == *"behind"* ]]; then
    echo "You are behind! Pulling latest changes from GitHub..."
    git pull
    echo " System updated. Now preparing your push..."
elif [[ $STATUS == *"ahead"* ]]; then
    echo " You are already ahead. Preparing to push your new changes..."
else
    echo " You are up-to-date with GitHub."
fi
Message=$1

if [[ -z "$Message" ]] ;then
echo "Hey!! WRITE A COMMIT MESSAGE"
echo "./Script.sh  'TYPE  HERE IN THIS FORMAT'"
exit 1
fi

git add .
git commit -m"$Message"
git push


echo "========================="
echo "    UPLOAD COMPLETE!     "
echo "========================="
echo "        _______          "
echo "       |  ___  |         "
echo "       | |   | |         "
echo "       | |___| |         "
echo "    ___|_______|___      "
echo "   \               /     "
echo "    \    WORKED!  /      "
echo "     \___________/       "
echo "         |||||           "
echo "         |||||           "
echo "========================="
echo "========================="
