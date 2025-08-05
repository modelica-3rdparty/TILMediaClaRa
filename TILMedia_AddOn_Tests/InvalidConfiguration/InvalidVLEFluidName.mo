within TILMedia_AddOn_Tests.InvalidConfiguration;
model InvalidVLEFluidName "This model should fail"
  extends TILMedia.Internals.ClassTypes.ExampleModel;
  TILMedia.VLEFluid.VLEFluid_ph vleFluid(
    h=3,
    redeclare TILMedia.VLEFluid.Types.BaseVLEFluid vleFluidType(
      fixedMixingRatio=false,
      nc_propertyCalculation=4,
      vleFluidNames={"VDIWA2006.METHANE(REF=STP)","VDIWA2006.CARBON DIOXIDE","VDIWA2006.WATER","VDIWA2006.HYDROGEN"},
      mixingRatio_propertyCalculation={10,6,1,1}),
    p=100000) annotation (Placement(transformation(extent={{-10,-10},{10,10}})));
  annotation (
    TestCase(shouldPass=false),
    Icon(coordinateSystem(preserveAspectRatio=false), graphics={Polygon(
          points={{-100,-82},{-100,-100},{-80,-100},{100,80},{100,100},{80,100},{-100,-82}},
          lineColor={238,46,47},
          fillColor={255,0,0},
          fillPattern=FillPattern.Solid)}),
    Diagram(coordinateSystem(preserveAspectRatio=false)));
end InvalidVLEFluidName;
