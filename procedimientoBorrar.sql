-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Ing. Humberto Ramoas Cardenas>
-- Create date: <21/11/2021,>
-- Description:	<Procedimiento para Eliminar >
-- =============================================
CREATE PROCEDURE [dbo].[Customer_Del]
	@CustomerId integer 
AS
BEGIN
	BEGIN TRAN
	BEGIN TRY
		DELETE FROM SalesLT.Customer WHERE CustomerID = @CustomerId;
		COMMIT --SI SE CUMPLE EL WHERE TODO BIEN PASA A TERMINAR
	END TRY
	BEGIN CATCH
		ROLLBACK --SI PRESENTA UN ERROR
	END CATCH
END