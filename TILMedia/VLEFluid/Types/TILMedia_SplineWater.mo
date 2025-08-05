within TILMedia.VLEFluid.Types;
record TILMedia_SplineWater
  "TILMediaSpline.Water (Spline Interpolation)"
  extends TILMedia.VLEFluid.Types.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={"Interpolation.LoadSpline(filename=\"" + Modelica.Utilities.Files.loadResource(
        "modelica://TILMedia/Resources/TILMediaDataPath/WATER_SPLINE.DAT") + "\")"},
    final mixingRatio_propertyCalculation={1});
end TILMedia_SplineWater;
