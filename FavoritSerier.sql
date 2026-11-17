CREATE DATABASE FavoritSerier
GO

USE FavoritSerier
GO

CREATE TABLE SerieInfo(
Id INT IDENTITY(1, 1) PRIMARY KEY,
Titel NVARCHAR(100),
Typ NVARCHAR(20),
Genre NVARCHAR(20),
StartDatum DATE,
AntalSäsonger INT,
AntalAvsnitt INT,
Ranking DECIMAL(3,1),
Beskrivning NVARCHAR(MAX),
Pågående NVARCHAR(3)
);

INSERT INTO SerieInfo (Titel, Typ, Genre, StartDatum, AntalSäsonger, AntalAvsnitt, Ranking, Beskrivning, Pågående)
VALUES
-- LIVE ACTION
('Breaking Bad', 'Live action', 'Krim/Drama', '2008-01-20', 5, 62, 9.4,
 'En kemilärare med cancer börjar tillverka metamfetamin för att försörja sin familj.', 0),
('Prison Break', 'Live action', 'Action/Thriller', '2005-08-29', 5, 90, 8.8,
 'En man låter sig fängslas för att bryta ut sin oskyldigt dömde bror från fängelset.', 0),
('Modern Family', 'Live action', 'Komedi', '2009-09-23', 11, 250, 7.4,
 'Tre släkter i olika skeden av livet, berättade som en dokumentärserie.', 0),
('Money Heist', 'Live action', 'Krim/Thriller', '2017-05-02', 5, 41, 8.4,
 'Ett gäng under ledning av Professorn rånar Spaniens kungliga myntverk.', 0),
('The Office', 'Live action', 'Komedi', '2005-03-24', 9, 201, 7.8,
 'Vardagen på ett pappersföretag i Scranton (den amerikanska versionen).', 0),
('Peaky Blinders', 'Live action', 'Krim/Drama', '2013-09-12', 6, 36, 7.4,
 'Gangsterfamiljen Shelby bygger ett imperium i Birmingham efter första världskriget.', 0),
('Dexter', 'Live action', 'Krim/Thriller', '2006-10-01', 8, 96, 8.6,
 'En blodanalytiker hos polisen i Miami lever ett dubbelliv som seriemördare (originalserien).', 0),
('Better Call Saul', 'Live action', 'Krim/Drama', '2015-02-08', 6, 63, 9.6,
 'Förhistorien till Breaking Bad om advokaten Jimmy McGill som blir Saul Goodman.', 0),
('Narcos', 'Live action', N'Krim/Drama', '2015-08-28', 3, 30, 8.3,
 'Berättelsen om Pablo Escobar och jakten på honom (originalserien om Colombia).', 0),
('Squid Game', 'Live action', 'Thriller/Drama', '2021-09-17', 3, 22, 7.2,
 'Skuldsatta människor tävlar i dödliga barnlekar om ett jättepris.', 0),
('The Boys', 'Live action', 'Action/Superhjälte', '2019-07-26', 5, 40, 7.4,
 'En grupp vanliga människor tar upp kampen mot korrupta superhjältar.', 0),
('Brooklyn Nine-Nine', 'Live action', 'Komedi', '2013-09-17', 8, 153, 7.5,
 'Poliser med udda personligheter på ett polisdistrikt i Brooklyn.', 0),
('It''s Always Sunny in Philadelphia', 'Live action', 'Komedi', '2005-08-04', 18, 184, 7.8,
 'Fem självcentrerade vänner driver en pub i Philadelphia och ställer till det. Pågår fortfarande.', 1),

-- ANIME
('Dragon Ball', 'Anime', 'Action/Äventyr', '1986-02-26', 4, 595, 10,
 'Son Goku och hans vänner jagar drakkulorna. Inkluderar bara canon: Dragon Ball, Z, Super och Daima (4 serier).', 1),
('Demon Slayer', 'Anime', 'Action/Fantasy', '2019-04-06', 4, 63, 7.2,
 'Tanjiro blir demonjägare för att rädda sin syster som förvandlats till demon.', 1),
('Hunter x Hunter', 'Anime', 'Action/Äventyr', '2011-10-02', 6, 148, 8.3,
 'Gon vill bli Hunter och hitta sin pappa (2011 års version).', 0),
('Baki', 'Anime', 'Action/Kampsport', '2018-06-25', 4, 64, 7.8,
 'Baki Hanma tränar för att bli världens starkaste, inklusive Baki Hanma-serierna.', 0),
('Death Note', 'Anime', 'Mysterium/Thriller', '2006-10-04', 1, 37, 8.4,
 'En student hittar en anteckningsbok som dödar den vars namn skrivs i den.', 0),
('Chainsaw Man', 'Anime', 'Action/Skräck', '2022-10-12', 1, 12, 7.0,
 'Denji slår sig ihop med motorsågsdemonen Pochita och blir djävulsjägare.', 1),
('JoJo''s Bizarre Adventure', 'Anime', 'Action/Äventyr', '2012-10-06', 6, 190, 7.5,
 'Familjen Joestars släktsaga med kamper mot övernaturliga fiender, ny hjälte i varje del.', 0),
('Blue Lock', 'Anime', 'Sport/Drama', '2022-10-09', 2, 38, 7.7,
 'Japan söker världens bästa anfallare i ett hårt träningsprogram.', 1),
('Pokémon', 'Anime', 'Action/Äventyr', '1997-04-01', 25, 1250, 7.1,
 'Ash Ketchum reser världen runt för att bli Pokémon-mästare (säsongerna med Ash).', 1),
('Hajime no Ippo', 'Anime', 'Sport/Boxning', '2000-10-03', 3, 126, 7.4,
 'En blyg gymnasiepojke börjar boxas och jobbar sig upp mot världsmästartiteln.', 0),

-- TECKNAT
('Family Guy', 'Tecknat', 'Komedi', '1999-01-31', 24, 450, 9.1,
 'Griffin-familjen i Quahog, full av chockhumor och blinkningar till populärkulturen.', 1),
('American Dad!', 'Tecknat', 'Komedi', '2005-02-06', 22, 400, 8.6,
 'CIA-agenten Stan Smith och hans udda familj, inklusive en utomjording.', 1),
('Rick and Morty', 'Tecknat', 'Sci-Fi/Komedi', '2013-12-02', 8, 81, 9.2,
 'En galen vetenskapsman och hans barnbarn reser genom rymden och parallella världar.', 1),
('Regular Show', 'Tecknat', 'Komedi', '2010-09-06', 8, 261, 7.3,
 'Mordecai och Rigby jobbar i en park och råkar ut för surrealistiska äventyr.', 0),
('Solar Opposites', 'Tecknat', 'Sci-Fi/Komedi', '2020-05-08', 6, 58, 7.6,
 'Fyra utomjordingar bosätter sig i en amerikansk förort efter att deras planet förstörts.', 0),
('Tom and Jerry', 'Tecknat', 'Komedi', '1940-02-10', NULL, NULL, 7.2,
 'Katten Tom och musen Jerry i en evig jakt. Klassiska kortfilmer, så antal säsonger saknas.', 0),
('Scooby-Doo', 'Tecknat', 'Mysterium/Komedi', '1969-09-13', NULL, NULL, 7.0,
 'Gänget och hunden Scooby löser mysterier. Många olika serier, så antal säsonger saknas.', 0),
('Invincible', 'Tecknat', 'Action/Superhjälte', '2021-03-26', 4, 32, 7.1,
 'Tonåringen Mark Grayson får superkrafter av sin pappa, världens starkaste hjälte.', 1);

SELECT * FROM SerieInfo
ORDER BY Ranking DESC

