within TILMedia.Internals.GasDiffusionCoefficients;
function binaryDiffCoeff_ij_Chapman_Enskog
  "General binary diffusion coefficient calculation via Chapman–Enskog theory (unit = m2/s)"

  // References: [Poling2020]  Poling, Bruce E.; Prausnitz, John M.; O'Connell, John P. (2020): Properties of Gases and Liquids, Fifth Edition. Fifth edition. New York, N.Y.: McGraw-Hill Education; McGraw Hill (McGraw-Hill's AccessEngineering)
  //             [Bird2007]    Bird, R. Byron; Stewart, Warren E.; Lightfoot, Edwin N. (2007): Transport phenomena. Rev. 2nd ed. New York: J. Wiley

  input Modelica.Units.SI.AbsolutePressure p "Pressure";
  input Modelica.Units.SI.Temperature T "Temperature";
  input Integer i "First component ID";
  input Integer j "Second component ID";
  input TILMedia.GasTypes.BaseGas gasType "Gas type";

  output Modelica.Units.SI.DiffusionCoefficient D_ij "Binary diffusion coefficient";

  import k_b = Modelica.Constants.k;

protected
  parameter Modelica.Units.SI.MolarMass M_i=TILMedia.GasFunctions.molarMass_n(gasType, i - 1)
    "Molar mass component i";
  parameter Modelica.Units.SI.MolarMass M_j=TILMedia.GasFunctions.molarMass_n(gasType, j - 1)
    "Molar mass component i";

  Modelica.Units.SI.Length sigma_i "Molecular radius i";
  Modelica.Units.SI.Length sigma_j "Molecular radius j";
  Modelica.Units.SI.Energy epsilon_i "Lennard-Jones potential";
  Modelica.Units.SI.Energy epsilon_j "Lennard-Jones potential";
  Modelica.Units.SI.Length sigma_ij "Molecular radius";
  Modelica.Units.SI.Energy epsilon_ij "Lennard-Jones potential";
  Real omega_ij(unit="1") "Collision integral";
  Real fOmega(unit="1");
  /*
  Real fOmegax[:](unit="1") = {0.3,0.35,0.4,0.45,0.5,0.55,0.6,0.65,0.7,0.75,0.8,0.85,0.9,0.95,1,1.05,1.1,1.15,1.2,1.25,1.3,
    1.35,1.4,1.45,1.5,1.55,1.6,1.65,1.7,1.75,1.8,1.85,1.9,1.95,2,2.1,2.2,2.3,2.4,2.5,2.6,2.7,2.8,2.9,3,3.1,3.2,3.3,3.4,3.5,
    3.6,3.7,3.8,3.9,4,4.1,4.2,4.3,4.4,4.5,4.6,4.7,4.8,4.9,5,6,7,8,9,10,12,14,16,18,20,25,30,35,40,50,75,100}; // [Bird2007]
  Real fOmegay[:](unit="1") = {2.649,2.468,2.314,2.182,2.066,1.965,1.877,1.799,1.729,1.667,1.612,1.562,1.517,1.477,1.44,
    1.406,1.375,1.347,1.32,1.296,1.274,1.253,1.234,1.216,1.199,1.183,1.168,1.154,1.141,1.128,1.117,1.105,1.095,1.085,1.075,
    1.058,1.042,1.027,1.013,1.0006,0.989,0.9782,0.9682,0.9588,0.95,0.9418,0.934,0.9267,0.9197,0.9131,0.9068,0.9008,0.8952,
    0.8897,0.8845,0.8796,0.8748,0.8703,0.8659,0.8617,0.8576,0.8537,0.8499,0.8463,0.8428,0.8129,0.7898,0.7711,0.7555,0.7422,
    0.7202,0.7025,0.6878,0.6751,0.664,0.6414,0.6235,0.6088,0.5964,0.5763,0.5415,0.518}; // [Bird2007]
    */

  parameter Real A(unit="1")=1.06036;// [Bird2007] and [Poling2020]
  parameter Real B(unit="1")=0.15610;// [Bird2007] and [Poling2020]
  parameter Real C(unit="1")=0.19300;// [Bird2007] and [Poling2020]
  parameter Real D(unit="1")=0.47635;// [Bird2007] and [Poling2020]
  parameter Real E(unit="1")=1.03587;// [Bird2007] and [Poling2020]
  parameter Real F(unit="1")=1.52996;// [Bird2007] and [Poling2020]
  parameter Real G(unit="1")=1.76474;// [Bird2007] and [Poling2020]
  parameter Real H(unit="1")=3.89411;// [Bird2007] and [Poling2020]

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

  //______/ Material data  \_________
                                    // [Poling2020]  //  [Bird2007]
  Modelica.Units.SI.Energy epsilon_NH3=558.3*k_b;
  Modelica.Units.SI.Energy epsilon_Ar=93.3*k_b;      //122.4*k_b;
  Modelica.Units.SI.Energy epsilon_CO2=195.2*k_b;    //190*k_b;
  Modelica.Units.SI.Energy epsilon_CO=91.7*k_b;      //110*k_b;
  Modelica.Units.SI.Energy epsilon_CH4=148.6*k_b;    //154*k_b;
  Modelica.Units.SI.Energy epsilon_CH3OH=481.8*k_b;
  Modelica.Units.SI.Energy epsilon_O2=106.7*k_b;     //113*k_b;
  Modelica.Units.SI.Energy epsilon_SO2=335.4*k_b;    //363*k_b;
  Modelica.Units.SI.Energy epsilon_N2=71.4*k_b;      //99.8*k_b;
  Modelica.Units.SI.Energy epsilon_H2O=809.1*k_b;
  Modelica.Units.SI.Energy epsilon_H2=59.7*k_b;      //38*k_b;

  // sigma in Angstroem (10^-10 m)  // [Poling2020] //  [Bird2007]
  Modelica.Units.SI.Length sigma_NH3=2.900e-10;     //
  Modelica.Units.SI.Length sigma_Ar=3.542e-10;      //3.432*1e-10;
  Modelica.Units.SI.Length sigma_CO2=3.941e-10;     //3.996*1e-10;
  Modelica.Units.SI.Length sigma_CO=3.69e-10;       //3.590*1e-10;
  Modelica.Units.SI.Length sigma_CH4=3.758e-10;     //3.780*1e-10;
  Modelica.Units.SI.Length sigma_CH3OH= 3.626e-10;  //
  Modelica.Units.SI.Length sigma_O2=3.467e-10;      //3.433*1e-10;
  Modelica.Units.SI.Length sigma_SO2=4.112e-10;     //4.026*1e-10;
  Modelica.Units.SI.Length sigma_N2=3.798e-10;      //3.667*1e-10;
  Modelica.Units.SI.Length sigma_H2O=2.641e-10;     //
  Modelica.Units.SI.Length sigma_H2=2.827e-10;      //2.915*1e-10;
algorithm
  //______/ Checking number of component  \_________
  assert(i<=gasType.nc,  "The index i is out of range of gasType in function binaryDiffCoeff_ij_Chapman_Enskog.", level = AssertionLevel.error);

  if i == idx_NH3 then
    epsilon_i := epsilon_NH3;
    sigma_i := sigma_NH3;
  elseif i == idx_Ar then
    epsilon_i := epsilon_Ar;
    sigma_i := sigma_Ar;
  elseif i == idx_CO2 then
    epsilon_i := epsilon_CO2;
    sigma_i := sigma_CO2;
  elseif i == idx_CO then
    epsilon_i := epsilon_CO;
    sigma_i := sigma_CO;
  elseif i == idx_CH4 then
    epsilon_i := epsilon_CH4;
    sigma_i := sigma_CH4;
  elseif i == idx_CH3OH then
    epsilon_i := epsilon_CH3OH;
    sigma_i := sigma_CH3OH;
  elseif i == idx_O2 then
    epsilon_i := epsilon_O2;
    sigma_i := sigma_O2;
  elseif i == idx_SO2 then
    epsilon_i := epsilon_SO2;
    sigma_i := sigma_SO2;
  elseif i == idx_N2 then
    epsilon_i := epsilon_N2;
    sigma_i := sigma_N2;
  elseif i == idx_H2O then
    epsilon_i := epsilon_H2O;
    sigma_i := sigma_H2O;
  elseif i == idx_H2 then
    epsilon_i := epsilon_H2;
    sigma_i := sigma_H2;
  else
    assert(false, "The function binaryDiffCoeff_ij_Chapman_Enskog is not defined for the chosen index i of gasType.", level = AssertionLevel.error);
    epsilon_i := 0;
    sigma_i := 0;
  end if;

  assert(j<=gasType.nc,  "The index j is out of range of gasType in function binaryDiffCoeff_ij_Chapman_Enskog.", level = AssertionLevel.error);
  if j == idx_NH3 then
    epsilon_j := epsilon_NH3;
    sigma_j := sigma_NH3;
  elseif j == idx_Ar then
    epsilon_j := epsilon_Ar;
    sigma_j := sigma_Ar;
  elseif j == idx_CO2 then
    epsilon_j := epsilon_CO2;
    sigma_j := sigma_CO2;
  elseif j == idx_CO then
    epsilon_j := epsilon_CO;
    sigma_j := sigma_CO;
  elseif j == idx_CH4 then
    epsilon_j := epsilon_CH4;
    sigma_j := sigma_CH4;
  elseif j == idx_CH3OH then
    epsilon_j := epsilon_CH3OH;
    sigma_j := sigma_CH3OH;
  elseif j == idx_O2 then
    epsilon_j := epsilon_O2;
    sigma_j := sigma_O2;
  elseif j == idx_SO2 then
    epsilon_j := epsilon_SO2;
    sigma_j := sigma_SO2;
  elseif j == idx_N2 then
    epsilon_j := epsilon_N2;
    sigma_j := sigma_N2;
  elseif j == idx_H2O then
    epsilon_j := epsilon_H2O;
    sigma_j := sigma_H2O;
  elseif j == idx_H2 then
    epsilon_j := epsilon_H2;
    sigma_j := sigma_H2;
  else
    assert(false, "The function binaryDiffCoeff_ij_Chapman_Enskog is not defined for the chosen index j of gasType.", level = AssertionLevel.error);
    epsilon_j := 0;
    sigma_j := 0;
  end if;

  sigma_ij := 0.5*(sigma_i + sigma_j);    // valid for nonpolar gases [Bird2007]
  epsilon_ij := (epsilon_i*epsilon_j)^(1/2);   // valid for nonpolar gases [Bird2007]
  fOmega := k_b*T/epsilon_ij;
  //   omega_ij := Modelica.Math.Vectors.interpolate( fOmegax,  fOmegay, fOmega);
  omega_ij := A/(fOmega^B) + C/exp(D*fOmega) + E/exp(F*fOmega) + G/exp(H*fOmega); //[Poling2020] and [Bird2007]

  //D_ij := 1e-4 *0.00266/(2^(1/2))*T^(3/2)/((p/101325)*(sigma_ij*10^10)^2*omega_ij)*(1/(1000*M_j) + 1/(1000*M_i))^(1/2);  // [Poling2020], p in bar, M in g/mol, sigma in 10^-10 m
  D_ij := 1e-4 *0.0018583*T^(3/2)/((p/101325)*(sigma_ij*10^10)^2*omega_ij)*(1/(1000*M_j) + 1/(1000*M_i))^(1/2); // [Bird2007], p in atm, M in g/mol, sigma in 10^-10 m

  annotation ( Documentation(info="<html><p>Calculation of binary gas diffusion coefficients according to [Poling2020] and [Bird2007]:  

\\\\[
        D_{i,j} = 0.0018583 \\frac{\\sqrt{T^3 \\left(\\frac{1}{M_i}+\\frac{1}{M_j} \\right)}}{p \\sigma_{i,j}^2 \\Omega_{D,i,j}} 
\\\\]
Here \\\\(D_{i,j}\\\\) is the binary diffusion coefficient (\\\\(\\mathrm{cm^2/s}\\\\))  of species \\\\(i\\\\) and \\\\(j\\\\), \\\\(p\\\\) is the total pressure (bar), \\\\(T\\\\) is the temperature (K) 
and \\\\(M_i\\\\), \\\\(M_j\\\\) are the molecular weights.

The charateristic length \\\\(\\sigma_{i,j}\\\\) (\\\\( \\mathrm{10^{-10} m}\\\\)) is calculated with
\\\\[
        \\sigma_{i,j}= \\frac{\\sigma_{i}+\\sigma_{j}}{2}
\\\\]
The characteristic Lennard-Jones lengths \\\\(\\sigma_{i}\\\\) and \\\\(\\sigma_{j}\\\\) are tabulated (e.g. in [Poling2020]).

The dimensionless diffusion collision integral \\\\(\\Omega_{D,i,j}\\\\) is a function of \\\\(T^\\* =k T /\\varepsilon_{ij}\\\\). Here \\\\(k \\\\) is the Boltzman constant and T the temperature of the gases. 
\\\\(\\varepsilon_{ij}\\\\) is calculated with the tabulated characteristic Lennard-Jones energies \\\\(\\varepsilon_i\\\\) and \\\\(\\varepsilon_j\\\\) (e.g. in [Poling2020] or [Bird2007]):
\\\\[
        \\varepsilon_{i,j}= \\left(\\varepsilon_i \\varepsilon_j \\right)^{\\frac{1}{2}}
\\\\]
The solution of the function \\\\(\\Omega_{D,i,j}= f \\left(k T /\\varepsilon_{ij} \\right)\\\\) can be found in form of a table or as a function, e.g. (in [Poling2020] or [Bird2007])):
\\\\[
        \\Omega_{D,i,j}= f \\left(k T /\\varepsilon_{ij} \\right)= \\frac{1.06036}{{{T^*}^{0.15610}}}  + \\frac{0.19300}{\\exp{\\left( 0.47635 T^\\* \\right)}}+ \\frac{1.03587}{\\exp{\\left( 1.52996 T^\\* \\right)}}+ \\frac{1.76474}{\\exp{\\left( 3.89411 T^\\* \\right)}}
\\\\]

The way of calculating \\\\(\\Omega_{D,i,j}\\\\) via \\\\(\\sigma_{i,j}= \\frac{\\sigma_{i}+\\sigma_{j}}{2}\\\\) and \\\\(\\varepsilon_{i,j}= \\left(\\varepsilon_i \\varepsilon_j \\right)^{\\frac{1}{2}}\\\\) is valid for unpolar gases [Bird2007].

</p><h4>References</h4>
<table border=\"0\" cellspacing=\"0\" cellpadding=\"2\">
  <tr>
    <td>[Poling2020]</td>
    <td>Poling, Bruce E.; Prausnitz, John M.; O'Connell, John P. (2020): Properties of Gases and Liquids, Fifth Edition. Fifth edition. New York, N.Y.: McGraw-Hill Education; McGraw Hill (McGraw-Hill's AccessEngineering).
    </td>
  </tr>
  <tr>
    <td>[Bird2007]</td>
    <td>Bird, R. Byron; Stewart, Warren E.; Lightfoot, Edwin N. (2007): Transport phenomena. Rev. 2nd ed. New York: J. Wiley
    </td>
  </tr>
</table>
</html>"));
end binaryDiffCoeff_ij_Chapman_Enskog;
