CREATE TABLE Employee_List (ID int not null,
			Employee_name varchar(50) not null,
			Designation varchar(20) not null,
			Location varchar(10) not null,
			primary key (ID)
			);

CREATE Table Department (ID int not null,
             Location varchar(10) not null,
			 Dept_name varchar(20) not null,
			 Primary key (ID),
			 UNIQUE (Dept_name)
			 );

CREATE Table Record_no (RecordNo CHAR(20) Not null,
             ID int not null,
			 Employee_name varchar(50) not null,
			 Employee_abv char(5) not null,
			 Designation varchar(20) not null,
			 Location varchar(10) not null,
			 File_No varchar(50) not null,
			 Foreign Key (ID) References Employee_List(ID),
			 Primary key (ID)
			 );

--shows only Delhi employees list
CREATE OR REPLACE VIEW Emp_Location as
select 1.ID, Dept_name, 1.Location, 1.Employee_name
from Department D
Inner join Employee_List 1
On D.ID= 1.ID and D.Location=1.Location;
Group by Location