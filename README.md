# udacity_tournament

udacity_tournament is database project is about learning realational database by designing database for swiss-system round matches 
and implementing it using python and PostgreSQL database.
## Table of contents

- [Download](#download)
- [Documentation](#documentation)
- [Testing](#testing)

## Download

The files for the project, may be [downloaded here](https://github.com/raymondjo/udacity_tournament/archive/master.zip).

### What's included

Within the download you'll find the following files:

```
udacity-tournament-database-master.zip
├── tournament.py
├── tournament.sql
├── tournament_test.py
└── README.md
```

## Documentation

To use the project files to setup a swiss-system tournament, follow the below steps. 

### 1. Download Files

Download the project files  [downloaded here](https://github.com/raymondjo/udacity_tournament/archive/master.zip).

### 2. Create Database and Tables
 Log into your PostgreSQL console then  Use the command to import the whole file into psql at once.
```
  \i tournament.sql
```

### 3. Import Functions

To use the tournament functions, import tournament.py into your python script.

```
import tournament

```

### 4. Use Functions 

The following functions are included in [tournament.py](https://github.com/raymondjo/udacity_tournament/blob/master/tournament.py) for you to use in running a swiss-system tournament.

#### connect()
Connects to the PostgreSQL database and returns a database connection.

#### deleteMatches()
Remove all match records from the database.

#### deletePlayers()
Remove all player records from the database.

#### countPlayers()
Returns the number of players currently registered in the tournament.

#### registerPlayer(name)
Adds a player to the tournament by putting an entry in the database. The database should assign an ID number to the player. Different players may have the same names but will receive different ID numbers.

#### playerStandings()
Returns a list of the players and their win records, sorted by wins. Therefore, the first entry is the player in first place or a player tied for first place if there is currently a tie. The returned list of tuples each contains the player's id, name, matches won, and number of matches played by the player).

#### reportMatch(winner, loser)
Creates a new match record, recording the winner and the loser of the match. The arguments for the winner and the loser must be the id numbers for each player.  

#### swissPairings()
Returns a list containing pairs of players for the next round of the tournament. The function assumes an even number of players registered and pairs players based on an equal or nearly-equal win record (i.e., it pairs players who are adjacent in the standings). The returned list of tuples each contain the id and name of both paired players (id1, name1, id2, name2).

## Testing

The project files also include the file [tournament_test.py](https://github.com/raymondjo/udacity_tournament/blob/master/tournament_test.py),
 which was used for testing that python functions. It is not needed to create a tournament database. 
 However, some may find it useful to test any modifications made to the tournament functions or to check if tournament functions work in correct way. 
