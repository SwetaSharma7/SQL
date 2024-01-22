mysql> CREATE TABLE Book (
    ->     ISBN VARCHAR(20) PRIMARY KEY,
    ->     Title VARCHAR(255),
    ->     Author VARCHAR(255),
    ->     Publisher VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> CREATE TABLE Branch (
    ->     BranchID INT PRIMARY KEY,
    ->     BranchAddr VARCHAR(255),
    ->     ISBN VARCHAR(20) UNIQUE,
    ->     NumCopies INT,
    ->     FOREIGN KEY (ISBN) REFERENCES Book(ISBN)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> DESCRIBE Book
    -> ;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ISBN      | varchar(20)  | NO   | PRI | NULL    |       |
| Title     | varchar(255) | YES  |     | NULL    |       |
| Author    | varchar(255) | YES  |     | NULL    |       |
| Publisher | varchar(255) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> DESCRIBE Branch;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| BranchID   | int          | NO   | PRI | NULL    |       |
| BranchAddr | varchar(255) | YES  |     | NULL    |       |
| ISBN       | varchar(20)  | YES  | UNI | NULL    |       |
| NumCopies  | int          | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+