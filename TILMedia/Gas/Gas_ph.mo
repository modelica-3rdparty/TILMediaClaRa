within TILMedia.Gas;
model Gas_ph "Gas vapor model with p, h and xi as independent variables"
  extends TILMedia.BaseClasses.PartialGas_ph(gasPointer=TILMedia.Internals.TILMediaExternalObject(
        "Gas",
        gasType.concatGasName,
        computeFlags,
        gasType.mixingRatio_propertyCalculation[1:end - 1]/sum(gasType.mixingRatio_propertyCalculation),
        gasType.nc,
        gasType.condensingIndex,
        getInstanceName()), M_i={TILMedia.Internals.Gas.ObjectFunctions.molarMass_n(i - 1, gasPointer) for i in 1:
        gasType.nc});
protected
  final parameter Integer computeFlags=TILMedia.Internals.calcComputeFlags(
      computeTransportProperties,
      false,
      true,
      false,
      false);
equation
  //calculate molar mass
  M = 1/sum(cat(
    1,
    xi,
    {1 - sum(xi)}) ./ M_i);
  //calculate molar fraction
  xi = x .* M_i[1:end - 1]*(sum(cat(
    1,
    xi,
    {1 - sum(xi)}) ./ M_i));
  //xi = x.*M_i/M
  //calculate relative humidity, water content, h1px
  if (gasType.condensingIndex > 0 and gasType.nc > 1) then
    if (gasType.condensingIndex == gasType.nc) then
      cat(
        1,
        xi_dryGas,
        {1 - sum(xi_dryGas)}) = xi*(1 + humRatio);
    else
      humRatio = xi[gasType.condensingIndex]*(humRatio + 1);
      for i in 1:gasType.nc - 1 loop
        if (i <> gasType.condensingIndex) then
          xi_dryGas[if (i < gasType.condensingIndex) then i else i - 1] = xi[i]*(humRatio + 1);
        end if;
      end for;
    end if;
    h1px = h*(1 + humRatio);
    phi =TILMedia.Internals.Gas.AdditionalObjectFunctions.relativeHumidity_pThumRatioxidg(
      p,
      T,
      humRatio,
      xi_dryGas,
      gasPointer);
    humRatio_s =TILMedia.Internals.Gas.AdditionalObjectFunctions.saturationHumidityRatio_pTxidg(
      p,
      T,
      xi_dryGas,
      gasPointer);
    xi_s =TILMedia.Gas.ObjectFunctions.saturationMassFraction_pTxidg(
      p,
      T,
      xi_dryGas,
      gasPointer);
  else
    phi = -1;
    humRatio = -1;
    h1px = -1;
    humRatio_s = -1;
    xi_s = -1;
  end if;

  if (gasType.condensingIndex <= 0) then
    // some properties are only pressure dependent if there is vapour in the mixture
    p_s = -1;
    delta_hv = -1;
    delta_hd = -1;
    h_i ={TILMedia.Gas.ObjectFunctions.specificEnthalpyOfPureGas_Tn(T, i, gasPointer) for i in 0:gasType.nc - 1};
  else
    //     (p_s,delta_hv,delta_hd,h_i) =
    //       TILMedia.Internals.GasObjectFunctions.pureComponentProperties_Tnc(
    //       T,
    //       gasType.nc,
    //       gasPointer);
    p_s =TILMedia.Gas.ObjectFunctions.saturationPartialPressure_T(T, gasPointer);
    delta_hv =TILMedia.Gas.ObjectFunctions.specificEnthalpyOfVaporisation_T(T, gasPointer);
    delta_hd =TILMedia.Gas.ObjectFunctions.specificEnthalpyOfDesublimation_T(T, gasPointer);
    h_i ={TILMedia.Gas.ObjectFunctions.specificEnthalpyOfPureGas_Tn(T, i, gasPointer) for i in 0:gasType.nc - 1};
  end if;

  if (gasType.condensingIndex <= 0) then
    // some properties are only pressure dependent if there is vapour in the mixture
    T =TILMedia.Gas.ObjectFunctions.temperature_phxi(
      1,
      h,
      xi,
      gasPointer);
    cp =TILMedia.Gas.ObjectFunctions.specificIsobaricHeatCapacity_pTxi(
      1,
      T,
      xi,
      gasPointer);
    cv =TILMedia.Gas.ObjectFunctions.specificIsochoricHeatCapacity_phxi(
      1,
      h,
      xi,
      gasPointer);
    beta =TILMedia.Gas.ObjectFunctions.isobaricThermalExpansionCoefficient_phxi(
      1,
      h,
      xi,
      gasPointer);
    w =TILMedia.Gas.ObjectFunctions.speedOfSound_phxi(
      1,
      h,
      xi,
      gasPointer);

  else
    T =TILMedia.Gas.ObjectFunctions.temperature_phxi(
      p,
      h,
      xi,
      gasPointer);
    cp =TILMedia.Gas.ObjectFunctions.specificIsobaricHeatCapacity_phxi(
      p,
      h,
      xi,
      gasPointer);
    cv =TILMedia.Gas.ObjectFunctions.specificIsochoricHeatCapacity_phxi(
      p,
      h,
      xi,
      gasPointer);
    beta =TILMedia.Gas.ObjectFunctions.isobaricThermalExpansionCoefficient_phxi(
      p,
      h,
      xi,
      gasPointer);
    w =TILMedia.Gas.ObjectFunctions.speedOfSound_phxi(
      p,
      h,
      xi,
      gasPointer);
  end if;
  s =TILMedia.Gas.ObjectFunctions.specificEntropy_phxi(
    p,
    h,
    xi,
    gasPointer);
  d =TILMedia.Gas.ObjectFunctions.density_phxi(
    p,
    h,
    xi,
    gasPointer);
  drhodh_pxi =TILMedia.Gas.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_phxi(
    p,
    h,
    xi,
    gasPointer);
  drhodp_hxi =TILMedia.Gas.ObjectFunctions.densityDerivativeWRTpressure_phxi(
    p,
    h,
    xi,
    gasPointer);
  drhodxi_ph ={TILMedia.Gas.ObjectFunctions.densityDerivativeWRTmassFraction_phxin(
    p,
    h,
    xi,
    i,
    gasPointer) for i in 0:gasType.nc - 2};
  //   for compNo in 1:gasType.nc-1 loop
  //     drhodxi_ph[compNo] =
  //       TILMedia.Internals.GasObjectFunctions.densityDerivativeWRTmassFraction_phxin(
  //       p,
  //       h,
  //       xi,
  //       compNo-1,
  //       gasPointer);
  //   end for;
  kappa =TILMedia.Gas.ObjectFunctions.isothermalCompressibility_pTxi(
    p,
    T,
    xi,
    gasPointer);
  p_i ={TILMedia.Gas.ObjectFunctions.partialPressure_pTxin(
    p,
    T,
    xi,
    i,
    gasPointer) for i in 0:gasType.nc - 1};
  xi_gas =TILMedia.Gas.ObjectFunctions.gaseousMassFraction_pTxi(
    p,
    T,
    xi,
    gasPointer);
  //   (dummy_d,kappa,dummy_drhodp_hxi,dummy_drhodh_pxi,dummy_drhodxi_ph,p_i,xi_gas) =
  //     TILMedia.Internals.GasObjectFunctions.additionalProperties_pTxi(
  //     p,
  //     T,
  //     xi,
  //     gasPointer);
  if computeTransportProperties then
    (transp.Pr,transp.lambda,transp.eta,transp.sigma) =TILMedia.Internals.Gas.AdditionalObjectFunctions.transportProperties_pTxi(
      p,
      T,
      xi,
      gasPointer);
  else
    transp = TILMedia.Internals.TransportPropertyRecord(
      -1,
      -1,
      -1,
      -1);
  end if;

  annotation (
    defaultComponentName="gas",
    Protection(access=Access.packageDuplicate),
    Documentation(info="<html>
                   <p>
                   The gas model Gas_ph calculates the thermopyhsical property data with given inputs: pressure (p), enthalpy (h), mass fraction (xi) and the parameter gasType.<br>
                   The interface and the way of using, is demonstrated in the Testers -&gt; <a href=\"modelica://TILMedia.Testers.TestGas\">TestGas</a>.
                   </p>
                   <hr>
                   </html>"));
end Gas_ph;
