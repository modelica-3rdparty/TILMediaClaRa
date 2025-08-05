within TILMedia.Internals.GasDiffusionCoefficients;
function multiComponentDiffCoeff

  // References: [Poling2020]  Poling, Bruce E.; Prausnitz, John M.; O'Connell, John P. (2020): Properties of Gases and Liquids, Fifth Edition. Fifth edition. New York, N.Y.: McGraw-Hill Education; McGraw Hill (McGraw-Hill's AccessEngineering)

  input Modelica.Units.SI.AbsolutePressure p "Pressure";
  input Modelica.Units.SI.Temperature T "Temperature";
  input Modelica.Units.SI.MoleFraction molarMixingRatio[size(molarMixingRatio,1)] "Mole fraction";
  input Integer i "Component ID";
  input BinaryFunctionType binaryFunctionType;
  input TILMedia.Internals.TILMediaExternalObject gasPointer;
  input Integer gasIDXVector[:];

  output Modelica.Units.SI.DiffusionCoefficient D "Molcular diffusion coefficient";

protected
  parameter Integer nc = size(gasIDXVector,1);
  Real x_D_ij(unit="s/m2");
  Modelica.Units.SI.DiffusionCoefficient D_ij[nc] "Binary diffusion coefficient";
  Modelica.Units.SI.DiffusionCoefficient D_ii "Self diffusion coefficient";

algorithm

  x_D_ij := 0;
  for j in 1:nc loop
    if not i == j then
      D_ij[j] := TILMedia.Internals.GasDiffusionCoefficients.binaryDiffCoeff_ij(
        p,
        T,
        i,
        j,
        binaryFunctionType,
        gasPointer,
        gasIDXVector);
      x_D_ij := x_D_ij + molarMixingRatio[j]/D_ij[j];
    end if;
  end for;
  D_ii := TILMedia.Internals.GasDiffusionCoefficients.binaryDiffCoeff_ij(
      p,
      T,
      i,
      i,
      binaryFunctionType,
      gasPointer,
      gasIDXVector);

  assert(molarMixingRatio[i] < 1-1e-10,"
  Mole fraction of one gas component nearly 1. 
  For single-component gas, mixed-average diffusion coefficient is not valid. Self-diffusion coefficient is used instead.
  ", AssertionLevel.warning);

  // For molarMixingRatio[i] -> 1, transition to self diffusion coefficient
  D := D_ii+TIL.Utilities.Numerics.smoothTransition(molarMixingRatio[i],1-5e-11,1e-10)*((1-molarMixingRatio[i])*max(Modelica.Constants.eps, x_D_ij)^(-1)-D_ii);

  annotation (Documentation(info="<html><p>Multicomponent diffusion coefficient for the limiting case of a single dilute component diffusing into a homogeneous mixture according to [Poling2020].

\\\\[
        D_{i,m} = \\left( \\sum_{\\substack{j=1 , j\\neq i}}^{n} \\frac{x_j}{D_{ij}} \\right)^{-1}
\\\\]


Herein, \\\\(D_{ij}\\\\) is the binary diffusion coefficient of the components \\\\(i\\\\) and \\\\(j\\\\).</p></html>"));
end multiComponentDiffCoeff;
