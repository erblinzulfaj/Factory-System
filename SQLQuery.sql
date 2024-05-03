create database Fabrike

use Fabrike

create table Stafi
(
	Id int primary key identity(1,1)
	,Emri varchar(50)
	,Mbiemri varchar(50)
	,Mosha int check(Mosha >=18)
	,Gjinia char(1)
	,Shteti int
	,Qyteti int
	,Orari int 
	,Titulli int
	,Rroga int
	,StazhPune varchar(50)
	,Statusi bit
	,Viti int default year(getdate())
	,Muaj int default month(getdate())
	,Dite int default day(getdate())
	,InstDate datetime default getdate()
)
create table Shtetet
(
	Id int primary key identity(1,1)
	,Emri varchar(50)
	, Statusi bit
)
create table Qytetet 
(
	Id int primary key identity(1,1)
	,Emri varchar(50)
) 
create table Orari
(
	Id int primary key identity(1,1)
	,Koha varchar(50)
)
create table Titulli 
(
	Id int primary key identity(1,1)
	,Titulli varchar(50)
)
alter table Stafi 
add foreign key(shteti) references shtetet(id)

alter table Stafi 
add foreign key(Qyteti) references Qytetet(id)

alter table Stafi 
add foreign key(Orari) references orari(id)

alter table Stafi 
add foreign key(titulli) references titulli(id)
insert into Stafi([Emri], [Mbiemri], [Mosha], [Gjinia], [Shteti], [Qyteti], [Orari],
[Titulli], [Rroga], [StazhPune], [Statusi])
values('Puntori 1', 'Puntori 1', 23, 'M', 1, 1, 1, 1, 600, '2 vite', 1),
      ('Puntori 2', 'Puntori 2', 20, 'F', 1, 3, 1, 2, 400, '2 vite', 1),
      ('Puntori 3', 'Puntori 3', 27, 'M', 1, 6, 1, 3, 1000, '7 vite', 1),
      ('Puntori 4', 'Puntori 4', 40, 'F', 2, 10, 1, 2, 450, '10 vite', 1),
      ('Puntori 5', 'Puntori 5', 30, 'M', 2, 10, 1, 1, 600, '5 vite', 1),
      ('Puntori 6', 'Puntori 6', 28, 'F', 3, 15, 2, 5, 500, '6 vite', 1),
      ('Puntori 7', 'Puntori 7', 32, 'M', 2, 9, 2, 4, 650, '7 vite', 1),
      ('Puntori 8', 'Puntori 8', 26, 'M', 1, 5, 1, 4, 600, '2 vite', 1),
      ('Puntori 9', 'Puntori 9', 25, 'M', 1, 4, 2, 6, 900, '5 vite', 1),
     ('Puntori 10', 'Puntori 10', 37, 'M', 3, 14, 1, 7, 750, '10 vite', 1),
     ('Puntori 11', 'Puntori 11', 36, 'M', 2, 12, 1, 7, 760, '12 vite', 1),
     ('Puntori 12', 'Puntori 12', 41, 'F', 4, 16, 1, 4, 600, '15 vite', 1),
     ('Puntori 13', 'Puntori 13', 50, 'M', 2, 9, 2, 7, 800, '20 vite', 1),
     ('Puntori 14', 'Puntori 14', 23, 'M', 1, 1, 1, 5, 450, '5 vite', 1),
     ('Puntori 15', 'Puntori 15', 29, 'M', 4, 16, 1, 8, 500, '6 vite', 1),
     ('Puntori 16', 'Puntori 16', 18, 'M', 1, 1, 1, 7, 650, '7 muaj', 1),
     ('Puntori 17', 'Puntori 17', 19, 'M', 2, 13, 1, 7, 700, '1 vit', 1)

insert into [dbo].[Shtetet]([Emri], [Statusi])
values('Kosove', 1),
('Shqiperi',1),
('Maqedoni',1),
('Mali Zi', 1)

insert into Qytetet(Emri)
values('Prishtine')
,('Malisheve')
,('Mitrovice')
,('Suhareke')
,('Prizeren')
,('Pej')
,('Podujeve')
,('Drenas')
,('Tirane')
,('Durres')
,('Shkoder')
,('Sarande')
,('Vlore')
,('Shkup')
,('Kerqove')
,('Ulqin')

insert into Orari(Koha)
values('Diten'),
('Naten')

insert into Titulli(Titulli)
values('Puntor Krahu'),
('Pastrues'),
('Menagjer'),
('Kontabilist'),
('Recepsion'),
('C m C'),
('Montim'),
('Roje nate')

alter table Stafi 
add RrogaShtes int null 

alter table stafi 
add Llaptopi int null

alter table stafi 
add Makina int null

create table Llaptopet(
Id int primary key identity(1,1),
Emri varchar(50),
Statusi bit
)

create table Makinat(
Id int primary key identity(1,1),
Emri varchar(50),
Statusi bit
)

insert into Makinat(Emri, Statusi)
values('Makina 1',1),
('Makina 2',1),
('Makina 3',1),
('Makina 4',1),
('Makina 5',1),
('Makina 6',1),
('Makina 7',1),
('Makina 8',0),
('Makina 9',0)


alter table Stafi
add Foreign key (makina) references Makinat(id)

insert into Llaptopet(Emri, Statusi)
values('Llaptopi 1',1),
('Laptopi 2',1),
('Llaptopi 3',1),
('Laptopi 4',1),
('Llaptopi 5',1),
('Laptopi 6',1),
('Llaptopi 7',1),
('Laptopi 8',0),
('Llaptopi 9',0),
('Laptopi 10',0)

create table telefonPune(
Id int primary key identity(1,1),
Emri varchar(50),
Statusi bit
)

insert into telefonPune(Emri, Statusi)
values('Telefoni 1', 0),
('Telefoni 2', 1),
('Telefoni 3', 1),
('Telefoni 4', 1),
('Telefoni 5', 1),
('Telefoni 6', 1),
('Telefoni 7', 1),
('Telefoni 8', 1),
('Telefoni 9', 1),
('Telefoni 10', 1),
('Telefoni 11', 1),
('Telefoni 12', 1),
('Telefoni 13', 1),
('Telefoni 14', 1),
('Telefoni 15', 1),
('Telefoni 16', 1),
('Telefoni 17', 1),
('Telefoni 18', 1),
('Telefoni 19', 0),
('Telefoni 20', 0)

alter table Stafi
add foreign key(id) references TelefonPune(id)

-----------------------------------------------
alter table Stafi
add foreign key(Llaptopi) references Llaptopet(id) 
---- stafi qe ka llaptope
select s.emri, s.mbiemri, ll.emri from stafi s
inner join llaptopet ll
on S.llaptopi = ll.Id
---- te gjithe llaptopat 
select s.emri, s.mbiemri, ll.emri from stafi s
right join llaptopet ll
on S.llaptopi = ll.Id
--- i gjithe stafi dhe ata pa llaptopa
select s.emri, s.mbiemri, ll.emri from stafi s
left join llaptopet ll
on S.llaptopi = ll.Id
-----------------------------------------------
select s.emri, s.mbiemri, t.Titulli from stafi s
inner join Titulli t
on s.Titulli = T.Id

select s.emri, s.mbiemri, t.emri from stafi s
inner join telefonPune t
on s.Id = t.Id


create table Furnitoret 
(
	 Id int primary key identity(1,1)
	,Emri varchar(50)
	,Adresa varchar(50)
	,NumriTelefonit varchar(50)
)


create table Depo
(
	Id int primary key foreign key references Produktet(id)
	,Sasia varchar(50)
)

create table Klientet
(
	Id int primary key identity(1,1) 
	,Emri varchar(50)
	,NumriTelefonit varchar(50) 
	,QytetiId int foreign key references Qytetet(id)
	,ShtetiId int foreign key references Shtetet(id)
	,Sasia varchar(50)
	,Cmimi varchar(50)
	,Viti int default year(getdate())
	,Muaj int default month(getdate())
	,Dite int default day(getdate())
	,InstDate datetime default getdate()
)


create table Produktet_Klientet
(
	Id int primary key identity(1,1)
	,ProduktiId int foreign key references Produktet(id)
	,ShitjeId int foreign key references Klientet(id)
)


CREATE TABLE Porosite (
     ID int primary key identity(1,1)
	,ProduktiId int foreign key references Produktet(Id)
    ,KlientiID INT foreign key references Klientet(id)
	,Sasia varchar(50)
    ,ShumaTotale DECIMAL(10, 2)
	,Viti int default year(getdate())
	,Muaj int default month(getdate())
	,Dite int default day(getdate())
	,InstDate datetime default getdate()
)


CREATE TABLE Pagesa (
    ID int primary key ,
    PorosiaID int foreign key references Porosite(id),
	MenyraPagesesId int foreign key references MenyraPageses(id), 
	Viti int default year(getdate()),
	Muaj int default month(getdate()),
	Dite int default day(getdate()),
	InstDate datetime default getdate()
)

create table MenyraPageses(
	Id int primary key identity(1,1)
	,Pagesa varchar(50)
)

CREATE TABLE Koment (
    ID INT PRIMARY KEY IDENTITY(1,1),
    ProduktID INT FOREIGN KEY (ProduktID) REFERENCES Produktet(ID),
    KlientID INT FOREIGN KEY (KlientID) REFERENCES Klientet(ID),
    TekstiKomentit varchar(50),
	Viti int default year(getdate()),
	Muaj int default month(getdate()),
	Dite int default day(getdate()),
	InstDate datetime default getdate()
)

insert into Furnitoret([Emri], [ShtetiId], [QytetiId], [NumriTelefonit])
values('Furnitori 1', 5, 17, '+123 469 88 912'),
('Furnitori 2', 6, 20, '+113 109 28 122'),
('Furnitori 3', 6, 21, '+113 599 83 782'),
('Furnitori 4', 5, 18, '+123 126 44 198'),
('Furnitori 5', 6, 24, '+110 469 88 457'),
('Furnitori 6', 1, 1, '+383 49 888 124'),
('Furnitori 7', 2, 7, '+313 469 12 314'),
('Furnitori 8', 7, 25, '+120 469 88 912')

insert into Produktet([Emri], [Cmimi], [FurnitoriId])
values('Profili Per Dyre', '15$ per meter', 5),
('Profili Per Dritare', '10$ per meter', 5),
('Llajsne', '7$ per meter', 5),
('Shraf per heker', '100$ 500 cope', 2),
('Mekanizma', '10$ per cope', 1),
('Heker per Dyre', '10$ per meter', 5),
('Heker per Dritare', '10$ per meter', 5),
('Skalper', '3$ per cope', 1),
('Shraf per Profil', '80$ 5oo cope', 2),
('Adapter', '6$ per meter', 6),
('Kapak per Adapter', '20$ 50 cope', 6),
('Panell', '10$ per meter', 7),
('Xham', '7$ per meter', 7)

insert into Klientet([Emri], [NumriTelefonit], [ShtetiId], [QytetiId],[Blerjet])
values('Klienti 1','+123 469 88 912',5,17,'13.000$'),
('Klienti 2', '+113 109 28 142',6, 20,'2.500$'),
('Klienti 3', '+113 529 83 788', 6, 21,'4.000$'),
('Klienti 4', '+123 166 14 118', 5, 18,'10.340$'),
('Klienti 5', '+110 369 18 257', 6, 24,'5.040$'),
('Klienti 6', '+383 48 838 134', 1, 1,'200$'),
('Klienti 7', '+313 463 12 214', 2, 7,'50$'),
('Klienti 8', '+120 439 88 212', 7, 25,'490$')

insert into Porosite([ProduktiId], [KlientiID], [Sasia], [ShumaTotale])
values(13,4,'300m','3400$'),
(2,8,'200m','1800$'),
(1,3,'150m','1600$'),
(4,8,'360 cope','400$'),
(5,2,'400 cope','300$'),
(6,7,'630m','4400$'),
(7,6,'100m','2400$'),
(3,2,'200m','3000$'),
(2,5,'800m','5400$'),
(10,9,'130m','2400$')

insert into Produktet_Klientet([ProduktiId], [KlientetId])
values(1,4),
(1,5),
(2,2),
(2,6),
(4,7),
(3,4),
(8,2),
(2,3),
(2,4),
(8,8),
(5,9),
(3,5),
(6,2),
(2,8),
(3,6)

insert into depo(ProduktetId, [Sasia])
values(1,'10.000m'),
(2,'1000m'),
(3,'26.000m'),
(4,'1000 cope'),
(5,'2800 cope'),
(6,'17.000m'),
(7,'23.000m'),
(8,'9050 cope'),
(9,'4600 cope'),
(10,'9.000m'),
(11,'6039 cope'),
(12,'12.000m'),
(13,'16.000m')

insert into Pagesa([PorosiaID], [MenyraPagesesId])
values(1,1),
(2,2),
(3,1),
(4,2),
(7,1),
(6,2),
(1,2),
(8,1),
(9,2),
(10,1)

insert into MenyraPageses([Pagesa])
values('Cash'),
('Bank')

insert into Koment([ProduktID], [KlientID], [TekstiKomentit])
values(9,4,'Produkt i mire!'),
(6,6,'Produkt jo shume i mire!'),
(7,3,'Produkti me ka pelqyer shume!'),
(2,8,'Jeni me te miret!')

create table Pushimet
(
	Id int primary key identity(1,1),
	EmriPushimet varchar(50)
)

insert into Pushimet (EmriPushimet)
values('Fundvit'),
('Kurban Bajrami'),
('FiterBajrami'),
('1 Maji'),
('17 Shkurti'),
('28 Nentor'),
('Pushimi Vjetor'),
('Pushimi Dimeror'),
('Pushim Mjeksor')

create table Stafi_Pushimet
(
	Id int primary key identity(1,1)
	,StafiId int foreign key references Stafi(id)
	,PushimiId int foreign key references Pushimet(id)
	,ShumaTotale DECIMAL(10, 2)
	,Viti int default year(getdate())
	,Muaj int default month(getdate())
	,Dite int default day(getdate())
	,InstDate datetime default getdate()
)

insert into Stafi_Pushimet(StafiId, PushimiId)
values(2,4),
(5,4),
(7,2),
(9,9),
(11,6),
(16,5),
(2,6),
(5,1),
(7,7),
(9,3),
(11,4),
(16,9)


------------------------inner join------------------------------------------
select p.id, mp.Pagesa, pr.Emri, pr.Cmimi, k.Emri, po.Sasia from Pagesa p
inner join MenyraPageses mp
on p.MenyraPagesesId = mp.Id
inner join Porosite po
on p.PorosiaID = po.ID
inner join Produktet pr
on po.ProduktiId = pr.Id
inner join Klientet k
on po.KlientiID = k.Id


select p.Emri, p.Cmimi, f.Emri, sh.Emri from produktet p
inner join Furnitoret f
on p.FurnitoriId = f.Id
inner join Shtetet sh
on f.ShtetiId = sh.Id

select p.Cmimi, p.Emri ,k.Emri, k.Blerjet ,pk.Dita, pk.Viti,pk.Viti from Produktet_Klientet pk
inner join Produktet p
on pk.ProduktiId = p.Id
inner join Klientet k 
on pk.KlientetId = k.Id

select s.Emri, tp.Emri from Stafi s
inner join telefonPune tp
on s.Id = tp.Id

select sp.Id, s.Emri, s.Mbiemri, p.EmriPushimet from Stafi_Pushimet sp
inner join Stafi s
on sp.StafiId = s.Id
inner join Pushimet p
on sp.PushimiId = p.Id

select ko.ID, kl.Emri,p.Emri,ko.TekstiKomentit from Koment ko
inner join Klientet kl
on ko.KlientID = kl.Id
inner join Produktet p 
on ko.ProduktID = p.Id

select s.Emri, tp.Emri from stafi s
inner join telefonPune tp
on s.Id = tp.Id

select s.Emri, s.Mbiemri, m.Emri, t.Titulli from stafi s 
inner join Makinat m
on s.Makina = m.Id
inner join Titulli t
on s.Titulli = t.Id

-----------BackUp--------------------
backup database Fabrike
to disk = 'C:/database/Fabrike.bak'
DECLARE @path VARCHAR(500)
DECLARE @name VARCHAR(500)
DECLARE @pathwithname VARCHAR(500)
DECLARE @time DATETIME
DECLARE @year VARCHAR(4)
DECLARE @month VARCHAR(2)
DECLARE @day VARCHAR(2)
DECLARE @hour VARCHAR(2)
DECLARE @minute VARCHAR(2)
DECLARE @second VARCHAR(2)
SET @path = 'C:\database'
SELECT @time   = GETDATE()
SELECT @year   = (SELECT CONVERT(VARCHAR(4), DATEPART(yy, @time)))
SELECT @month  = (SELECT CONVERT(VARCHAR(2), FORMAT(DATEPART(mm,@time),'00')))
SELECT @day    = (SELECT CONVERT(VARCHAR(2), FORMAT(DATEPART(dd,@time),'00')))
SELECT @hour   = (SELECT CONVERT(VARCHAR(2), FORMAT(DATEPART(hh,@time),'00')))
SELECT @minute = (SELECT CONVERT(VARCHAR(2), FORMAT(DATEPART(mi,@time),'00')))
SELECT @second = (SELECT CONVERT(VARCHAR(2), FORMAT(DATEPART(ss,@time),'00')))
SELECT @name ='Fabrike' + '_' + @year +'-'+ @month +'-'+ @day +'_'+ @hour +'_'+ @minute +'_'+ @second
SET @pathwithname = @path + '\'+ @name + '.bak'
BACKUP DATABASE Fabrike 
TO DISK = @pathwithname
