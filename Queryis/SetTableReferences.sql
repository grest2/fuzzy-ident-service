USE [UserIdentity]
GO

ALTER TABLE [FoneticUser]
ALTER COLUMN UserId nchar(10) NOT NULL
GO

ALTER TABLE [FoneticUser]
WITH CHECK ADD CONSTRAINT FK_User_FoneticUser FOREIGN KEY(UserId)
REFERENCES [UserData]
ON UPDATE CASCADE
ON DELETE CASCADE
GO

