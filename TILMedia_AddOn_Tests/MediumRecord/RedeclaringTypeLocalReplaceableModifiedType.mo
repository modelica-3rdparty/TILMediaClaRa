within TILMedia_AddOn_Tests.MediumRecord;
model RedeclaringTypeLocalReplaceableModifiedType
  extends TILMedia.Internals.ClassTypes.ExampleModel;

  replaceable record MyGasType = TILMedia.GasTypes.BaseGas (
      fixedMixingRatio=false,
      nc_propertyCalculation=2,
      gasNames={"VDIWA2006.Oxygen(ReferenceState=3)","VDIWA2006.Nitrogen"},
      mixingRatio_propertyCalculation={0.21,0.79},
      condensingIndex=0) constrainedby TILMedia.GasTypes.BaseGas;

  TILMedia.Gas_pT gas(
    redeclare parameter MyGasType gasType,
    p=100000,
    T=25 + time*10) annotation (Placement(transformation(extent={{-20,60},{0,80}})));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      __Dymola_NumberOfIntervals=50,
      __Dymola_fixedstepsize=0.001,
      __Dymola_Algorithm="Dassl"));
end RedeclaringTypeLocalReplaceableModifiedType;
