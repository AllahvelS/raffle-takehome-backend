INSERT INTO raffle (name, secret_token, created_at) VALUES
('Nike Raffle', 'nike2024', CURRENT_TIMESTAMP),
('Game Raffle', 'game2024', CURRENT_TIMESTAMP),
('Furniture Raffle', 'sofa2024', CURRENT_TIMESTAMP);

INSERT INTO participants(first_name, last_name, email, created_at, raffle_id) VALUES
('Alli', 'Sali', 'alli@pursuit.org', CURRENT_TIMESTAMP, 1),
('Shan', 'Pegs', 'shan@pursuit.org', CURRENT_TIMESTAMP, 1),
('Phast', 'Battle', 'phast@pursuit.org', CURRENT_TIMESTAMP, 1);

INSERT INTO participants(first_name, last_name, email, created_at, raffle_id) VALUES
('Nameless', 'Person', 'nameless@pursuit.org', CURRENT_TIMESTAMP, 2),
('Juice', 'WRLD', '999@pursuit.org', CURRENT_TIMESTAMP, 2),
('Cole', 'World', 'cole@pursuit.org', CURRENT_TIMESTAMP, 2);

INSERT INTO participants(first_name, last_name, email, created_at, raffle_id) VALUES
('Aubrey', 'Graham', 'drake@pursuit.org', CURRENT_TIMESTAMP, 3),
('Future', 'Hndrx', 'pluto@pursuit.org', CURRENT_TIMESTAMP, 3),
('Symere', 'Woods', 'lilzui@pursuit.org', CURRENT_TIMESTAMP, 3);
