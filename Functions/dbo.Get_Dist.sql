SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[Get_Dist] (@La1 float , @Lo1 float , @La2 float, @Lo2 float) RETURNS float AS
BEGIN
	DECLARE @DIST float,@La1Rad float,@La2Rad float,@EarthRadius float,@DeltaLoRad float
	SET @EarthRadius = 6372.795477598
	SET @La1Rad = RADIANS(@La1)
	SET @La2Rad =RADIANS(@La2)
	SET @DeltaLoRad = RADIANS(ABS(@Lo1 -@Lo2))
	SET @DIST = (ACOS((SIN(@La1rad)*SIN(@La2rad))+(ABS(COS(@La1rad))*ABS(COS(@La2rad))*COS(@DeltaLoRad))))* @EarthRadius
	RETURN @DIST
END
GO
