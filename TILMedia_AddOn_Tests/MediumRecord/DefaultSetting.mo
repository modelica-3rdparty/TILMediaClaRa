within TILMedia_AddOn_Tests.MediumRecord;
model DefaultSetting
  extends TILMedia.Internals.ClassTypes.ExampleModel;

  TILMedia.Gas.Gas_pT gas(p=100000, T=25 + time*10) annotation (Placement(transformation(extent={{-20,60},{0,80}})));
  annotation (
    TestCase(shouldPass=false),
    Icon(coordinateSystem(preserveAspectRatio=false), graphics={Polygon(
          points={{-100,-82},{-100,-100},{-80,-100},{100,80},{100,100},{80,100},{-100,-82}},
          lineColor={238,46,47},
          fillColor={255,0,0},
          fillPattern=FillPattern.Solid)}),
    experiment(
      __Dymola_NumberOfIntervals=50,
      __Dymola_fixedstepsize=0.001,
      __Dymola_Algorithm="Dassl"));
end DefaultSetting;
