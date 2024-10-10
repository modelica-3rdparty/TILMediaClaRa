within TILMedia.Internals.GasDiffusionCoefficients.Testers;
model TesterMixtureMultiComponentDiffCoeff
  extends TILMedia.Internals.ClassTypes.ExampleModel;

  parameter TILMedia.GasTypes.BaseGas gasType= TILMedia.GasTypes.BaseGas(
      fixedMixingRatio=false,
      nc_propertyCalculation=4,
      gasNames={"TILMediaXTR.Water","TILMediaXTR.Oxygen","TILMediaXTR.Hydrogen","TILMediaXTR.Nitrogen"},
      condensingIndex=1,
      mixingRatio_propertyCalculation={0.00579111,0.230146,0,0.764063})
    annotation (Placement(transformation(extent={{70,70},{90,90}})));

  TILMedia.Gas_pT gas(
    gasType=gasType,
    p=100000,
    T=ramp.y)
           annotation (Placement(transformation(extent={{-10,-12},{10,8}})));

  Modelica.Units.SI.DiffusionCoefficient[gasType.nc] D_ij_all;

  Modelica.Blocks.Sources.Ramp ramp(
    height=200,
    duration=100,
    offset=273.15) annotation (Placement(transformation(extent={{-10,-52},{10,-32}})));

equation

  D_ij_all = GasDiffusionCoefficients.mixtureMultiComponentDiffCoeff(
    gas.p,
    gas.T,
    cat(1,gas.x,{1-sum(gas.x)}),
    GasDiffusionCoefficients.BinaryFunctionType.fuller,
    gasType);

  annotation (experiment(StopTime=100, __Dymola_Algorithm="Dassl"));
end TesterMixtureMultiComponentDiffCoeff;
