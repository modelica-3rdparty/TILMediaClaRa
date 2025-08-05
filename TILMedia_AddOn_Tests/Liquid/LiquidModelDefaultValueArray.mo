within TILMedia_AddOn_Tests.Liquid;
model LiquidModelDefaultValueArray "This model fails in Dymola"
  extends TILMedia.Internals.ClassTypes.ExampleModel;
  LiquidModelDefaultValue liquid[3] annotation (Placement(transformation(extent={{-10,-12},{10,8}})));
  parameter Real[3] hStart_a=liquid.liquid.h_Txi();

  annotation (
  TestCase(shouldPass=false),
    Icon(coordinateSystem(preserveAspectRatio=false), graphics={
                             Polygon(
          points={{-100,-82},{-100,-100},{-80,-100},{100,80},{100,100},{80,100},{-100,-82}},
          lineColor={238,46,47},
          fillColor={255,0,0},
          fillPattern=FillPattern.Solid)}),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      __Dymola_NumberOfIntervals=50,
      __Dymola_fixedstepsize=0.001,
      __Dymola_Algorithm="Dassl"));
end LiquidModelDefaultValueArray;
