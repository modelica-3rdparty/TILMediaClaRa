within TILMedia_AddOn_Tests.MediumRecord.BasicHandling;
model B
  extends A(vleFluidType=VLEFluidTypes.TILMedia_GERGCO2());

  annotation (experiment(StopTime=1, Interval=0.002));
end B;
