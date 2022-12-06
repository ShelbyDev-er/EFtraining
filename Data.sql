CREATE DATABASE TrainingEntity
GO

USE TrainingEntity
GO

CREATE TABLE ClassRooms
(
	ID INT IDENTITY PRIMARY KEY,
	NAME NVARCHAR(100) DEFAULT N'Vtc class',
)
GO

CREATE TABLE Students
(
	ID INT IDENTITY PRIMARY KEY,
	NAME NVARCHAR(100) DEFAULT N'Vtc name',
	IDClasses INT NOT NULL,
	FOREIGN KEY (IDClasses) REFERENCES dbo.ClassRooms(ID)
)
GO

INSERT INTO dbo.ClassRooms
		( Name )
VALUES (N'class 1')

INSERT INTO dbo.ClassRooms
		( Name )
VALUES (N'class 2')

INSERT INTO dbo.ClassRooms
		( Name )
VALUES (N'class 3')

INSERT INTO dbo.ClassRooms
		( Name )
VALUES (N'class 4')

INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 1', 1 )

INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 2', 1 )

INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 3', 1 )

INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 4', 1 )


INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 1', 2 )

INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 2', 2 )

INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 3', 2 )

INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 4', 2 )


INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 1', 3 )

INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 2', 3 )

INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 3', 3 )

INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 4', 3 )


INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 1', 4 )

INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 2', 4 )

INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 3', 4 )

INSERT dbo.Students
		( Name, IDClasses )
VALUES ( N'Vtc name 4', 4 )