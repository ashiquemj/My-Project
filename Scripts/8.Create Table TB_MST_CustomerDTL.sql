-- Create Table

Create Table TB_MST_CustomerDTL
(
[id] int identity not null primary key,
[FK_CustomerID] [int] foreign key references [TB_MST_CustomerDTL]([id]) not null, 
[ContactPerson] [nvarchar](300)null,
[Address] [nvarchar](500) null,
[City] [nvarchar](100) null,
[State] [nvarchar](100) null,
[PostalCode] [varchar](10) null,
[FK_Country] [int] foreign key references [TB_MST_Country]([id]) null,  
[TelephoneNumber] [varchar](20) null,
[MobileCode] [varchar](5) null,
[MobileNumber] [int] null,
[Email] [varchar](50) null,
[CustomerImage] [Image] null
)
