within TILMedia.Internals.GasDiffusionCoefficients.Testers;
model TesterBinaryDiffCoeff_ij
  extends TILMedia.Internals.ClassTypes.ExampleModel;
  parameter Integer i=2;
  parameter Integer j=3;

  parameter TILMedia.Gas.Types.BaseGas gasType=TILMedia.Gas.Types.BaseGas(
      fixedMixingRatio=false,
      nc_propertyCalculation=4,
      gasNames={"TILMediaXTR.Water","TILMediaXTR.Oxygen","TILMediaXTR.Hydrogen","TILMediaXTR.Nitrogen"},
      condensingIndex=1,
      mixingRatio_propertyCalculation={0.00579111,0.230146,0,0.764063})
    annotation (Placement(transformation(extent={{70,70},{90,90}})));

  TILMedia.Gas.Gas_pT gas(
    gasType=gasType,
    p=100000,
    T=ramp.y)
           annotation (Placement(transformation(extent={{-10,-12},{10,8}})));

  Modelica.Units.SI.DiffusionCoefficient D_ij_Chapman_Enskog;
  Modelica.Units.SI.DiffusionCoefficient D_ij_Fuller;

  Modelica.Blocks.Sources.Ramp ramp(
    height=200,
    duration=100,
    offset=273.15) annotation (Placement(transformation(extent={{-10,-52},{10,-32}})));

  parameter TILMedia.Internals.GetIDXfromCAS.ListOfSubstances listOfSubstances;
  parameter Integer idxVector[:]=TILMedia.Internals.GetIDXfromCAS.getGasIDXVector(gasType,listOfSubstances);

equation
  D_ij_Chapman_Enskog = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    gas.p,
    gas.T,
    i,
    j,
    TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.chapmanEnskog,
    gas.gasPointer,
    idxVector);

  D_ij_Fuller = GasDiffusionCoefficients.binaryDiffCoeff_ij(
    gas.p,
    gas.T,
    i,
    j,
    TILMedia.Internals.GasDiffusionCoefficients.BinaryFunctionType.fuller,
    gas.gasPointer,
    idxVector);

  annotation (experiment(StopTime=100, __Dymola_Algorithm="Dassl"));
end TesterBinaryDiffCoeff_ij;
