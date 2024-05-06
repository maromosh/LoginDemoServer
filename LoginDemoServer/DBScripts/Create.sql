Create Database LoginDemoDB
Go


Create Table Users (
	Email nvarchar(100) PRIMARY KEY,
	[Password] nvarchar(20) NOT NULL,
	PhoneNumber nvarchar(20) NULL,
	BirthDate DATETIME NULL,
	[Status] int NULL,
	[Name] nvarchar(50) NOT NULL
)
Go

Create Table Greads (
	id int identity(100, 1) PRIMARY KEY,
	DateOfTest dateTime(20) NOT NULL,
	[Subject] nvarchar(20) NULL,
	Grade int NULL,
	Email int FOREIGN KEY REFERENCES Users(Email)
)
Go

INSERT INTO dbo.Users VALUES ('ofer@ofer.com', '1234', '+972526344450','15-nov-1972',1,'Ofer Zadikario')
INSERT INTO dbo.Greads (DateOfTest, [Subject], Grade,Email) VALUES ('15-nov-2024','Math',8, 'ofer@ofer.com')
INSERT INTO dbo.Greads (DateOfTest, [Subject], Grade,Email) VALUES ('02-jan-2024','Computer Science',5, 'ofer@ofer.com')
INSERT INTO dbo.Greads (DateOfTest, [Subject], Grade,Email) VALUES ('09-feb-2024','Math',9, 'ofer@ofer.com')
Go

select * from dbo.Greads

--scaffold-DbContext "Server = (localdb)\MSSQLLocalDB;Initial Catalog=LoginDemoDB;Integrated Security=True;Persist Security Info=False;Pooling=False;Multiple Active Result Sets=False;Encrypt=False;Trust Server Certificate=False;Command Timeout=0" Microsoft.EntityFrameworkCore.SqlServer -OutPutDir Models -Context LoginDemoDbContext -DataAnnotations -force