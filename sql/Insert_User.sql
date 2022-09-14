
--Insert_User 'user1', '12345', '1234 5678', 'user1@gmail.com'
CREATE PROCEDURE [dbo].[Insert_User] --import from users
	@Username NVARCHAR(20),
	@Password NVARCHAR(20),
	@Email NVARCHAR(30)
	@Phone NVARCHAR(30)
AS
BEGIN --begin procedure
	SET NOCOUNT ON; --using if else condition
	IF EXISTS(SELECT UserId FROM Users WHERE Username = @Username)
	BEGIN
		SELECT -1 -- Username exists.
	END
	ELSE IF EXISTS(SELECT UserId FROM Users WHERE Email = @Email)
	BEGIN
		SELECT -2 -- Email exists.
	END
	ELSE
	BEGIN
		INSERT INTO [Users]
			   ([Username]
			   ,[Password]
			   ,[Email]
			   ,[Phone]
			   ,[CreatedDate])
		VALUES
			   (@Username
			   ,@Password
			   ,@Email
			   ,@Phone
			   ,GETDATE())
		
		SELECT SCOPE_IDENTITY() -- UserId return number for each record			   
     END
END

GO


