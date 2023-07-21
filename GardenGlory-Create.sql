-- Name: Alessandro Santos de Lima
-- ID: 300340437

-- USE master;
-- GO
-- ALTER DATABASE GardenGlory SET single_user WITH ROLLBACK IMMEDIATE;


DROP DATABASE IF EXISTS GardenGlory;
GO

CREATE DATABASE GardenGlory;
GO

USE GardenGlory;
GO

CREATE TABLE OWNER(
	OwnerID					INT			NOT NULL IDENTITY(1, 1),
	OwnerName				CHAR(35)	NOT NULL,
	OwnerEmailAddress		CHAR(35)	NOT NULL,
	OwnerType				CHAR(15)	NOT NULL,
	CONSTRAINT				OWNER_PK	PRIMARY KEY (OwnerId)
);

CREATE TABLE OWNED_PROPERTY (
	PropertyID				INT					NOT NULL IDENTITY (1, 1),
	PropertyName			CHAR(35)			NOT NULL,
	PropertyType			CHAR(20)			NOT NULL,
	Street					CHAR(35)			NOT NULL,
	City					CHAR(35)			NOT NULL,
	State					CHAR(20)			NOT NULL,
	Zip						CHAR(9)				NOT NULL,
	OwnerID					INT					NOT NULL,
	CONSTRAINT				PROPERTY_PK			PRIMARY KEY (PropertyID),
	CONSTRAINT				PROPERTY_OWNER_FK	FOREIGN KEY (OwnerID)
								REFERENCES OWNER (OwnerID)
									ON DELETE CASCADE
);

CREATE TABLE GG_SERVICE(
	ServiceID				INT				NOT NULL IDENTITY (1, 1),
	ServiceDescription		CHAR(100)		NOT NULL,
	CostPerHour				NUMERIC(8, 2)	NOT NULL,
	CONSTRAINT				SERVICE_PK		PRIMARY KEY (ServiceID)
)

CREATE TABLE EMPLOYEE (
	EmployeeID				INT				NOT NULL IDENTITY (1, 1),
	LastName				CHAR(35)		NOT NULL,
	FirstName				CHAR(35)		NOT NULL,
	CellPhone				CHAR(12)		NOT NULL,
	ExperienceLevel			CHAR(10)		NOT NULL,
	CONSTRAINT				EMPLOYEE_PK		PRIMARY KEY (EmployeeID)
);

CREATE TABLE PROPERTY_SERVICE (
	PropertyServiceID		INT						NOT NULL IDENTITY (1, 1),
	PropertyID				INT						NOT NULL,
	ServiceID				INT						NOT NULL,
	ServiceDate				DATE					NOT NULL,
	EmployeeID				INT						NOT NULL,
	HoursWorked				NUMERIC(8, 2)			NOT NULL,
	CONSTRAINT				PROPSERV_PK				PRIMARY KEY (PropertyServiceID),
	CONSTRAINT				PROPSERV_PROP_FK		FOREIGN KEY (PropertyID)
								REFERENCES OWNED_PROPERTY (PropertyID),
									-- ON DELETE CASCADE,
	CONSTRAINT				PROPSERV_SERV_FK		FOREIGN KEY (ServiceID)
								REFERENCES GG_SERVICE (ServiceID), 
									-- ON DELETE CASCADE,
	CONSTRAINT				PROPSERV_EMP_FK			FOREIGN KEY (EmployeeID)
								REFERENCES EMPLOYEE (EmployeeID)
									-- ON DELETE CASCADE
);