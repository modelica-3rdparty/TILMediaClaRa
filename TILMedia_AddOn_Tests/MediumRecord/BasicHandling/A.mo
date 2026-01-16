within TILMedia_AddOn_Tests.MediumRecord.BasicHandling;
model A
  extends TILMedia.Internals.ClassTypes.ExampleModel;
  parameter TILMedia.VLEFluid.Types.BaseVLEFluid vleFluidType=VLEFluidTypes.TILMedia_Water()
    annotation (choicesAllMatching);

  annotation(
    experiment(
      StopTime=1,
      Interval=0.002),
    Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(preserveAspectRatio=false)));
end A;
