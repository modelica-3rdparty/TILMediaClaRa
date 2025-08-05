within TILMedia.Internals.GasDiffusionCoefficients;
function binaryDiffCoeff_ij_Fuller  "General binary diffusion coefficient calculation via Fuller methode"

  // References:[Wärmeatlas2013]  VDI-Wärmeatlas(2013). 11. Aufl. Berlin, Heidelberg: Springer
  //            [Poling2020]      Poling, Bruce E.; Prausnitz, John M.; O'Connell, John P. (2020): Properties of Gases and Liquids, Fifth Edition. Fifth edition. New York, N.Y.: McGraw-Hill Education; McGraw Hill (McGraw-Hill's AccessEngineering)

  input Modelica.Units.SI.AbsolutePressure p "Pressure";
  input Modelica.Units.SI.Temperature T "Temperature";
  input Integer i "First component ID";
  input Integer j "Second component ID";
  input TILMedia.Internals.TILMediaExternalObject gasPointer;
  input Integer gasIDXVector[:];

  output Modelica.Units.SI.DiffusionCoefficient D_ij "Binary diffusion coefficient";

protected
  parameter Integer nc = size(gasIDXVector,1);
  Modelica.Units.SI.MolarMass M_i=TILMedia.Gas.ObjectFunctions.molarMass_n(i - 1, gasPointer)
    "Molar mass component i";
  Modelica.Units.SI.MolarMass M_j=TILMedia.Gas.ObjectFunctions.molarMass_n(j - 1, gasPointer)
    "Molar mass component i";

  //______/ Diffusion Volumes  \_________
  Real Vdiff_i(unit="1") "Diffusion volume component i";
  Real Vdiff_j(unit="1") "Diffusion volume component j";

  // [Wärmeatlas2013] and [Poling2020]
  Real Vdiff_NH3=20.7;
  Real Vdiff_Ar=16.2;
  Real Vdiff_CO2=26.9;
  Real Vdiff_CO=18;
  Real Vdiff_CH4=15.9*1 + 2.31*4;
  Real Vdiff_CH3OH=15.9*1 + 2.31*4 + 6.11*1;
  Real Vdiff_O2=16.3;
  Real Vdiff_SO2=41.8;
  Real Vdiff_N2=18.5;
  Real Vdiff_H2O=13.1;
  Real Vdiff_H2=6.12;

  Real Vdiff[:]={Vdiff_NH3, Vdiff_Ar, Vdiff_H2O, Vdiff_H2, Vdiff_H2,Vdiff_H2,Vdiff_O2,Vdiff_N2,Vdiff_CH3OH,Vdiff_CH4,Vdiff_CO,Vdiff_CO2,Vdiff_SO2};

algorithm
  //______/ Checking number of component  \_________

  assert(i<=nc,  "The index i is out of range of gasType in function binaryDiffCoeff_ij_Fuller.", level = AssertionLevel.error);
  assert(j<=nc,  "The index j is out of range of gasType in function binaryDiffCoeff_ij_Fuller.", level = AssertionLevel.error);

  Vdiff_i := Vdiff[gasIDXVector[i]];
  Vdiff_j := Vdiff[gasIDXVector[j]];

  D_ij := 1e-4* 0.00143*T^(1.75)*(1/(1000*M_j) + 1/(1000*M_i))^(1/2)/((p*1e-5)*2^0.5*(Vdiff_i^(1/3) + Vdiff_j^(1/3))^2);  // [Wärmeatlas2013] and [Poling2020]
  // p in bar, M in g/mol

  annotation (Documentation(info="<html><p>Calculation of binary gas diffusion coefficients according to [Poling2020] and [Waermeatlas2013]:  

\\\\[
        D_{i,j} = 0.00143  \\frac{T^{1.75}}{p M_{i,j}^{\\frac{1}{2}}\\left(\\nu_i^{\\frac{1}{3}}+\\nu_j^{\\frac{1}{3}} \\right)^{2}}
\\\\]

Here \\\\(D_{i,j}\\\\) is the binary diffusion coefficient (\\\\(\\mathrm{cm^2/s}\\\\))  of species \\\\(i\\\\) and \\\\(j\\\\), \\\\(p\\\\) is the total pressure (bar), \\\\(T\\\\) is the temperature (K) 
and \\\\(\\nu_{j}\\\\) and \\\\(\\nu_{j}\\\\) are the atomic diffusion volumes of species \\\\(i\\\\) and \\\\(j\\\\). The values for \\\\(\\nu_{j}\\\\) and \\\\(\\nu_{j}\\\\) are tabulated in [Poling2020] and [Waermeatlas2013].
\\\\(M_{i,j}\\\\) is calculated with the molecular weights of species \\\\(i\\\\) and \\\\(j\\\\) in (\\\\(\\mathrm{g/mol}\\\\))
\\\\[
        M_{i,j} = 2\\left[\\left(\\frac{1}{M_j}\\right)+\\left(\\frac{1}{M_j}\\right)\\right]^{-1}.
\\\\]

</p><h4>References</h4>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
  <tr>
    <td>[Poling2020]</td>
    <td>Poling, Bruce E.; Prausnitz, John M.; O'Connell, John P. (2020): Properties of Gases and Liquids, Fifth Edition. Fifth edition. New York, N.Y.: McGraw-Hill Education; McGraw Hill (McGraw-Hill's AccessEngineering).
    </td>
  </tr>
  <tr>
    <td>[Waermeatlas2013]</td>
    <td>Springer-Verlag GmbH (2013): VDI-Wärmeatlas. Berlin, Heidelberg: Springer Berlin Heidelberg.
    </td>
  </tr>
</table>
</html>"));
end binaryDiffCoeff_ij_Fuller;
