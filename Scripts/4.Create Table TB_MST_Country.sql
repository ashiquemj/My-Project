-- Create Table

Create Table TB_MST_Country
(
[id] int identity not null primary key,
[CountryName] [varchar](100) not null,
[Currency] [varchar](100) not null,
[Change] [varchar](50) not null,
[Symbol] [varchar](10) null,
[Flag] [Image] null,
[MobileCode] [varchar](5) null,
[NoOfDecimals] [smallint] null,
[Status] bit not null
)
go
