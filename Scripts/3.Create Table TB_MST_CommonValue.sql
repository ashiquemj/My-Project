-- Create Table

Create Table TB_MST_CommonValue
(
[id] int identity not null primary key,
[Action] char(1) not null,
[CreatedDate] datetime not null,
[ModifiedDate] datetime null,
[MenuID] int not null,
[UserID] int not null,
[BranchID] int not null,
[FK_SystemID] int foreign key references [TB_CMN_SysIdnetifier]([id]) not null, 
[Code] varchar(50) not null,
[Name] nvarchar(300) not null,
[FK_TypeID] int foreign key references [TB_MST_CommonType]([id]) not null, 
[Status] bit not null,
[BuiltIn] bit not null
)
go


-- Create Constraint

ALTER TABLE [dbo].[TB_MST_CommonValue] ADD  CONSTRAINT [UC_MST_CommonValue_Code] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TB_MST_CommonValue] ADD  CONSTRAINT [UC_MST_CommonValue_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO