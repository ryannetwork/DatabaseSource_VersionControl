CREATE TABLE [dbo].[WellCareProviderGroupSummary]
(
[LID] [float] NULL,
[GroupName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressLine1] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AddressLine2] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[State] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Zipcode] [float] NULL,
[Phone] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[0] [float] NULL,
[CopyCtr        ] [float] NULL,
[Fax            ] [float] NULL,
[Inv_CopyCtr    ] [float] NULL,
[Invoice        ] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Mail           ] [float] NULL,
[OnSite         ] [float] NULL,
[OnsiteCoder    ] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OnsiteEMR      ] [float] NULL,
[Paid           ] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PAID- SDB      ] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Paid_CopyCtr   ] [float] NULL,
[Purchase Order Paid] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Remote Access  ] [float] NULL,
[SecureDropBox  ] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[System         ] [float] NULL,
[#N/A] [float] NULL,
[Grand Total] [float] NULL
) ON [PRIMARY]
GO
