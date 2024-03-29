USE [PRIDEMOSINF]
GO

/****** Object:  Table [dbo].[PickingWave]    Script Date: 13-12-2016 20:58:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[PickingWave](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Artigo] [nvarchar](48) NOT NULL,
	[Quantidade] [int] NOT NULL,
 CONSTRAINT [PK_PickingWave] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
 CONSTRAINT [IX_PickingWave] UNIQUE NONCLUSTERED 
(
	[Id] ASC,
	[Artigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[PickingWave]  WITH CHECK ADD  CONSTRAINT [FK_PickingWave_Artigo] FOREIGN KEY([Artigo])
REFERENCES [dbo].[Artigo] ([Artigo])
GO

ALTER TABLE [dbo].[PickingWave] CHECK CONSTRAINT [FK_PickingWave_Artigo]
GO

ALTER TABLE [dbo].[PickingWave]  WITH CHECK ADD  CONSTRAINT [FK_PickingWave_PickingWave] FOREIGN KEY([Id])
REFERENCES [dbo].[PickingWave] ([Id])
GO

ALTER TABLE [dbo].[PickingWave] CHECK CONSTRAINT [FK_PickingWave_PickingWave]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'(1,1)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PickingWave', @level2type=N'CONSTRAINT',@level2name=N'PK_PickingWave'
GO

