within TILMedia_AddOn_Tests.MediumRecord;
model SettingParameter
  extends TILMedia.Internals.ClassTypes.ExampleModel;

  TILMedia.Gas_pT gas(
    gasType=GasTypes.FlueGasTILMedia(),
    p=100000,
    T=25 + time*10) annotation (Placement(transformation(extent={{-20,60},{0,80}})));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      __Dymola_NumberOfIntervals=50,
      __Dymola_fixedstepsize=0.001,
      __Dymola_Algorithm="Dassl"));
end SettingParameter;
