﻿CREATE TABLE [VMBackup].[VirtualMachines]
(
	[Id] INT IDENTITY(1,1) NOT NULL,
	[DataSourceId] UNIQUEIDENTIFIER NULL,
	[VmmId] UNIQUEIDENTIFIER NOT NULL,
	[HyperVId] UNIQUEIDENTIFIER NOT NULL,
	[VmName] NVARCHAR(128) NOT NULL,
	[VirtualMachineStateId] INT NOT NULL,
	[RecoveryPointCount] INT NOT NULL, 
    [LastRecoveryPoint] SMALLDATETIME NULL, 
    [ProtectionGroupId] INT NOT NULL, 
	[ActionStateId] INT NOT NULL DEFAULT 0,
    [ActionStateDate] DATETIME NULL, 
    CONSTRAINT [PK_VirtualMachines] PRIMARY KEY CLUSTERED 
 (
	[Id] ASC
 )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)