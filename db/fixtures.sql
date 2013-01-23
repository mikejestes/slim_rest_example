
INSERT INTO `skim_example`.`store` (`id`, `name`, `active`, `website`)
VALUES
(NULL , 'Store A', '1', 'http://a.example.com/'),
(NULL , 'Store B', '0', '');

INSERT INTO `skim_example`.`user` (`id`, `name`, `email`, `store_id`)
VALUES
(NULL , 'Guy 1', 'guy@example.org', '1'),
(NULL , 'Lady 2', 'lady@example.org', '2');
