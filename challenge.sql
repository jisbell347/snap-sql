ALTER DATABASE jisbell1 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS comment;

CREATE TABLE comment(
	commentId BINARY(16) NOT NULL,
	commentDateTime TIMESTAMP,
	commentText VARCHAR (128),

	PRIMARY KEY(commentId)
);

INSERT INTO comment(commentId, commentDateTime, commentText) VALUES (UNHEX("a8d3473236d448c1ada912c40b441405"), TIMESTAMP ("2018-05-31","00:13:45"), "This is a comment");
INSERT INTO comment(commentId, commentDateTime, commentText) VALUES (UNHEX("a9a1e9550f854476a1234f1ee600dfbd"), TIMESTAMP ("2018-06-01", "12:36:21"), "This is another comment!");
