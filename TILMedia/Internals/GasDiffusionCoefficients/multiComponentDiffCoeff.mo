within TILMedia.Internals.GasDiffusionCoefficients;
function multiComponentDiffCoeff

  // References: [Poling2020]  Poling, Bruce E.; Prausnitz, John M.; O'Connell, John P. (2020): Properties of Gases and Liquids, Fifth Edition. Fifth edition. New York, N.Y.: McGraw-Hill Education; McGraw Hill (McGraw-Hill's AccessEngineering)

  input Modelica.Units.SI.AbsolutePressure p "Pressure";
  input Modelica.Units.SI.Temperature T "Temperature";
  input Modelica.Units.SI.MoleFraction molarMixingRatio[size(molarMixingRatio,1)] "Mole fraction";
  input Integer i "Component ID";
  input BinaryFunctionType binaryFunctionType;
  input TILMedia.GasTypes.BaseGas gasType "Gas Type";

  output Modelica.Units.SI.DiffusionCoefficient D "Molcular diffusion coefficient";

protected
  Real x_D_ij(unit="s/m2");
  Modelica.Units.SI.DiffusionCoefficient D_ij[gasType.nc] "Binary diffusion coefficient";

algorithm
  x_D_ij := 0;
  for j in 1:gasType.nc loop
    if not i == j then
      D_ij[j] := TILMedia.Internals.GasDiffusionCoefficients.binaryDiffCoeff_ij(
        p,
        T,
        i,
        j,
        binaryFunctionType,
        gasType);
      x_D_ij := x_D_ij + molarMixingRatio[j]/D_ij[j];
    end if;
  end for;
  D := max(Modelica.Constants.eps, x_D_ij^(-1));

  annotation (Documentation(info="<html><p>Multicomponent diffusion coefficient for the limiting case of a single dilute component diffusing into a homogeneous mixture according to [Poling2020].

\\\\[
        D_{i,m} = \\left( \\sum_{\\substack{j=1 , j\\neq i}}^{n} \\frac{x_j}{D_{ij}} \\right)^{-1}
\\\\]


Herein, \\\\(D_{ij}\\\\) is the binary diffusion coefficient of the components \\\\(i\\\\) and \\\\(j\\\\).</p></html>"));
end multiComponentDiffCoeff;
