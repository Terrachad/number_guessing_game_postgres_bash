#!/bin/bash


PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

MENU (){
if [[ -z $1 ]]
then
echo 
else
echo "$1"
fi

echo "Enter your username:"
read USERNAME

if [[ -z $USERNAME ]]
  then
  echo "Wrong input"
  MENU 
  else
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME'")
    if [[ -z $USER_ID ]]
    then
    INSERT_INTO_USERS=$($PSQL "INSERT INTO users VALUES('$USERNAME')")
    echo "Welcome, $USERNAME It looks like this is your first time here."
    fi
fi
GAME
}


GAME (){
echo "imgae"
}

MENU
