SHOW DATABASES;
'data'


DROP DATABASE IF EXISTS demo;
CREATE DATABASE demo;
USE demo;

CREATE TABLE article (
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateData DATETIME NOT NULL,
    title CHAR(100) NOT NULL,
    `body` TEXT NOT NULL
);

INSERT INTO article
SET regDate = NOW(),
updateData = NOW(),
title = '제목1',
`body` = '내용1';

INSERT INTO article
SET regDate = NOW(),
updateData = NOW(),
title = '제목2',
`body` = '내용2';


INSERT INTO article
SET regDate = NOW(),
updateData = NOW(),
title = '제목3',
`body` = '내용3';


SELECT * FROM article;