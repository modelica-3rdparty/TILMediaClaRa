within TILMedia_AddOn_Tests.MediumRecord;
model SettingParameterLocalInstance
  extends TILMedia.Internals.ClassTypes.ExampleModel;

  GasTypes.FlueGasTILMedia gasType;

  TILMedia.Gas.Gas_pT gas(
    gasType=gasType,
    p=100000,
    T=25 + time*10) annotation (Placement(transformation(extent={{-20,60},{0,80}})));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      StopTime=1,
      Interval=0.02,
      __Dymola_Algorithm="Dassl",
      __Dymola_fixedstepsize=0.001));
end SettingParameterLocalInstance;
