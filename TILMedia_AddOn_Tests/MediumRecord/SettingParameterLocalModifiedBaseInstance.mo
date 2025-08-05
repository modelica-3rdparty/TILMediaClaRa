within TILMedia_AddOn_Tests.MediumRecord;
model SettingParameterLocalModifiedBaseInstance
  extends TILMedia.Internals.ClassTypes.ExampleModel;

  TILMedia.Gas.Types.BaseGas gasType=TILMedia.Gas.Types.BaseGas(
      fixedMixingRatio=false,
      nc_propertyCalculation=2,
      gasNames={"VDIWA2006.Oxygen(ReferenceState=3)","VDIWA2006.Nitrogen"},
      mixingRatio_propertyCalculation={1,1},
      condensingIndex=0);

  TILMedia.Gas.Gas_pT gas(
    gasType=gasType,
    p=100000,
    T=25 + time*10) annotation (Placement(transformation(extent={{-20,60},{0,80}})));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      __Dymola_NumberOfIntervals=50,
      __Dymola_fixedstepsize=0.001,
      __Dymola_Algorithm="Dassl"));
end SettingParameterLocalModifiedBaseInstance;
