within TILMedia.Internals.GasDiffusionCoefficients;
function mixtureMultiComponentDiffCoeff
  input Modelica.Units.SI.AbsolutePressure p "Gas pressure";
  input Modelica.Units.SI.Temperature T "Fas temperature";
  input Modelica.Units.SI.MoleFraction molarMixingRatio[size(molarMixingRatio,1)] "Mole fraction";
  input BinaryFunctionType binaryFunctionType;
  input TILMedia.Internals.TILMediaExternalObject gasPointer;
  input Integer gasIDXVector[:];

  output Modelica.Units.SI.DiffusionCoefficient D_m_i[size(molarMixingRatio,1)];
protected
  parameter Integer nc = size(gasIDXVector,1);
algorithm
  assert(size(molarMixingRatio,1) == nc,
    "Size of input molarMixingRatio is not equal to number of gas components",
    level=AssertionLevel.error);

  for i in 1:nc loop
    D_m_i[i] := TILMedia.Internals.GasDiffusionCoefficients.multiComponentDiffCoeff(
      p,
      T,
      molarMixingRatio,
      i,
      binaryFunctionType,
      gasPointer,
      gasIDXVector);
  end for;

  annotation (Documentation(info="<html><p>Constructs the vector of multicomponent diffusion coefficients.
</p></html>"));
end mixtureMultiComponentDiffCoeff;
