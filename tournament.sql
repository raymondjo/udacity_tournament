-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.



DROP DATABASE IF EXISTS tournament;

-- Create Database 'Tournament'
CREATE DATABASE tournament;

-- Connect to the tournament database
\connect tournament

-- DROP TABLE IF EXISTS player CASCADE;
-- DROP tABLE IF EXISTS match CASCADE;

DROP TABLE IF EXISTS player CASCADE;
DROP tABLE IF EXISTS match CASCADE;


DROP TABLE IF EXISTS players CASCADE;
DROP TABLE IF EXISTS matches CASCADE;

DROP VIEW IF EXISTS  wins CASCADE;
DROP VIEW IF EXISTS  count CASCADE;
DROP VIEW IF EXISTS  standings CASCADE;
DROP VIEW IF EXISTS  matches CASCADE;

CREATE TABLE player (
  id SERIAL PRIMARY KEY,
  name VARCHAR(20) NOT NULL
);

CREATE TABLE match (
  id SERIAL PRIMARY KEY,
  winner INT REFERENCES player(id),
  loser INT REFERENCES player(id)
);



CREATE VIEW wins AS 
SELECT player.id, count(match.winner) as num FROM player
LEFT JOIN match ON player.id = match.winner
GROUP BY player.id;


CREATE VIEW matches_count AS 
SELECT player.id, count(match.winner) as num FROM player
LEFT JOIN match ON player.id = match.winner OR player.id =match.loser
GROUP BY player.id;


CREATE VIEW player_standings AS 
SELECT player.id ,player.name ,wins.num as wins ,matches_count.num as matches
 FROM player , wins, matches_count
 where player.id = wins.id and player.id = matches_count.id
 order by wins;
