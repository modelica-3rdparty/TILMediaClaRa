within TILMedia_AddOn_Tests.InvalidNames;
model InvalidLiquidName "This model should fail"
  extends TILMedia.Internals.ClassTypes.ExampleModel;
  TILMedia.Liquid.Liquid_ph liquid(
    h=3,
    redeclare TILMedia.Liquid.Types.BaseLiquid liquidType(
      fixedMixingRatio=false,
      nc_propertyCalculation=1,
      liquidNames={"doesntexist"},
      mixingRatio_propertyCalculation={1}),
    p=100000) annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
end InvalidLiquidName;
