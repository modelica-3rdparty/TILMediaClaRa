within TILMedia_AddOn_Tests.InvalidNames;
model InvalidGasName "This model should fail"
  extends TILMedia.Internals.ClassTypes.ExampleModel;
  TILMedia.Gas_ph gas(
    redeclare TILMedia.GasTypes.BaseGas gasType(
      fixedMixingRatio=false,
      nc_propertyCalculation=1,
      gasNames={"doesntexist"},
      mixingRatio_propertyCalculation={1},
      condensingIndex=0),
    h=3,
    p=100000) annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
end InvalidGasName;
