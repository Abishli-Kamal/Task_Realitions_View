Create database Cinema 
use Cinema

Create table Film (
Film_Id int primary key Identity,
[Name] varchar(30),
Budget int ,
income int,
[Realse Date] smalldatetime,
Seans_Id int foreign key references Seans(SeansId)
)
 Create table Seans(
 SeansId int primary key Identity,
 [Datetime] smalldatetime 
 )

 Create Table Genre(
 GenreId int primary key Identity,
 [Name] varchar(20)
 )

 Create table Hall(
 HallId int primary key Identity,
 [Name] varchar(20),
 CountChairs int,
 SeansId1 int foreign key references Seans(SeansId)
 )

 Create table Ticket(
 TicketId int primary key identity,
 Price int,
 [Count] int,
 FilmId int foreign key references Film(Film_Id) ,
 SeansId2 int foreign key references Seans(SeansId),
 HallId int foreign key references Hall(HallId)
 )

 Create table Actor (
 ActorId int primary key identity,
 [Name] varchar (30),
 Age int,
 Salary int
 )

 Create Table Customer(
 CustomerId int primary key identity,
 [Name] varchar(30),
 TicketId1 int foreign key references Ticket(TicketId)
 )

 Create table FilmActor(
 FA_Id int primary key identity,
 FilmId1 int foreign key references Film(Film_Id),
 ActorId1 int foreign key references Actor(ActorId),
 )

 Create table FilmGenre(
 FG_Id int primary key identity,
 FilmId2 int foreign key references Film(Film_Id),
 GenreId1 int foreign key references Genre(GenreId)
 )


 select* from Ticket

CREATE VIEW AllTicket AS
SELECT Ticket.Count, Ticket.Price,Ticket.TicketId, Ticket.FilmId, Ticket.HallId, Ticket.SeansId2
FROM Ticket
select* from AllTicket 

