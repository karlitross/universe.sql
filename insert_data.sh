#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE TABLE teams, games;")
echo $($PSQL "ALTER SEQUENCE teams_team_id_seq RESTART WITH 1;")
echo $($PSQL "ALTER SEQUENCE games_game_id_seq RESTART WITH 1;")

cat games.csv|while IFS="," read YEAR ROUND WINNER OPPONENT WIN_GOALS OPP_GOALS
do
  if [[ $YEAR != "year" ]]
  then
    IS_WIN=$(echo $($PSQL "SELECT team_id FROM teams WHERE name ='$WINNER';"))
    if [[ -z $IS_WIN ]]
    then
      INSERT_WIN=$(echo $($PSQL "INSERT INTO teams(name) VALUES('$WINNER');"))
      IS_WIN=$(echo $($PSQL "SELECT team_id FROM teams WHERE name ='$WINNER';"))
    fi
    IS_OPP=$(echo $($PSQL "SELECT team_id FROM teams WHERE name ='$OPPONENT';"))
    if [[ -z $IS_OPP ]]
    then
      INSERT_OPP=$(echo $($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');"))
      IS_OPP=$(echo $($PSQL "SELECT team_id FROM teams WHERE name ='$OPPONENT';"))
    fi

    # echo $YEAR $ROUND $WINNER $OPPONENT $IS_WIN $IS_OPP $WIN_GOALS $OPP_GOALS

    INSERT_GAME=$(echo $($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $IS_WIN, $IS_OPP, $WIN_GOALS, $OPP_GOALS);"))

  fi
done