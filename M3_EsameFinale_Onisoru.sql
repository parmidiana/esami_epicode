/* Ciao Francesco, ecco il mio database per il negozio di giocattoli: DataLandDB.
Come ci ha suggerito Luca, ho usato l'AI per popolare le tabelle ma voglio fare anche una piccola ammissione di colpa:
ammetto di aver usato l'AI anche per sbrogliare ancuni problemi che mi stavano mandando in crisi. 
Non trovo giusto prendermi il merito per cose che non sono farina del mio sacco e inoltre, sono certa che te ne accorgeresti comunque.
Detto questo,
Benvenuto e buon divertimento a DataLandDB! */

-- Creazione del DB 

CREATE DATABASE DatalandDB;

USE DataLandDB;

-- Creazione delle tabelle

CREATE TABLE Region (
    RegionID INT PRIMARY KEY AUTO_INCREMENT,
    Regione VARCHAR(200) NOT NULL,
    City VARCHAR(200) NOT NULL,
    Address VARCHAR(200) NOT NULL
);

CREATE TABLE Product (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    Size INT NOT NULL,
    AgeTarget INT NOT NULL,
    ProductName VARCHAR(200) NOT NULL,
    ProductCost INT NOT NULL,
    Category VARCHAR(200) NOT NULL,
    CategoryID INT NOT NULL
);


CREATE TABLE Sales (
    SalesID INT PRIMARY KEY AUTO_INCREMENT,
    RegionID INT,
    ProductID INT,
    OrderDate DATE NOT NULL,
    Category VARCHAR(200) NOT NULL,
    CategoryID INT NOT NULL,
    Quantity INT NOT NULL,
    SalesAmount INT NOT NULL,
    FOREIGN KEY (RegionID) REFERENCES Region(RegionID),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID)
);

-- Popolazione delle tabelle con l'aiuto dell'AI

INSERT INTO Region (Regione, City, Address)
VALUES
('Lombardia', 'Milano', 'Via Roma 1'),
('Lazio', 'Roma', 'Piazza Venezia 12'),
('Campania', 'Napoli', 'Via Toledo 100'),
('Sicilia', 'Palermo', 'Corso Vittorio Emanuele 55'),
('Veneto', 'Venezia', 'Campo San Polo 32'),
('Piemonte', 'Torino', 'Via Po 10'),
('Emilia-Romagna', 'Bologna', 'Via Rizzoli 14'),
('Toscana', 'Firenze', 'Piazza della Signoria 8'),
('Puglia', 'Bari', 'Corso Vittorio Emanuele 22'),
('Calabria', 'Reggio Calabria', 'Lungomare Falcomatà 16'),
('Sardegna', 'Cagliari', 'Via Roma 50'),
('Liguria', 'Genova', 'Via XX Settembre 3'),
('Marche', 'Ancona', 'Piazza del Plebiscito 2'),
('Abruzzo', 'Pescara', 'Via Nicola Fabrizi 9'),
('Friuli Venezia Giulia', 'Trieste', 'Piazza Unità d''Italia 7'),
('Umbria', 'Perugia', 'Corso Vannucci 15'),
('Trentino-Alto Adige', 'Trento', 'Piazza Duomo 5'),
('Molise', 'Campobasso', 'Via Roma 21'),
('Basilicata', 'Potenza', 'productregionsalesVia Pretoria 30'),
('Valle d''Aosta', 'Aosta', 'Piazza Chanoux 4');

INSERT INTO Product (Size, AgeTarget, ProductName, ProductCost, Category, CategoryID)
VALUES
(10, 4, 'Costruzioni Base', 15, 'Costruzioni', 1),
(15, 6, 'Puzzle Animali', 10, 'Puzzle', 2),
(5, 10, 'Gioco da Tavolo', 25, 'Giochi di società', 3),
(20, 8, 'Bambola Classica', 30, 'Bambole', 4),
(12, 12, 'Robot Interattivo', 40, 'Elettronici', 5),
(18, 16, 'Kit Esperimenti', 50, 'Educativi', 6),
(8, 4, 'Pista Automobiline', 35, 'Automobili', 7),
(16, 8, 'Action Figure', 20, 'Collezionabili', 8),
(7, 5, 'Libro Illustrato', 10, 'Libri', 9),
(22, 14, 'Videogioco', 60, 'Videogiochi', 10),
(11, 7, 'Set di Lego', 25, 'Costruzioni', 1),
(13, 11, 'Puzzle 3D', 15, 'Puzzle', 2),
(9, 9, 'Gioco di Carte', 10, 'Giochi di società', 3),
(14, 6, 'Bambola Fantasy', 35, 'Bambole', 4),
(17, 13, 'Drone Giocattolo', 70, 'Elettronici', 5),
(19, 10, 'Microscopio Junior', 55, 'Educativi', 6),
(6, 4, 'Garage Automobiline', 45, 'Automobili', 7),
(20, 15, 'Set Guerriero', 30, 'Collezionabili', 8),
(4, 5, 'Fiaba Illustrata', 12, 'Libri', 9),
(23, 16, 'VR Headset', 100, 'Videogiochi', 10),
(10, 4, 'Treno Giocattolo', 20, 'Costruzioni', 1),
(14, 7, 'Puzzle Mappa', 18, 'Puzzle', 2),
(9, 10, 'Gioco Strategia', 35, 'Giochi di società', 3),
(12, 6, 'Bambola Sirena', 28, 'Bambole', 4),
(15, 14, 'Robot Transformer', 65, 'Elettronici', 5);

INSERT INTO Sales (RegionID, ProductID, OrderDate, Category, CategoryID, Quantity, SalesAmount)
VALUES
(1, 1, '2024-11-01', 'Costruzioni', 1, 2, 30),
(2, 2, '2024-11-02', 'Puzzle', 2, 3, 30),
(3, 3, '2024-11-03', 'Giochi di società', 3, 1, 25),
(4, 4, '2024-11-04', 'Bambole', 4, 4, 120),
(5, 5, '2024-11-05', 'Elettronici', 5, 1, 40),
(6, 6, '2024-11-06', 'Educativi', 6, 2, 100),
(7, 7, '2024-11-07', 'Automobili', 7, 1, 35),
(8, 8, '2024-11-08', 'Collezionabili', 8, 3, 60),
(9, 9, '2024-11-09', 'Libri', 9, 2, 20),
(10, 10, '2024-11-10', 'Videogiochi', 10, 1, 60),
(11, 11, '2024-11-11', 'Costruzioni', 1, 2, 50),
(12, 12, '2024-11-12', 'Puzzle', 2, 1, 15),
(13, 15, '2024-11-13', 'Elettronici', 5, 1, 70),
(14, 17, '2024-11-14', 'Collezionabili', 8, 1, 45),
(15, 19, '2024-11-15', 'Libri', 9, 2, 24);

-- verifico che tutte le tabelle siano state popolate correttamente

Select
	*
From
	product;
    
Select
	*
From
	Sales;
    
Select
	*
From
	Region;
    
-- Inizio l'esercizio

-- 1. Verificare che i campi definiti come PK siano univoci

select
	productid
from
	product
where
	productid >25;
    
    
select
	productid
	,count(*) as RigheUnivoche
from
	product
group by
	productid
having
	count(*)>1;

-- 2. Esporre l’elenco dei soli prodotti venduti e per ognuno di questi il fatturato totale per anno

select
	*
from
	product
inner join sales on
product.categoryid=sales.categoryid;

select
    p.ProductID
    ,p.ProductName
    ,year(s.OrderDate) as anno
    ,sum(s.SalesAmount) as totalefatturato
from
    Product p
join
    Sales s on p.ProductID = s.ProductID
group by
    p.ProductID, p.ProductName, year(s.OrderDate)
order by
    p.ProductName, anno;

-- 3. Esporre il fatturato totale per stato per anno. Ordina il risultato per data e per fatturato decrescente

select
    r.Regione as RegioneDiVendita
    ,year(s.OrderDate) as anno
    ,sum(s.SalesAmount) as TotaleFatturato
from
    Region r
join
    Sales s on r.RegionID = s.RegionID
group by
    r.Regione, year(s.OrderDate)
order by
    year(s.OrderDate) asc
    ,TotaleFatturato desc;
    
/* purtroppo ho dovuto rifare tutta da capo una seconda volta e mi sono dimenticata di dire all'AI
di mettere piu vendite per gli ultimi 3 anni, come avevo fatto la prima volta,
quindi questi dati non sono molto significativi ma almeno sono riuscita a scrivere le query*/

-- 4. Rispondere alla seguente domanda: qual è la categoria di articoli maggiormente richiesta dal mercato? 
select 
    s.Category as CategoriaPiuRischiesta
    ,sum(s.Quantity) as TotaleVenduti
from
    Sales s
group by 
    s.Category
order by
    TotaleVenduti desc
limit 1;

-- 5. Rispondere alla seguente domanda: quali sono, se ci sono, i prodotti invenduti? Proponi due approcci risolutivi differenti
select
    p.ProductID
    ,p.ProductName
from
    Product p
left join
    Sales s on p.ProductID = s.ProductID
where
    s.ProductID is null;
    
select
    p.ProductID
    ,p.ProductName
from
    Product p
where
    p.ProductID not in 
        (select distinct s.ProductID
        from Sales s);
/* In questo caso, ho chiesto aiuto all'Ai perche non riuscivo a capire in che modo usare la subquery*/

-- 6. Esporre l’elenco dei prodotti con la rispettiva ultima data di vendita (la data di vendita più recente)
select
    p.ProductID
    ,p.ProductName
    ,max(s.OrderDate) as UltimaDataVendita
from
    Product p
join
    Sales s on p.ProductID = s.ProductID
group by
    p.ProductID, p.ProductName
order by
    UltimaDataVendita desc;
    
/* Ho avuto qualche difficoltà a ingranare con le join perché, come ti dicevo anche su discord, è stato un mese nero a lavoro
e ho fatto davvero tanta fatica a stare al passo, quindi ho recuperato le lezioni in ritardo e ho usato internet 
e l'AI come aiuto per capire meglio come funzionino. 
Spero di essere stata ordinata e precisa il più possibile.
Buona correzione, a presto!*/

