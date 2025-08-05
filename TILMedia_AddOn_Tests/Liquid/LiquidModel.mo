within TILMedia_AddOn_Tests.Liquid;
model LiquidModel
  extends TILMedia.Internals.ClassTypes.ExampleModel;
  TILMedia.Liquid.Liquid liquid(redeclare TILMedia.Liquid.Types.TILMedia_Water liquidType)
    annotation (Placement(transformation(extent={{-10,-12},{10,8}})));
  parameter Real hStart_a=liquid.h_Txi(295.15);
  parameter Real hStart_b=liquid.h_Txi(298.15, zeros(0));
  Real h_c=liquid.h_Txi(295.15 + time*1);
  Real h_d=liquid.h_Txi(298.15 + time*1, zeros(0));

  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      __Dymola_NumberOfIntervals=50,
      __Dymola_fixedstepsize=0.001,
      __Dymola_Algorithm="Dassl"));
end LiquidModel;
