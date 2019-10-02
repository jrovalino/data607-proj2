#CREATE SCHEMA `data607proj2` ;

#drop table table
#Game Name, Month, Day, Year, Num1, Num2, Num3, Num4, Num5, Powerball, Power Play

DROP TABLE IF EXISTS powerball;

CREATE TABLE powerball(
  Game_Name varchar(20) NOT NULL, 
  Month varchar(2), 
  Day varchar(2), 
  Year varchar(4), 
  Num1 tinyint(2), 
  Num2 tinyint(2), 
  Num3 tinyint(2), 
  Num4 tinyint(2), 
  Num5 tinyint(2), 
  Powerball tinyint(2), 
  Power_Play tinyint(2) NULL, 
  PRIMARY KEY (Month, Day, Year)
  );
  #The Powerplay number that was missing values was added with 0 to load data into table. Jan 18, 2012 to Jan 18, 2014 was changed from blank to 0. 
  
  
LOAD DATA INFILE '/var/lib/mysql-files/powerball.csv' 
INTO TABLE powerball 
FIELDS TERMINATED BY ',';  
