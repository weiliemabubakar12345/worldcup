-- Drop and recreate the database
DROP DATABASE IF EXISTS worldcup;
CREATE DATABASE worldcup;

\c worldcup

-- Create teams table
CREATE TABLE teams (
  team_id SERIAL PRIMARY KEY,
  name VARCHAR(50) UNIQUE NOT NULL
);

-- Create games table
CREATE TABLE games (
  game_id SERIAL PRIMARY KEY,
  year INT NOT NULL,
  round VARCHAR(255) NOT NULL,
  winner_id INT NOT NULL REFERENCES teams(team_id),
  opponent_id INT NOT NULL REFERENCES teams(team_id),
  winner_goals INT NOT NULL,
  opponent_goals INT NOT NULL
);
