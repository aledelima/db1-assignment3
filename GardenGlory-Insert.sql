-- Name: Alessandro Santos de Lima
-- ID: 300340437


USE GardenGlory;
GO

INSERT INTO EMPLOYEE (LastName, FirstName, CellPhone, ExperienceLevel) VALUES 
	('Smith', 'Sam', '206-254-1234', 'Master'),
	('Evanston', 'John', '206-254-2345', 'Senior'),
	('Murray',	'Dale',	'206-254-3456',	'Junior'),
	('Murphy',	'Jerry',	'585-545-8765',	'Master'),
	('Fontaine', 'Joan',	'206-254-4567',	'Senior');

INSERT INTO OWNER (OwnerName, OwnerEmailAddress, OwnerType) VALUES 	
	('Mary Jones','Mary.Jones@somewhere.com','Individual'),
	('DT Enterprises','DTE@dte.com','Corporation'),
	('Sam Douglas','Sam.Douglas@somewhere.com','Individual'),
	('UNY Enterprises','UNYE@unye.com','Corporation'),
	('Doug Samuels','Doug.Samuels@somewhere.com','Individual');
	
INSERT INTO OWNED_PROPERTY (PropertyName, PropertyType, Street, City, State, Zip, OwnerID) VALUES 
	('Eastlake Building',	'Office',				'123 Eastlake',		'Seattle',	'WA',	'98119',	2),
	('Elm St Apts',			'Apartments',			'4 East Elm',		'Lynwood',	'WA',	'98223',	1),
	('Jefferson Hill',		'Office',				'42 West 7th St',	'Bellevue',	'WA',	'98007',	2),
	('Lake View Apts',		'Apartments',			'1265 32nd Avenue',	'Redmond',	'WA',	'98052',	3),
	('Kodak Heights Apts',	'Apartments',			'65 32nd Avenue',	'Redmond',	'WA',	'98052',	4),
	('Jones House',			'Private Residence',	'1456 48th St',		'Bellevue',	'WA',	'98007',	1),
	('Douglas House',		'Private Residence',	'1567 51st St',		'Bellevue',	'WA',	'98007',	3),
	('Samuels House',		'Private Residence',	'567 151st St',		'Redmond',	'WA',	'98052',	5);
	
INSERT INTO GG_SERVICE (ServiceDescription, CostPerHour) VALUES
	('Mow Lawn',25.00), 
	('Plant Annuals',25.00), 
	('Weed Garden',30.00),
	('Trim Hedge',45.00), 
	('Prune Small Tree',60.00), 
	('Trim Medium Tree',100.00),
	('Trim Large Tree',125.00);

INSERT INTO PROPERTY_SERVICE (PropertyID, ServiceID, ServiceDate, EmployeeID, HoursWorked) VALUES
	(1,2,'2019-05-05',1,4.50), 
	(3,2,'2019-05-08',3,4.50), 
	(2,1,'2019-05-08',2,2.75),
	(6,1,'2019-05-10',5,2.50),
	(5,4,'2019-05-12',4,7.50),
	(8,1,'2019-05-15',4,2.75),
	(4,4,'2019-05-19',1,1.00),
	(7,1,'2019-05-21',2,2.50),
	(6,3,'2019-05-03',5,2.50), 
	(5,7,'2019-05-08',4,10.50),
	(8,3,'2019-05-12',4,2.75),
	(4,5,'2019-05-15',1,5.00),
	(7,3,'2019-05-19',2,4.00);