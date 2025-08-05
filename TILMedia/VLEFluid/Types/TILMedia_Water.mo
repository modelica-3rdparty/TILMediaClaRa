within TILMedia.VLEFluid.Types;
record TILMedia_Water "TILMedia.Water"
  extends TILMedia.VLEFluid.Types.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={"TILMedia.Water"},
    final mixingRatio_propertyCalculation={1});
end TILMedia_Water;
