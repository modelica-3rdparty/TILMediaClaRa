within TILMedia.Internals.GasDiffusionCoefficients;
function binaryDiffCoeff_ij_Fuller  "General binary diffusion coefficient calculation via Fuller methode"

  // References:[Wärmeatlas2013]  VDI-Wärmeatlas(2013). 11. Aufl. Berlin, Heidelberg: Springer
  //            [Poling2020]      Poling, Bruce E.; Prausnitz, John M.; O'Connell, John P. (2020): Properties of Gases and Liquids, Fifth Edition. Fifth edition. New York, N.Y.: McGraw-Hill Education; McGraw Hill (McGraw-Hill's AccessEngineering)

  input Modelica.Units.SI.AbsolutePressure p "Pressure";
  input Modelica.Units.SI.Temperature T "Temperature";
  input Integer i "First component ID";
  input Integer j "Second component ID";
  input TILMedia.GasTypes.BaseGas gasType "Gas type";

  output Modelica.Units.SI.DiffusionCoefficient D_ij "Binary diffusion coefficient";

protected
  parameter Modelica.Units.SI.MolarMass M_i=TILMedia.GasFunctions.molarMass_n(gasType, i - 1)
    "Molar mass component i";
  parameter Modelica.Units.SI.MolarMass M_j=TILMedia.GasFunctions.molarMass_n(gasType, j - 1)
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

  //______/ Checking number of component  \_________
  parameter Integer idx_NH3=TILMedia.Internals.GetIDXfromCAS.getIDXfromCAS(TILMedia.Internals.GetIDXfromCAS.Substances.NH3.name,
        gasType,
        getInstanceName(),TILMedia.Internals.GetIDXfromCAS.assertionLevel.nomessage)
                                                                          annotation (Evaluate=false);
  parameter Integer idx_Ar=TILMedia.Internals.GetIDXfromCAS.getIDXfromCAS(TILMedia.Internals.GetIDXfromCAS.Substances.Ar.name,
        gasType,
        getInstanceName(),TILMedia.Internals.GetIDXfromCAS.assertionLevel.nomessage)
                                                                          annotation (Evaluate=false);
  parameter Integer idx_CO2=TILMedia.Internals.GetIDXfromCAS.getIDXfromCAS(TILMedia.Internals.GetIDXfromCAS.Substances.CO2.name,
        gasType,
        getInstanceName(),TILMedia.Internals.GetIDXfromCAS.assertionLevel.nomessage)
                                                                          annotation (Evaluate=false);
  parameter Integer idx_CO=TILMedia.Internals.GetIDXfromCAS.getIDXfromCAS(TILMedia.Internals.GetIDXfromCAS.Substances.CO.name,
        gasType,
        getInstanceName(),TILMedia.Internals.GetIDXfromCAS.assertionLevel.nomessage)
                                                                          annotation (Evaluate=false);
  parameter Integer idx_CH4=TILMedia.Internals.GetIDXfromCAS.getIDXfromCAS(TILMedia.Internals.GetIDXfromCAS.Substances.CH4.name,
        gasType,
        getInstanceName(),TILMedia.Internals.GetIDXfromCAS.assertionLevel.nomessage)
                                                                          annotation (Evaluate=false);
  parameter Integer idx_CH3OH=TILMedia.Internals.GetIDXfromCAS.getIDXfromCAS(TILMedia.Internals.GetIDXfromCAS.Substances.CH3OH.name,
        gasType,
        getInstanceName(),TILMedia.Internals.GetIDXfromCAS.assertionLevel.nomessage)
                                                                          annotation (Evaluate=false);
  parameter Integer idx_O2=TILMedia.Internals.GetIDXfromCAS.getIDXfromCAS(TILMedia.Internals.GetIDXfromCAS.Substances.O2.name,
        gasType,
        getInstanceName(),TILMedia.Internals.GetIDXfromCAS.assertionLevel.nomessage)
                                                                          annotation (Evaluate=false);
  parameter Integer idx_SO2=TILMedia.Internals.GetIDXfromCAS.getIDXfromCAS(TILMedia.Internals.GetIDXfromCAS.Substances.SO2.name,
        gasType,
        getInstanceName(),TILMedia.Internals.GetIDXfromCAS.assertionLevel.nomessage)
                                                                          annotation (Evaluate=false);
  parameter Integer idx_N2=TILMedia.Internals.GetIDXfromCAS.getIDXfromCAS(TILMedia.Internals.GetIDXfromCAS.Substances.N2.name,
        gasType,
        getInstanceName(),TILMedia.Internals.GetIDXfromCAS.assertionLevel.nomessage)
                                                                          annotation (Evaluate=false);
  parameter Integer idx_H2O=TILMedia.Internals.GetIDXfromCAS.getIDXfromCAS(TILMedia.Internals.GetIDXfromCAS.Substances.H2O.name,
        gasType,
        getInstanceName(),TILMedia.Internals.GetIDXfromCAS.assertionLevel.nomessage)
                                                                          annotation (Evaluate=false);
  parameter Integer idx_H2=TILMedia.Internals.GetIDXfromCAS.getIDXfromCAS(TILMedia.Internals.GetIDXfromCAS.Substances.H2.name,
        gasType,
        getInstanceName(),TILMedia.Internals.GetIDXfromCAS.assertionLevel.nomessage)
                                                                          annotation (Evaluate=false);

algorithm
  //______/ Checking number of component  \_________

   assert(i<=gasType.nc,  "The index i is out of range of gasType in function binaryDiffCoeff_ij_Fuller.", level = AssertionLevel.error);

  if i == idx_NH3 then
    Vdiff_i := Vdiff_NH3;
  elseif i == idx_Ar then
    Vdiff_i := Vdiff_Ar;
  elseif i == idx_CO2 then
    Vdiff_i := Vdiff_CO2;
  elseif i == idx_CO then
    Vdiff_i := Vdiff_CO;
  elseif i == idx_CH4 then
    Vdiff_i := Vdiff_CH4;
  elseif i == idx_CH3OH then
    Vdiff_i := Vdiff_CH3OH;
  elseif i == idx_O2 then
    Vdiff_i := Vdiff_O2;
  elseif i == idx_SO2 then
    Vdiff_i := Vdiff_SO2;
  elseif i == idx_N2 then
    Vdiff_i := Vdiff_N2;
  elseif i == idx_H2O then
    Vdiff_i := Vdiff_H2O;
  elseif i == idx_H2 then
    Vdiff_i := Vdiff_H2;
  else
    Vdiff_i := 0;
    assert(false, "The function binaryDiffCoeff_ij_Fuller is not defined for the chosen index i of gasType.", level = AssertionLevel.error);
  end if;

  assert(j<=gasType.nc,  "The index j is out of range of gasType in function binaryDiffCoeff_ij_Fuller.", level = AssertionLevel.error);

  if j == idx_NH3 then
    Vdiff_j := Vdiff_NH3;
  elseif j == idx_Ar then
    Vdiff_j := Vdiff_Ar;
  elseif j == idx_CO2 then
    Vdiff_j := Vdiff_CO2;
  elseif j == idx_CO then
    Vdiff_j := Vdiff_CO;
  elseif j == idx_CH4 then
    Vdiff_j := Vdiff_CH4;
  elseif j == idx_CH3OH then
    Vdiff_j := Vdiff_CH3OH;
  elseif j == idx_O2 then
    Vdiff_j := Vdiff_O2;
  elseif j == idx_SO2 then
    Vdiff_j := Vdiff_SO2;
  elseif j == idx_N2 then
    Vdiff_j := Vdiff_N2;
  elseif j == idx_H2O then
    Vdiff_j := Vdiff_H2O;
  elseif j == idx_H2 then
    Vdiff_j := Vdiff_H2;
  else
    Vdiff_j := 0;
    assert(false, "The function binaryDiffCoeff_ij_Fuller is not defined for the chosen index j of gasType.", level = AssertionLevel.error);
  end if;

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
