CREATE TABLE Customers(
Cus_ID int primary key,
Cus_Name varchar(200),
Cus_Address varchar(200),
Cus_phone varchar(2000),
)

CREATE TABLE login (
username varchar(20),
password varchar(20)
)

--MenuItem

CREATE TABLE MenuItem(
Men_ItemID int primary key,
Men_Name varchar(250),
Men_Price int,
Men_quant int
)

-- empolyees

CREATE TABLE empolyee (
em_id int primary key,
em_name varchar(50),
em_address varchar(50),
em_phone varchar(50),
work_type varchar(50),
em_shift varchar(20),
em_salary int

--one to one 
-- one to many ...
-- many to many 

)

--Salary

create table salary(
sal_id int primary key,
sal_amount int,
datas date,
sal_method int ,

em_Id Int,

foreign key (em_Id) references empolyee(em_id)
)

--Orders

CREATE TABLE Orders(
Or_ID int primary key,
Or_Total int,
Or_Price int,
Or_quant int,
Or_Date Date,

--relationship

cus_id Int,

foreign key (cus_id) references Customers(Cus_ID),

menuId Int,

foreign key (menuid) references MenuItem(Men_ItemID),

em_Id Int,

foreign key (em_Id) references empolyee(em_id)

)






CREATE TABLE Payments(
Pay_Id int primary key,
Pay_PaymentDate Date,
Pay_AmountPaid int,
pay_method varchar(30),

or_id Int,

foreign key (or_id) references Orders(Or_id)

)