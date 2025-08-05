within TILMedia_AddOn_Tests.Liquid;
model LiquidObjectFunctions
  extends TILMedia.Internals.ClassTypes.ExampleModel;
  TILMedia.Liquid.Liquid liquid(redeclare TILMedia.Liquid.Types.TILMedia_Water liquidType)
    annotation (Placement(transformation(extent={{-10,-12},{10,8}})));
  parameter Real hStart_a = TILMedia.Liquid.ObjectFunctions.specificEnthalpy_Txi(
                                                                                295.15, zeros(0), liquidPointer=liquid.liquidPointer);
  parameter Real hStart_b = TILMedia.Liquid.ObjectFunctions.specificEnthalpy_Txi(
                                                                                295.15, zeros(0), liquid.liquidPointer);
  Real h_c= TILMedia.Liquid.ObjectFunctions.specificEnthalpy_Txi(
                                                                295.15+time*2, zeros(0), liquidPointer=liquid.liquidPointer);
  Real h_d= TILMedia.Liquid.ObjectFunctions.specificEnthalpy_Txi(
                                                                295.15+time*2, zeros(0), liquid.liquidPointer);

  function MyF
    input Real u;
    input Real offset;
    input TILMedia.Internals.TILMediaExternalObject eo;
    output Real y;
  algorithm
    y:=offset + TILMedia.Liquid.ObjectFunctions.specificEnthalpy_Txi(
        295.15 + u,
        zeros(0),
        eo);
  end MyF;

  Real nonlinear_a = Modelica.Math.Nonlinear.solveOneNonlinearEquation(function MyF(offset=time*1000, eo=liquid.liquidPointer), -30, 100, tolerance=100*Modelica.Constants.eps);

  function MyF2
    input Real u;
    input TILMedia.Liquid.Types.BaseLiquid liquidType;
    output Real y;
  protected
    TILMedia.Internals.TILMediaExternalObject eo = TILMedia.Internals.TILMediaExternalObject(
        "Liquid",
        liquidType.concatLiquidName,
        1,
        liquidType.mixingRatio_propertyCalculation[1:end - 1]/sum(liquidType.mixingRatio_propertyCalculation),
        liquidType.nc,
        0,
        getInstanceName());
  algorithm
    y:=TILMedia.Liquid.Functions.specificEnthalpy_Txi(liquidType, 295.15 + u);
  end MyF2;

  parameter Real nonlinear_b = Modelica.Math.Nonlinear.solveOneNonlinearEquation(function MyF2(liquidType=liquid.liquidType), -30, 100, tolerance=100*Modelica.Constants.eps);

  annotation (
    Icon(coordinateSystem(preserveAspectRatio=false)),
    Diagram(coordinateSystem(preserveAspectRatio=false)),
    experiment(
      __Dymola_NumberOfIntervals=50,
      __Dymola_fixedstepsize=0.001,
      __Dymola_Algorithm="Dassl"));
end LiquidObjectFunctions;
