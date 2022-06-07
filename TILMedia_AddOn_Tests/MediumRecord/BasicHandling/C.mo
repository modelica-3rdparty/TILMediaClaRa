within TILMedia_AddOn_Tests.MediumRecord.BasicHandling;
model C
  extends TILMedia.Internals.ClassTypes.ExampleModel;
  TILMedia.Gas_ph gas(
    gasType=GasTypes.VDIWA2006_DryAir(),
    h=33,
    p=100000) annotation (Placement(transformation(extent={{-64,18},{-44,38}})));
  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(preserveAspectRatio=false)));
end C;
