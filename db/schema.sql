DROP DATABASE IF EXISTS raffle_dev;
CREATE DATABASE raffle_dev;

\c raffle_dev

DROP TABLE IF EXISTS raffle;
CREATE TABLE raffle (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    secret_token TEXT,
    created_at TIMESTAMPTZ NOT NULL,
    winner_id integer REFERENCES winner(id) ON DELETE CASCADE,
)

DROP TABLE IF EXISTS participants;
CREATE TABLE participants (
    id SERIAL PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL UNIQUE,
    created_at TIMESTAMPTZ NOT NULL,
    raffle_id integer REFERENCES raffle(id) ON DELETE CASCADE,
)

DROP TABLE IF EXISTS winner;
CREATE TABLE winner (
    id SERIAL PRIMARY KEY,
    raffle_id integer REFERENCES raffle(id) ON DELETE CASCADE,
    participants_id integer REFERENCES participants(id) ON DELETE CASCADE
)

CREATE INDEX participants_raffle_id ON participants(raffle_id);