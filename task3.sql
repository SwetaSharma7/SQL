mysql> CREATE TABLE Patient (
    ->     PatientID INT PRIMARY KEY,
    ->     Name VARCHAR(255),
    ->     DOB DATE,
    ->     Address VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.12 sec)

mysql> CREATE TABLE Doctor (
    ->     DoctorID INT PRIMARY KEY,
    ->     DoctorName VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE Secretary (
    ->     SecretaryID INT PRIMARY KEY,
    ->     SecretaryName VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE Prescription (
    ->     PrescriptionID INT PRIMARY KEY,
    ->     PatientID INT,
    ->     Drug VARCHAR(255),
    ->     Date DATE,
    ->     Dosage VARCHAR(255),
    ->     DoctorID INT,
    ->     SecretaryID INT,
    ->     FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    ->     FOREIGN KEY (DoctorID) REFERENCES Doctor(DoctorID),
    ->     FOREIGN KEY (SecretaryID) REFERENCES Secretary(SecretaryID)
    -> );
Query OK, 0 rows affected (0.06 sec)

-- outputs 
mysql> DESCRIBE Patient;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| PatientID | int          | NO   | PRI | NULL    |       |
| Name      | varchar(255) | YES  |     | NULL    |       |
| DOB       | date         | YES  |     | NULL    |       |
| Address   | varchar(255) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> DESCRIBE Doctor;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| DoctorID   | int          | NO   | PRI | NULL    |       |
| DoctorName | varchar(255) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> DESCRIBE Secretary
    -> ;
+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| SecretaryID   | int          | NO   | PRI | NULL    |       |
| SecretaryName | varchar(255) | YES  |     | NULL    |       |
+---------------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> DESCRIBE Prescriotion;
ERROR 1146 (42S02): Table 'Pavani.Prescriotion' doesn't exist
mysql> DESCRIBE Prescription;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| PrescriptionID | int          | NO   | PRI | NULL    |       |
| PatientID      | int          | YES  | MUL | NULL    |       |
| Drug           | varchar(255) | YES  |     | NULL    |       |
| Date           | date         | YES  |     | NULL    |       |
| Dosage         | varchar(255) | YES  |     | NULL    |       |
| DoctorID       | int          | YES  | MUL | NULL    |       |
| SecretaryID    | int          | YES  | MUL | NULL    |       |
+----------------+--------------+------+-----+---------+-------+