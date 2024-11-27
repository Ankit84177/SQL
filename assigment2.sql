#1.  CREATING DATABASE AND TABLE
create database library;
use library;
create table books(
              id int primary key auto_increment,
              title varchar(225),
              author varchar(100),
              year year,
              genre varchar(100)
);
#2.  INSERTING VALUES
insert into books(title,author,year,genre)
values("The Great Gatsby","F. Scott Fitzgerald",1925,"Fiction"),
       ("Pride and Prejudice","Jane Austin",1913,"Romance"),
       ("TO Kill a Mokingbird","Harper Lee",1960,"Fiction"),
       ("1984","George Orwell",1949,"Dystopian"),
       ("Moby Dick","Herman Melville",1951,"Adventure");
select * from books;

#3.  Query to select all books where the title starts with the letter 'T' using the LIKE operator.
select title from books where title like 'T%';

#4.  Query to find all books where the author's last name ends with 'son' using the LIKE operator.
select title from books where author like '%son';

#5.   Query to find all books where the title contains the word 'and' using the LIKE operator.
select title from books where title like '%and%';

#6.  Query to retrieve all books where the title ends with the word 'bird' using the LIKE operator.
select title from books where title like '%bird';

#7.  Query to find all books where the title has exactly 3 characters using the REGEXP operator.
select * from books where title  REGEXP '^.[a-zA-Z]{3}$';
select * from books where title  REGEXP '^.{3}$';

#8.  Query to select all books where the title contains a number using the REGEXP operator.
select * from books where title regexp '[0-9]';

#9.  Query to retrieve all books where the author's name starts with any letter between 'A' and 'J' using the REGEXP operator
select author from books where author regexp'^[aj]';

#10.  Query to select all books where the genre is either 'Fiction' or 'Adventure' using the REGEXP operator.
select * from books where genre regexp'^(fiction|adventure)$';
select * from books where genre regexp'fiction|adventure';

#11.  Query to find all books where the title contains at least one uppercase letter using the REGEXP operator.
select * from books where title regexp'[A-Z]';

#12.  Query to find all books where the year of publication is between 1800 and 1950 using the LIKE operator.
select * from books where year like '19__' and ( year like '190%'
                                              or year like '191%'
                                              or year like '192%'
                                              or year like '193%'
                                              or year like '194%'
                                              or year like '1950');
   
##13. Query to retrieve all books where the author's name contains exactly two words using the REGEXP operator.   
select * from books where title regexp'^[a-zA-Z]+[a-zA-Z]+';
select * from books where title regexp'[A-Za-z]+ [A-Za-z]+';
select * from books where title regexp'^[A-Za-z]+ [A-Za-z]+';
select * from books2 where title regexp'[^\A+\Z+]';

#14. Query to find all books where the title starts with the letter 'P' and contains exactly two words using the REGEXP operator.
select * from books where title regexp'^P[a-zA-Z]+';

#15. Query to find all books where the title contains any special characters (e.g., '!', '@', '#', etc.) using the REGEXP operator.
select * from books where title regexp '[!@#\$%^&*()_+={}\:;"\'<>,.?/~`|-]';