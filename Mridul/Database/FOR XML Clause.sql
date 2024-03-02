CREATE TABLE Member
(
  MemberId int identity(1,1) primary key,
  FirstName varchar(100),
  LastName varchar(100),
  Address varchar(100),
  City varchar(100),
  State varchar(100),
  PhoneNumber int
)

INSERT INTO Member
VALUES('Kirtesh','Shah','TestAddress','Vadodara','Gujarat','1234567890'),
('Rajesh','Shah','SuratAddress','Surat','Gujarat','2134567894'),
('Raj','Patel','TestAddress2','Vadodara','Gujarat','176347896'),
('Megha','Shah','SuratAddress3','Kucha','Gujarat','457896321'),
('Viushal','Patel','TestAddress4','Bhuj','Gujarat','325468796'),
('Mahesh','Shah','SuratAddress5','Sura','Gujarat','186347896')

select * from Member

select * from Member FOR XML AUTO
--Result of this Query
--<Member MemberId="1" FirstName="Kirtesh" LastName="Shah" Address="TestAddress" City="Vadodara" State="Gujarat" PhoneNumber="1234567890" />
--<Member MemberId="2" FirstName="Rajesh" LastName="Shah" Address="SuratAddress" City="Surat" State="Gujarat" PhoneNumber="2134567894" />
--<Member MemberId="3" FirstName="Raj" LastName="Patel" Address="TestAddress2" City="Vadodara" State="Gujarat" PhoneNumber="176347896" />
--<Member MemberId="4" FirstName="Megha" LastName="Shah" Address="SuratAddress3" City="Kucha" State="Gujarat" PhoneNumber="457896321" />
--<Member MemberId="5" FirstName="Viushal" LastName="Patel" Address="TestAddress4" City="Bhuj" State="Gujarat" PhoneNumber="325468796" />
--<Member MemberId="6" FirstName="Mahesh" LastName="Shah" Address="SuratAddress5" City="Sura" State="Gujarat" PhoneNumber="186347896" />

SELECT * FROM Member FOR XML PATH('Member')
SELECT * FROM Member FOR XML PATH('')
--It will produce a structured XML where each record is an element, and the column becomes a nested element.

SELECT * FROM Member FOR XML RAW
--Result of this Query
--<row MemberId="1" FirstName="Kirtesh" LastName="Shah" Address="TestAddress" City="Vadodara" State="Gujarat" PhoneNumber="1234567890" />
--<row MemberId="2" FirstName="Rajesh" LastName="Shah" Address="SuratAddress" City="Surat" State="Gujarat" PhoneNumber="2134567894" />
--<row MemberId="3" FirstName="Raj" LastName="Patel" Address="TestAddress2" City="Vadodara" State="Gujarat" PhoneNumber="176347896" />
--<row MemberId="4" FirstName="Megha" LastName="Shah" Address="SuratAddress3" City="Kucha" State="Gujarat" PhoneNumber="457896321" />
--<row MemberId="5" FirstName="Viushal" LastName="Patel" Address="TestAddress4" City="Bhuj" State="Gujarat" PhoneNumber="325468796" />
--<row MemberId="6" FirstName="Mahesh" LastName="Shah" Address="SuratAddress5" City="Sura" State="Gujarat" PhoneNumber="186347896" />


--We can also add root element by defining it at the end iof the query.
SELECT * FROM Member FOR XML PATH('Person'),ROOT('God')