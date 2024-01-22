mysql> CREATE TABLE Doctors (
    ->     DoctorID INT PRIMARY KEY,
    ->     DoctorName VARCHAR(255) NOT NULL,
    ->     Secretary VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE Patients (
    ->     PatientID INT PRIMARY KEY,
    ->     PatientName VARCHAR(255) NOT NULL,
    ->     PatientDOB DATE,
    ->     PatientAddress VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE Drugs (
    ->     DrugID INT PRIMARY KEY,
    ->     DrugName VARCHAR(255) NOT NULL
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> CREATE TABLE Prescriptions (
    ->     PrescriptionID INT PRIMARY KEY,
    ->     DoctorID INT,
    ->     PatientID INT,
    ->     Drug VARCHAR(255) NOT NULL,
    ->     Date DATE,
    ->     Dosage VARCHAR(50),
    ->     FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID),
    ->     FOREIGN KEY (PatientID) REFERENCES Patients(PatientID)
    -> );
Query OK, 0 rows affected (0.06 sec)

-- output 

mysql> DESCRIBE Doctors
    -> ;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| DoctorID   | int          | NO   | PRI | NULL    |       |
| DoctorName | varchar(255) | NO   |     | NULL    |       |
| Secretary  | varchar(255) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+

mysql> DESCRIBE Patients;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| PatientID      | int          | NO   | PRI | NULL    |       |
| PatientName    | varchar(255) | NO   |     | NULL    |       |
| PatientDOB     | date         | YES  |     | NULL    |       |
| PatientAddress | varchar(255) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+


mysql> DESCRIBE Prescriptions;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| PrescriptionID | int          | NO   | PRI | NULL    |       |
| DoctorID       | int          | YES  | MUL | NULL    |       |
| PatientID      | int          | YES  | MUL | NULL    |       |
| Drug           | varchar(255) | NO   |     | NULL    |       |
| Date           | date         | YES  |     | NULL    |       |
| Dosage         | varchar(50)  | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+


mysql> DESCRIBE Drugs;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| DrugID   | int          | NO   | PRI | NULL    |       |
| DrugName | varchar(255) | NO   |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
