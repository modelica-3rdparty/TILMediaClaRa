within TILMedia.VLEFluid.Types;
record TILMedia_GERGCO2 "TILMedia.GERGCO2"
  extends TILMedia.VLEFluid.Types.BaseVLEFluid(
    final fixedMixingRatio=true,
    final nc_propertyCalculation=1,
    final vleFluidNames={"TILMedia.CO2(EOS=FEK)"},
    final mixingRatio_propertyCalculation={1});
end TILMedia_GERGCO2;
