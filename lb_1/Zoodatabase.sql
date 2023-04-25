CREATE DATABASE zoo2
GO
USE zoo2
GO

CREATE TABLE Owners (
Id int IDENTITY primary key not null,
Name VARCHAR (50) not null,
PhoneNumber VARCHAR (15) not null,
Address VARCHAR (50)
)

CREATE TABLE AnimalTypes (
 Id int IDENTITY primary key not null,
 AnimalType VARCHAR (50) not null
)

CREATE TABLE Cages (
Id int IDENTITY primary key not null,
AnimalTypeId int not null,
foreign key (AnimalTypeId) references AnimalTypes(Id)
)

CREATE TABLE Animals (
Id int IDENTITY primary key not null,
Name VARCHAR (50) not null,
BirthDate Date not null,
OwnerId int,
AnimalTypeId int not null,
foreign key (OwnerId) references Owners(Id),
foreign key (AnimalTypeId) references AnimalTypes(Id),
)

CREATE TABLE AnimalsCages (
CageId  int  not null,
AnimalId int  not null,
primary key (CageId,AnimalId),
foreign key (AnimalId) references Animals(Id),
foreign key (CageId) references Cages(Id),
)

CREATE TABLE VolunteersDepartments (
Id int IDENTITY primary key not null,
DepartmentName VARCHAR (30) not null
)

CREATE TABLE Volunteers (
Id int IDENTITY primary key not null,
Name VARCHAR (50) not null,
PhoneNumber VARCHAR (15) not null,
Address VARCHAR (50),
AnimalId int ,
DepartmentId int not null,
foreign key (AnimalId) references Animals(Id),
foreign key (DepartmentId) references VolunteersDepartments(Id),
)