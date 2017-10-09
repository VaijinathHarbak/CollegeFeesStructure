create table [User](
	Id bigint primary key identity(1,1) not null,
	FirstName varchar(100),
	LastName varchar(100),
	UserName varchar(100),
	Password varchar(100),
	EmailId varchar(100),
	PhoneNo varchar(10)
)
go