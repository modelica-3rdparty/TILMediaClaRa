within TILMedia_AddOn_Tests.MediumRecord.BasicHandling;
model D
  extends C(gas(gasType=GasTypes.MoistAirMixture()));

  annotation (experiment(StopTime=1, Interval=0.002));
end D;
