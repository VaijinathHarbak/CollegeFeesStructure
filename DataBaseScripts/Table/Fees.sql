
create table [Fees](
	Id bigint primary key identity(1,1) not null,
	BranchId bigint foreign key references Branch (Id),
	CastId bigint foreign key references [Cast](Id),
	TutionFees decimal(18,2),
	LibraryFees decimal(18,2),
	UniformFees decimal(18,2)
)
Go