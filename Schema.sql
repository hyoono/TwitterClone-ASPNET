
DROP TABLE IF EXISTS UserFollows;
DROP TABLE IF EXISTS PostLikes;
DROP TABLE IF EXISTS Posts;
DROP TABLE IF EXISTS AuthUsers;
DROP TABLE IF EXISTS Users;

CREATE TABLE Users(
	username VARCHAR(100) NOT NULL PRIMARY KEY
);

CREATE TABLE AuthUsers(
	username VARCHAR(100) NOT NULL,
	password VARCHAR(100) NOT NULL,
	FOREIGN KEY (username) REFERENCES Users(username)
);

CREATE TABLE Posts(
	postId INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	content TEXT NOT NULL,
	postedOn DateTime NOT NULL,
	postedBy VARCHAR(100) NOT NULL,
	FOREIGN KEY(postedBy) REFERENCES Users(username)
);


CREATE TABLE PostLikes(
	postId INT NOT NULL,
	username VARCHAR(100) NOT NULL,
	FOREIGN KEY(postId) REFERENCES Posts(postId),
	FOREIGN KEY(username) REFERENCES Users(username)
);


CREATE TABLE UserFollows(
	follower INT NOT NULL,
	followed INT NOT NULL,
	FOREIGN KEY(follower) REFERENCES Users(username),
	FOREIGN KEY(followed) REFERENCES Users(username)
);