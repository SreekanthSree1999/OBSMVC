
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/21/2024 10:42:35
-- Generated from EDMX file: C:\Sreekanth\Asp\OBSMVC\OBSMVC\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MiniProject1];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AdminLogin]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AdminLogin];
GO
IF OBJECT_ID(N'[dbo].[NewCustomer]', 'U') IS NOT NULL
    DROP TABLE [dbo].[NewCustomer];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AdminLogins'
CREATE TABLE [dbo].[AdminLogins] (
    [UserName] varchar(20)  NOT NULL,
    [Pwd] varchar(20)  NULL
);
GO

-- Creating table 'NewCustomers'
CREATE TABLE [dbo].[NewCustomers] (
    [AccountNo] int IDENTITY(1,1) NOT NULL,
    [AccessCode] int  NULL,
    [Name] varchar(30)  NULL,
    [DOB] datetime  NULL,
    [PhoneNumber] varchar(20)  NULL,
    [Address] varchar(30)  NULL,
    [AccoutType] varchar(20)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [UserName] in table 'AdminLogins'
ALTER TABLE [dbo].[AdminLogins]
ADD CONSTRAINT [PK_AdminLogins]
    PRIMARY KEY CLUSTERED ([UserName] ASC);
GO

-- Creating primary key on [AccountNo] in table 'NewCustomers'
ALTER TABLE [dbo].[NewCustomers]
ADD CONSTRAINT [PK_NewCustomers]
    PRIMARY KEY CLUSTERED ([AccountNo] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------