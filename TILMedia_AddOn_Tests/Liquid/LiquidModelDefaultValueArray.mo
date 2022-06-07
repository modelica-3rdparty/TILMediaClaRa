within TILMedia_AddOn_Tests.Liquid;
model LiquidModelDefaultValueArray "This model fails in Dymola"
  extends TILMedia.Internals.ClassTypes.ExampleModel;
  LiquidModelDefaultValue liquid[3] annotation (Placement(transformation(extent={{-10,-12},{10,8}})));
  parameter Real[3] hStart_a=liquid.liquid.h_Txi();

  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      __Dymola_NumberOfIntervals=50,
      __Dymola_fixedstepsize=0.001,
      __Dymola_Algorithm="Dassl"));
end LiquidModelDefaultValueArray;
