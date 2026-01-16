within TILMedia_AddOn_Tests.Liquid;
model LiquidModelDefaultValue
  extends TILMedia.Internals.ClassTypes.ExampleModel;
  TILMedia.Liquid.Liquid liquid(
    redeclare TILMedia.Liquid.Types.TILMedia_Water liquidType,
    h_Txi(T=298.15),
    d_Txi(T=298.15, xi=zeros(0))) annotation (Placement(transformation(extent={{-10,-12},{10,8}})));
  parameter Real hStart_a=liquid.h_Txi();
  parameter Real hStart_b=liquid.h_Txi(300);
  parameter Real hStart_c=liquid.h_Txi(298.15, zeros(0));
  parameter Real hStart_d=liquid.h_Txi(xi=zeros(0));
  Real h_e=liquid.h_Txi(275.15 + time*1);

  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      StopTime=1,
      Interval=0.02,
      __Dymola_Algorithm="Dassl",
      __Dymola_fixedstepsize=0.001));
end LiquidModelDefaultValue;
