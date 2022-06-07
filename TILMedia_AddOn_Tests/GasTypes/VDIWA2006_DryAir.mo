within TILMedia_AddOn_Tests.GasTypes;
record VDIWA2006_DryAir "Two component dry air using VDIWA 2006"
  extends TILMedia.GasTypes.BaseGas(
    final fixedMixingRatio=false,
    final nc_propertyCalculation=2,
    final gasNames={"VDIWA2006.Oxygen(ReferenceState=3)", "VDIWA2006.Nitrogen"},
    final condensingIndex=0,
    final mixingRatio_propertyCalculation={0.21,0.79});
end VDIWA2006_DryAir;
