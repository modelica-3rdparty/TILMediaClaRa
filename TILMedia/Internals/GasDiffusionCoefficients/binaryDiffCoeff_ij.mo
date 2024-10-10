within TILMedia.Internals.GasDiffusionCoefficients;
function binaryDiffCoeff_ij

  input Modelica.Units.SI.AbsolutePressure p "Pressure";
  input Modelica.Units.SI.Temperature T "Temperature";
  input Integer i "First component ID";
  input Integer j "Second component ID";
  input BinaryFunctionType binaryFunctionType;
  input TILMedia.GasTypes.BaseGas gasType;

  output Modelica.Units.SI.DiffusionCoefficient D_ij "Binary diffusion coefficient";

protected
  Modelica.Units.SI.DiffusionCoefficient D;
algorithm
  if binaryFunctionType == BinaryFunctionType.chapmanEnskog then
    D := binaryDiffCoeff_ij_Chapman_Enskog(
          p,
          T,
          i,
          j,
          gasType);
  elseif binaryFunctionType == BinaryFunctionType.fuller then
    D := binaryDiffCoeff_ij_Fuller(
          p,
          T,
          i,
          j,
          gasType);
  else
    D := -1;
    assert(false, "The binaryFunctionType is not implemented in the function binaryDiffCoeff_ij.", level = AssertionLevel.error);
  end if;

  D_ij :=max(Modelica.Constants.eps, D);

  annotation (Documentation(info="<html><p>Wrapper for Chapman Eskog and Fuller Diffusion Coefficient Models.</p></html>"));
end binaryDiffCoeff_ij;
