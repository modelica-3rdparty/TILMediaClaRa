within TILMedia_AddOn_Tests.Liquid;
model LiquidFunctions
  extends TILMedia.Internals.ClassTypes.ExampleModel;
  TILMedia.Liquid    liquid(redeclare TILMedia.LiquidTypes.TILMedia_Water liquidType)
    annotation (Placement(transformation(extent={{-10,-12},{10,8}})));
  parameter Real hStart_a = TILMedia.LiquidFunctions.specificEnthalpy_Txi(TILMedia.LiquidTypes.TILMedia_Water(), 295.15);
  parameter Real hStart_b = TILMedia.LiquidFunctions.specificEnthalpy_Txi(liquid.liquidType, 295.15);
  parameter Real hStart_c = TILMedia.LiquidFunctions.specificEnthalpy_Txi(TILMedia.LiquidTypes.TILMedia_Water(), 295.15, zeros(0));
  parameter Real hStart_d = TILMedia.LiquidFunctions.specificEnthalpy_Txi(liquid.liquidType, 295.15, zeros(0));

  function MyF
    input Real u;
    output Real y;
  algorithm
    y:=TILMedia.LiquidFunctions.specificEnthalpy_Txi(TILMedia.LiquidTypes.TILMedia_Water(), 295.15+u);
  end MyF;

  parameter Real nonlinear_a = Modelica.Math.Nonlinear.solveOneNonlinearEquation(function MyF(), -30, 100, tolerance=100*Modelica.Constants.eps);

  function MyF2
    input Real u;
    input TILMedia.LiquidTypes.BaseLiquid liquidType;
    output Real y;
  algorithm
    y:=TILMedia.LiquidFunctions.specificEnthalpy_Txi(liquidType, 295.15+u);
  end MyF2;

  parameter Real nonlinear_b = Modelica.Math.Nonlinear.solveOneNonlinearEquation(function MyF2(liquidType=liquid.liquidType), -30, 100, tolerance=100*Modelica.Constants.eps);

  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      __Dymola_NumberOfIntervals=50,
      __Dymola_fixedstepsize=0.001,
      __Dymola_Algorithm="Dassl"));
end LiquidFunctions;
