ALTER DATABASE jisbell1 CHARACTER SET utf8 COLLATE utf8_unicode_ci;
-- Drops the existing table if it exists
DROP TABLE IF EXISTS comment;
-- creates new comment table
CREATE TABLE comment(
	commentId BINARY(16) NOT NULL,
	commentDateTime TIMESTAMP(6),
	commentText VARCHAR (128),
-- primary key for comment table
	PRIMARY KEY(commentId)
);
-- inserts values into comment table
INSERT INTO comment(commentId, commentDateTime, commentText) VALUES (UNHEX("a8d3473236d448c1ada912c40b441405"), TIMESTAMP ("2018-05-31","00:13:45"), "This is a comment");
INSERT INTO comment(commentId, commentDateTime, commentText) VALUES (UNHEX("a9a1e9550f854476a1234f1ee600dfbd"), TIMESTAMP ("2018-06-01", "12:36:21"), "This is another comment!");
INSERT INTO comment(commentId, commentDateTime, commentText) VALUES (UNHEX("cf97d6cea9c9488a875d60d8f4408ec6"), TIMESTAMP ("2018-06-02", "05:29:14"), "This is a third comment which isn't as popular as the other comments :(");
-- selects entire comment table
SELECT *
FROM comment;