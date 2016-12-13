USE [PRIDEMOSINF]
GO

/****** Object:  Table [dbo].[PickingList]    Script Date: 13-12-2016 20:58:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[PickingList](
	[Id] [int] NOT NULL,
	[Artigo] [nvarchar](48) NOT NULL,
	[Localizacao] [varchar](30) NOT NULL,
	[Quantidade] [int] NOT NULL,
	[EstadoTratado] [bit] NOT NULL,
	[IdECL] [uniqueidentifier] NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[PickingList]  WITH CHECK ADD  CONSTRAINT [FK_PickingList_ArmazemLocalizacoes] FOREIGN KEY([Localizacao])
REFERENCES [dbo].[ArmazemLocalizacoes] ([Localizacao])
GO

ALTER TABLE [dbo].[PickingList] CHECK CONSTRAINT [FK_PickingList_ArmazemLocalizacoes]
GO

ALTER TABLE [dbo].[PickingList]  WITH CHECK ADD  CONSTRAINT [FK_PickingList_Artigo] FOREIGN KEY([Artigo])
REFERENCES [dbo].[Artigo] ([Artigo])
GO

ALTER TABLE [dbo].[PickingList] CHECK CONSTRAINT [FK_PickingList_Artigo]
GO

ALTER TABLE [dbo].[PickingList]  WITH CHECK ADD  CONSTRAINT [FK_PickingList_CabecDoc] FOREIGN KEY([IdECL])
REFERENCES [dbo].[CabecDoc] ([Id])
GO

ALTER TABLE [dbo].[PickingList] CHECK CONSTRAINT [FK_PickingList_CabecDoc]
GO

