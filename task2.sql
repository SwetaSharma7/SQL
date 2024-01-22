mysql> CREATE TABLE Manager (
    ->     ManagerID INT PRIMARY KEY,
    ->     ManagerName VARCHAR(255),
    ->     ManagerLocation VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE Contract (
    ->     ContractID INT PRIMARY KEY,
    ->     EstimatedCost DECIMAL(10, 2)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE Staff (
    ->     StaffID INT PRIMARY KEY,
    ->     StaffName VARCHAR(255),
    ->     StaffLocation VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE Client (
    ->     ClientID INT PRIMARY KEY,
    ->     Name VARCHAR(255),
    ->     Location VARCHAR(255),
    ->     ManagerID INT,
    ->     ContractID INT,
    ->     CompletionDate DATE,
    ->     StaffID INT,
    ->     FOREIGN KEY (ManagerID) REFERENCES Manager(ManagerID),
    ->     FOREIGN KEY (ContractID) REFERENCES Contract(ContractID),
    ->     FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
    -> );
Query OK, 0 rows affected (0.08 sec)

-- ouputs

mysql> DESCRIBE Manager
    -> ;
+-----------------+--------------+------+-----+---------+-------+
| Field           | Type         | Null | Key | Default | Extra |
+-----------------+--------------+------+-----+---------+-------+
| ManagerID       | int          | NO   | PRI | NULL    |       |
| ManagerName     | varchar(255) | YES  |     | NULL    |       |
| ManagerLocation | varchar(255) | YES  |     | NULL    |       |
+-----------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> DESCRIBE Contract;
+---------------+---------------+------+-----+---------+-------+
| Field         | Type          | Null | Key | Default | Extra |
+---------------+---------------+------+-----+---------+-------+
| ContractID    | int           | NO   | PRI | NULL    |       |
| EstimatedCost | decimal(10,2) | YES  |     | NULL    |       |
+---------------+---------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> DESCRIBE Staff;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| StaffID       | int          | NO   | PRI | NULL    |       |
| StaffName     | varchar(255) | YES  |     | NULL    |       |
| StaffLocation | varchar(255) | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> DESCRIBE Client;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| ClientID       | int          | NO   | PRI | NULL    |       |
| Name           | varchar(255) | YES  |     | NULL    |       |
| Location       | varchar(255) | YES  |     | NULL    |       |
| ManagerID      | int          | YES  | MUL | NULL    |       |
| ContractID     | int          | YES  | MUL | NULL    |       |
| CompletionDate | date         | YES  |     | NULL    |       |
| StaffID        | int          | YES  | MUL | NULL    |       |
+----------------+--------------+------+-----+---------+-------+