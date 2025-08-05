within TILMedia.Internals.Gas;
package AdditionalObjectFunctions
  extends TILMedia.Internals.ClassTypes.ModelPackage;

    function molarMass_nc
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input Integer nc "Number of components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.MolarMass mm_i[nc] "Molar mass of component i";
    algorithm
    mm_i :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.molarMass_nc(nc, gasPointer);
    annotation (Inline=false, LateInline=true);
    end molarMass_nc;

  function pureComponentProperties_Tnc
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.Temperature T "Temperature";
    input Integer nc "Number of components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.PartialPressure ppS "Saturation partial pressure of condensing component";
    output SI.SpecificEnthalpy delta_hv "Specific enthalpy of vaporation of condensing component";
    output SI.SpecificEnthalpy delta_hd "Specific enthalpy of desublimation of condensing component";
    output SI.SpecificEnthalpy h_idealGas[nc] "Specific enthalpy of theoretical pure component ideal gas state";
  algorithm
    (ppS,delta_hv,delta_hd,h_idealGas) :=
      TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.pureComponentProperties_Tnc(T, nc, gasPointer);
  annotation(Inline=false, LateInline=true);
  end pureComponentProperties_Tnc;

  function simpleCondensingProperties_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
    output SI.SpecificHeatCapacity cv "Specific heat capacity cv";
    output SI.LinearExpansionCoefficient beta "Isothermal expansion coefficient";
    output SI.Velocity w "Speed of sound";
  algorithm
    (cp,cv,beta,w) :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.simpleCondensingProperties_phxi(
        p,
        h,
        xi,
        gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer)=TILMedia.Internals.Gas.AdditionalObjectFunctions.der_simpleCondensingProperties_phxi);
  end simpleCondensingProperties_phxi;

  function der_simpleCondensingProperties_phxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    input Real der_p "Pressure";
    input Real der_h "Specific enthalpy";
    input Real[:] der_xi "Mass fraction";
    output Real der_cp "Specific heat capacity cp";
    output Real der_cv "Specific heat capacity cv";
    output Real der_beta "Isothermal expansion coefficient";
    output Real der_w "Speed of sound";
  algorithm
    (der_cp,der_cv,der_beta,der_w) :=
      TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_simpleCondensingProperties_phxi(
        p,
        h,
        xi,
        gasPointer,
        der_p,
        der_h,
        der_xi);
  annotation(Inline=false, LateInline=true);
  end der_simpleCondensingProperties_phxi;

  function simpleCondensingProperties_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
    output SI.SpecificHeatCapacity cv "Specific heat capacity cv";
    output SI.LinearExpansionCoefficient beta "Isothermal expansion coefficient";
    output SI.Velocity w "Speed of sound";
  algorithm
    (cp,cv,beta,w) :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.simpleCondensingProperties_pTxi(
        p,
        T,
        xi,
        gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer)=TILMedia.Internals.Gas.AdditionalObjectFunctions.der_simpleCondensingProperties_pTxi);
  end simpleCondensingProperties_pTxi;

  function der_simpleCondensingProperties_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    input Real der_p "Pressure";
    input Real der_T "Temperature";
    input Real[:] der_xi "Mass fraction";
    output Real der_cp "Specific heat capacity cp";
    output Real der_cv "Specific heat capacity cv";
    output Real der_beta "Isothermal expansion coefficient";
    output Real der_w "Speed of sound";
  algorithm
    (der_cp,der_cv,der_beta,der_w) :=
      TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_simpleCondensingProperties_pTxi(
        p,
        T,
        xi,
        gasPointer,
        der_p,
        der_T,
        der_xi);
  annotation(Inline=false, LateInline=true);
  end der_simpleCondensingProperties_pTxi;

  function additionalProperties_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Density d "Density";
    output SI.Compressibility kappa "Compressibility";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy";
    output SI.Density drhodxi_ph[size(xi, 1)] "Derivative of density wrt mass fraction";
    output SI.PartialPressure pp[size(xi, 1) + 1] "Partial pressure";
    output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";
  algorithm
    (d,kappa,drhodp_hxi,drhodh_pxi,drhodxi_ph,pp,xi_gas) :=
      TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.additionalProperties_pTxi(
        p,
        T,
        xi,
        gasPointer);
  annotation(Inline=false, LateInline=true);
  end additionalProperties_pTxi;

  function xi_humRatioxidgnc
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input Real humRatioxi_dryGas[nc - 1] "Humidity ratio and xi_dryGas in one vector";
    input Integer nc;
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.MassFraction xi[nc - 1] "Mass fraction";
  algorithm
    xi :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.xi_humRatioxidgnc(humRatioxi_dryGas, nc,
      gasPointer);
  annotation(Inline=false, LateInline=true, inverse(humRatioxi_dryGas=TILMedia.Internals.Gas.AdditionalObjectFunctions.humRatioxidg_xinc(  xi,nc,gasPointer)));
  end xi_humRatioxidgnc;

  function humRatioxidg_xinc
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.MassFraction xi[nc - 1] "Mass fraction";
    input Integer nc;
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output Real humRatioxi_dryGas[nc - 1] "Humidity ratio and xi_dryGas in one vector";
  algorithm
    humRatioxi_dryGas :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.humRatioxidg_xinc(xi, nc,
      gasPointer);
  annotation(Inline=false, LateInline=true, inverse(xi=TILMedia.Internals.Gas.AdditionalObjectFunctions.xi_humRatioxidgnc(  humRatioxi_dryGas,nc,gasPointer)));
  end humRatioxidg_xinc;

  function temperature_pdxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Density d "Density";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Temperature T "Temperature";
  algorithm
    T :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.temperature_pdxi(
        p,
        d,
        xi,
        gasPointer);
  annotation(Inline=false, LateInline=true);
  end temperature_pdxi;

  function liquidDensity_T
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.Temperature T "Temperature";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.Density d "density";
  algorithm
    d :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.liquidDensity_T(T, gasPointer);
  annotation(Inline=false, LateInline=true);
  end liquidDensity_T;

  function specificEntropyOfPureGas_pTxin
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEntropy s_i "Specific entropy of theoretical pure component";
  algorithm
    s_i :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.specificEntropyOfPureGas_pTxin(
        p,
        T,
        xi,
        compNo,
        gasPointer);
  annotation(Inline=false, LateInline=true);
  end specificEntropyOfPureGas_pTxin;

  function dhdT_pxi_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output Real dhdT_pxi;
  algorithm
    dhdT_pxi :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.dhdT_pxi_pTxi(
        p,
        T,
        xi,
        gasPointer);
  annotation(Inline=false, LateInline=true);
  end dhdT_pxi_pTxi;

  function dhdp_Txi_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output Real dhdp_Txi;
  algorithm
    dhdp_Txi :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.dhdp_Txi_pTxi(
        p,
        T,
        xi,
        gasPointer);
  annotation(Inline=false, LateInline=true);
  end dhdp_Txi_pTxi;

  function dhdxi_pT_pTxin
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output Real dhdxi_pT;
  algorithm
    dhdxi_pT :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.dhdxi_pT_pTxin(
        p,
        T,
        xi,
        compNo,
        gasPointer);
  annotation(Inline=false, LateInline=true);
  end dhdxi_pT_pTxin;

  function dd_dT_pxi_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output Real dd_dT_pxi;
  algorithm
    dd_dT_pxi :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.dd_dT_pxi_pTxi(
        p,
        T,
        xi,
        gasPointer);
  annotation(Inline=false, LateInline=true);
  end dd_dT_pxi_pTxi;

  function dd_dp_Txi_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output Real dd_dp_Txi;
  algorithm
    dd_dp_Txi :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.dd_dp_Txi_pTxi(
        p,
        T,
        xi,
        gasPointer);
  annotation(Inline=false, LateInline=true);
  end dd_dp_Txi_pTxi;

  function dd_dxi_pT_pTxin
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output Real dd_dxi_pT;
  algorithm
    dd_dxi_pT :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.dd_dxi_pT_pTxin(
        p,
        T,
        xi,
        compNo,
        gasPointer);
  annotation(Inline=false, LateInline=true);
  end dd_dxi_pT_pTxin;

  function specificAbsoluteGasEntropy_pTn
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEntropy s_i "Specific entropy of theoretical pure component";
  algorithm
    s_i :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.specificAbsoluteGasEntropy_pTn(
        p,
        T,
        compNo,
        gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=compNo,noDerivative=gasPointer) =TILMedia.Internals.Gas.AdditionalObjectFunctions.der_specificAbsoluteGasEntropy_pTn);
  end specificAbsoluteGasEntropy_pTn;

  function der_specificAbsoluteGasEntropy_pTn
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    input Real der_p "Pressure";
    input Real der_T "Temperature";
    output Real der_s_i "Specific entropy of theoretical pure component";
  algorithm
    der_s_i :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_specificAbsoluteGasEntropy_pTn(
        p,
        T,
        compNo,
        gasPointer,
        der_p,
        der_T);
  annotation(Inline=false, LateInline=true);
  end der_specificAbsoluteGasEntropy_pTn;

  function specificAbsoluteLiquidEntropy_pTn
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEntropy s_i "Specific entropy of theoretical pure component";
  algorithm
    s_i :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.specificAbsoluteLiquidEntropy_pTn(
        p,
        T,
        compNo,
        gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=compNo,noDerivative=gasPointer) =TILMedia.Internals.Gas.AdditionalObjectFunctions.der_specificAbsoluteLiquidEntropy_pTn);
  end specificAbsoluteLiquidEntropy_pTn;

  function der_specificAbsoluteLiquidEntropy_pTn
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    input Real der_p "Pressure";
    input Real der_T "Temperature";
    output Real der_s_i "Specific entropy of theoretical pure component";
  algorithm
    der_s_i :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_specificAbsoluteLiquidEntropy_pTn(
        p,
        T,
        compNo,
        gasPointer,
        der_p,
        der_T);
  annotation(Inline=false, LateInline=true);
  end der_specificAbsoluteLiquidEntropy_pTn;

  function specificGasEnthalpy_refStateHf_Tn
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.Temperature T "Temperature";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEnthalpy h_i "Specific entropy of theoretical pure component";
  algorithm
    h_i :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.specificGasEnthalpy_refStateHf_Tn(T, compNo,
      gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=compNo,noDerivative=gasPointer) =TILMedia.Internals.Gas.AdditionalObjectFunctions.der_specificGasEnthalpy_refStateHf_Tn);
  end specificGasEnthalpy_refStateHf_Tn;

  function der_specificGasEnthalpy_refStateHf_Tn
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.Temperature T "Temperature";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    input Real der_T "Temperature";
    output Real der_h_i "Specific entropy of theoretical pure component";
  algorithm
    der_h_i :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_specificGasEnthalpy_refStateHf_Tn(
        T,
        compNo,
        gasPointer,
        der_T);
  annotation(Inline=false, LateInline=true);
  end der_specificGasEnthalpy_refStateHf_Tn;

  function specificLiquidEnthalpy_refStateHf_Tn
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.Temperature T "Temperature";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.SpecificEnthalpy h_i "Specific entropy of theoretical pure component";
  algorithm
    h_i :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.specificLiquidEnthalpy_refStateHf_Tn(T,
      compNo, gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=compNo,noDerivative=gasPointer) =TILMedia.Internals.Gas.AdditionalObjectFunctions.der_specificLiquidEnthalpy_refStateHf_Tn);
  end specificLiquidEnthalpy_refStateHf_Tn;

  function der_specificLiquidEnthalpy_refStateHf_Tn
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.Temperature T "Temperature";
    input Integer compNo "Component ID";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    input Real der_T "Temperature";
    output Real der_h_i "Specific entropy of theoretical pure component";
  algorithm
    der_h_i :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_specificLiquidEnthalpy_refStateHf_Tn(
        T,
        compNo,
        gasPointer,
        der_T);
  annotation(Inline=false, LateInline=true);
  end der_specificLiquidEnthalpy_refStateHf_Tn;

  function transportProperties_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
    output SI.ThermalConductivity lambda "Thermal conductivity";
    output SI.DynamicViscosity eta "Dynamic viscosity";
    output SI.SurfaceTension sigma "Surface tension";
  algorithm
    (Pr,lambda,eta,sigma) :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.transportProperties_pTxi(
        p,
        T,
        xi,
        gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) =TILMedia.Internals.Gas.AdditionalObjectFunctions.der_transportProperties_pTxi);
  end transportProperties_pTxi;

  function der_transportProperties_pTxi
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi[:] "Mass fraction";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    input Real der_p "Pressure";
    input Real der_T "Temperature";
    input Real der_xi[:] "Mass fraction";
    output Real der_Pr "Prandtl number";
    output Real der_lambda "Thermal conductivity";
    output Real der_eta "Dynamic viscosity";
    output Real der_sigma "Surface tension";
  algorithm
    (der_Pr,der_lambda,der_eta,der_sigma) :=
      TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_transportProperties_pTxi(
        p,
        T,
        xi,
        gasPointer,
        der_p,
        der_T,
        der_xi);
  annotation(Inline=false, LateInline=true);
  end der_transportProperties_pTxi;

  function relativeHumidity_pThumRatioxidg
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input Real humRatio "Humidity ratio";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
  algorithm
    phi := TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.relativeHumidity_pThumRatioxidg(
        p,
        T,
        humRatio,
        xi_dryGas,
        gasPointer);
        annotation(Inline=false, LateInline=true,derivative(noDerivative=gasPointer) =
        TILMedia.Internals.Gas.AdditionalObjectFunctions.der_relativeHumidity_pThumRatioxidg,
        inverse(humRatio=TILMedia.Internals.Gas.AdditionalObjectFunctions.humidityRatio_pTphixidg(p,T,phi,xi_dryGas,gasPointer)));
  end relativeHumidity_pThumRatioxidg;

  function der_relativeHumidity_pThumRatioxidg
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input Real humRatio "Humidity ratio";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    input Real der_p "Pressure";
    input Real der_T "Temperature";
    input Real der_humRatio "Humidity ratio";
    input Real der_xi_dryGas[:] "Mass fraction of dry gas";
    output Real der_phi "Relative humidity";
  algorithm
    der_phi :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_relativeHumidity_pThumRatioxidg(
      p,
      T,
      humRatio,
      xi_dryGas,
      gasPointer,
      der_p,
      der_T,
      der_humRatio,
      der_xi_dryGas);
  annotation(Inline=false, LateInline=true);
  end der_relativeHumidity_pThumRatioxidg;

  function humidityRatio_pTphixidg
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output Real humRatio "Humidity ratio";
  algorithm
    humRatio := TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.humidityRatio_pTphixidg(
        p,
        T,
        phi,
        xi_dryGas,
        gasPointer);
        annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) =
        TILMedia.Internals.Gas.AdditionalObjectFunctions.der_humidityRatio_pTphixidg,
        inverse(phi=TILMedia.Internals.Gas.AdditionalObjectFunctions.relativeHumidity_pThumRatioxidg(p,T,humRatio,xi_dryGas,gasPointer)));
  end humidityRatio_pTphixidg;

  function der_humidityRatio_pTphixidg
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    input Real der_p "Pressure";
    input Real der_T "Temperature";
    input Real der_phi "Relative humidity";
    input Real der_xi_dryGas[:] "Mass fraction of dry gas";
    output Real der_humRatio "Humidity ratio";
  algorithm
    der_humRatio :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_humidityRatio_pTphixidg(
      p,
      T,
      phi,
      xi_dryGas,
      gasPointer,
      der_p,
      der_T,
      der_phi,
      der_xi_dryGas);
  annotation(Inline=false, LateInline=true);
  end der_humidityRatio_pTphixidg;

  function saturationHumidityRatio_pTxidg
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output Real humRatio_s "Saturation humidity ratio";
  algorithm
    humRatio_s := TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.saturationHumidityRatio_pTxidg(
        p,
        T,
        xi_dryGas,
        gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) =TILMedia.Internals.Gas.AdditionalObjectFunctions.der_saturationHumidityRatio_pTxidg);
  end saturationHumidityRatio_pTxidg;

  function der_saturationHumidityRatio_pTxidg
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    input Real der_p "Pressure";
    input Real der_T "Temperature";
    input Real der_xi_dryGas[:] "Mass fraction of dry gas";
    output Real der_humRatio_s "Saturation humidity ratio";
  algorithm
    der_humRatio_s :=
      TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_saturationHumidityRatio_pTxidg(
        p,
        T,
        xi_dryGas,
        gasPointer,
        der_p,
        der_T,
        der_xi_dryGas);
  annotation(Inline=false, LateInline=true);
  end der_saturationHumidityRatio_pTxidg;

  function fractionSolidWRTnonGaseousMass_phxi "Fraction of solid wrt total non-gaseous mass (solid+liquid)"
    extends TILMedia.BaseClasses.PartialGasObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject gasPointer;
    output SI.MassFraction q_solid "Solid mass fraction";
  algorithm
    q_solid :=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.fractionSolidWRTnonGaseousMass_phxi(
        p,
        h,
        xi,
        gasPointer);
  annotation(Inline=false, LateInline=true);
  end fractionSolidWRTnonGaseousMass_phxi;

  package ObjectFunctions
    extends TILMedia.Internals.ClassTypes.ModelPackage;

    pure function molarMass_nc
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input Integer nc "Number of components";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output SI.MolarMass mm_i[nc] "Molar mass of component i";

    external"C" TILMedia_Gas_molarMass(gasPointer, mm_i) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Gas_molarMass(void*, double*);",
        Library="TILMedia190ClaRa");
    end molarMass_nc;

    pure function pureComponentProperties_Tnc
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.Temperature T "Temperature";
      input Integer nc "Number of components";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output SI.PartialPressure ppS "Saturation partial pressure of condensing component";
      output SI.SpecificEnthalpy delta_hv "Specific enthalpy of vaporation of condensing component";
      output SI.SpecificEnthalpy delta_hd "Specific enthalpy of desublimation of condensing component";
      output SI.SpecificEnthalpy h_idealGas[nc] "Specific enthalpy of theoretical pure component ideal gas state";

    external"C" TILMedia_Gas_pureComponentProperties_T(
          T,
          gasPointer,
          ppS,
          delta_hv,
          delta_hd,
          h_idealGas) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Gas_pureComponentProperties_T(double, void*, double*, double*, double*, double*);",
        Library="TILMedia190ClaRa");
    end pureComponentProperties_Tnc;

    pure function simpleCondensingProperties_phxi
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
      output SI.SpecificHeatCapacity cv "Specific heat capacity cv";
      output SI.LinearExpansionCoefficient beta "Isothermal expansion coefficient";
      output SI.Velocity w "Speed of sound";

    external"C" TILMedia_Gas_simpleCondensingProperties_phxi(
          p,
          h,
          xi,
          gasPointer,
          cp,
          cv,
          beta,
          w) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Gas_simpleCondensingProperties_phxi(double p, double h, double*, void*, double*, double*, double*, double*);",
        Library="TILMedia190ClaRa");
      annotation (derivative(noDerivative=gasPointer)=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_simpleCondensingProperties_phxi);
    end simpleCondensingProperties_phxi;

    pure function der_simpleCondensingProperties_phxi
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      input Real der_p "Pressure";
      input Real der_h "Specific enthalpy";
      input Real[:] der_xi "Mass fraction";
      output Real der_cp "Specific heat capacity cp";
      output Real der_cv "Specific heat capacity cv";
      output Real der_beta "Isothermal expansion coefficient";
      output Real der_w "Speed of sound";

    external"C" TILMedia_Gas_der_simpleCondensingProperties_phxi(
          p,
          h,
          xi,
          der_p,
          der_h,
          der_xi,
          gasPointer,
          der_cp,
          der_cv,
          der_beta,
          der_w) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Gas_der_simpleCondensingProperties_phxi(double, double, double*, double, double, double*, void*, double*, double*, double*, double*);",
        Library="TILMedia190ClaRa");
    end der_simpleCondensingProperties_phxi;

    pure function simpleCondensingProperties_pTxi
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
      output SI.SpecificHeatCapacity cv "Specific heat capacity cv";
      output SI.LinearExpansionCoefficient beta "Isothermal expansion coefficient";
      output SI.Velocity w "Speed of sound";

    external"C" TILMedia_Gas_simpleCondensingProperties_pTxi(
          p,
          T,
          xi,
          gasPointer,
          cp,
          cv,
          beta,
          w) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Gas_simpleCondensingProperties_pTxi(double, double, double*, void*, double*, double*, double*, double*);",
        Library="TILMedia190ClaRa");
      annotation (derivative(noDerivative=gasPointer)=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_simpleCondensingProperties_pTxi);
    end simpleCondensingProperties_pTxi;

    pure function der_simpleCondensingProperties_pTxi
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      input Real der_p "Pressure";
      input Real der_T "Temperature";
      input Real[:] der_xi "Mass fraction";
      output Real der_cp "Specific heat capacity cp";
      output Real der_cv "Specific heat capacity cv";
      output Real der_beta "Isothermal expansion coefficient";
      output Real der_w "Speed of sound";

    external"C" TILMedia_Gas_der_simpleCondensingProperties_pTxi(
          p,
          T,
          xi,
          der_p,
          der_T,
          der_xi,
          gasPointer,
          der_cp,
          der_cv,
          der_beta,
          der_w) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Gas_der_simpleCondensingProperties_pTxi(double, double, double*, double, double, double*, void*, double*, double*, double*, double*);",
        Library="TILMedia190ClaRa");

    end der_simpleCondensingProperties_pTxi;

    pure function additionalProperties_pTxi
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output SI.Density d "Density";
      output SI.Compressibility kappa "Compressibility";
      output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure";
      output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy";
      output SI.Density drhodxi_ph[size(xi, 1)] "Derivative of density wrt mass fraction";
      output SI.PartialPressure pp[size(xi, 1) + 1] "Partial pressure";
      output SI.MassFraction xi_gas "Mass fraction of gasoues condensing component";

    external"C" TILMedia_Gas_additionalProperties_pTxi(
          p,
          T,
          xi,
          gasPointer,
          d,
          kappa,
          drhodp_hxi,
          drhodh_pxi,
          drhodxi_ph,
          pp,
          xi_gas) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Gas_additionalProperties_pTxi(double, double, double*, void*, double*, double*, double*, double*, double*, double*, double*);",
        Library="TILMedia190ClaRa");
    end additionalProperties_pTxi;

    pure function xi_humRatioxidgnc
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input Real humRatioxi_dryGas[nc - 1] "Humidity ratio and xi_dryGas in one vector";
      input Integer nc;
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output SI.MassFraction xi[nc - 1] "Mass fraction";

    external"C" TILMedia_Gas_xi_humRatioxidg(
          humRatioxi_dryGas,
          gasPointer,
          xi) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Gas_xi_humRatioxidg(double*, void*, double*);",
        Library="TILMedia190ClaRa");
      annotation (inverse(humRatioxi_dryGas=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.humRatioxidg_xinc(
                xi,
                nc,
                gasPointer)));
    end xi_humRatioxidgnc;

    pure function humRatioxidg_xinc
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.MassFraction xi[nc - 1] "Mass fraction";
      input Integer nc;
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output Real humRatioxi_dryGas[nc - 1] "Humidity ratio and xi_dryGas in one vector";

    external"C" TILMedia_Gas_humRatioxidg_xi(
          xi,
          gasPointer,
          humRatioxi_dryGas) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Gas_humRatioxidg_xi(double*, void*, double*);",
        Library="TILMedia190ClaRa");
      annotation (inverse(xi=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.xi_humRatioxidgnc(
                humRatioxi_dryGas,
                nc,
                gasPointer)));
    end humRatioxidg_xinc;

    pure function temperature_pdxi
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Density d "Density";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output SI.Temperature T "Temperature";

    external"C" T = TILMedia_GasMixture_temperature_pdxi(
          p,
          d,
          xi,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_GasMixture_temperature_pdxi(double, double, double*, void*);",
        Library="TILMedia190ClaRa");
    end temperature_pdxi;

    pure function liquidDensity_T
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.Temperature T "Temperature";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output SI.Density d "density";

    external"C" d = TILMedia_Gas_liquidDensity_T(T, gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_Gas_liquidDensity_T(double, void*);",
        Library="TILMedia190ClaRa");
    end liquidDensity_T;

    pure function specificEntropyOfPureGas_pTxin
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi[:] "Mass fraction";
      input Integer compNo "Component ID";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output SI.SpecificEntropy s_i "Specific entropy of theoretical pure component";

    external"C" s_i = TILMedia_GasObjectFunctions_specificEntropyOfPureGas_pTxin(
          p,
          T,
          xi,
          compNo,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_GasObjectFunctions_specificEntropyOfPureGas_pTxin(double, double, double*,int, void*);",
        Library="TILMedia190ClaRa");

    end specificEntropyOfPureGas_pTxin;

    pure function dhdT_pxi_pTxi
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output Real dhdT_pxi;
    external"C" dhdT_pxi = TILMedia_Gas_dhdT_pxi_pTxi(
          p,
          T,
          xi,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_Gas_dhdT_pxi_pTxi(double, double, double*, void*);",
        Library="TILMedia190ClaRa");
    end dhdT_pxi_pTxi;

    pure function dhdp_Txi_pTxi
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output Real dhdp_Txi;
    external"C" dhdp_Txi = TILMedia_Gas_dhdp_Txi_pTxi(
          p,
          T,
          xi,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_Gas_dhdp_Txi_pTxi(double, double, double*, void*);",
        Library="TILMedia190ClaRa");
    end dhdp_Txi_pTxi;

    pure function dhdxi_pT_pTxin
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi[:] "Mass fraction";
      input Integer compNo "Component ID";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output Real dhdxi_pT;
    external"C" dhdxi_pT = TILMedia_Gas_dhdxi_pT_pTxi(
          p,
          T,
          xi,
          compNo,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_Gas_dhdxi_pT_pTxi(double, double, double*, int, void*);",
        Library="TILMedia190ClaRa");
    end dhdxi_pT_pTxin;

    pure function dd_dT_pxi_pTxi
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output Real dd_dT_pxi;
    external"C" dd_dT_pxi = TILMedia_Gas_dd_dT_pxi_pTxi(
          p,
          T,
          xi,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_Gas_dd_dT_pxi_pTxi(double, double, double*, void*);",
        Library="TILMedia190ClaRa");
    end dd_dT_pxi_pTxi;

    pure function dd_dp_Txi_pTxi
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output Real dd_dp_Txi;
    external"C" dd_dp_Txi = TILMedia_Gas_dd_dp_Txi_pTxi(
          p,
          T,
          xi,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_Gas_dd_dp_Txi_pTxi(double, double, double*, void*);",
        Library="TILMedia190ClaRa");
    end dd_dp_Txi_pTxi;

    pure function dd_dxi_pT_pTxin
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi[:] "Mass fraction";
      input Integer compNo "Component ID";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output Real dd_dxi_pT;
    external"C" dd_dxi_pT = TILMedia_Gas_dd_dxi_pT_pTxi(
          p,
          T,
          xi,
          compNo,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_Gas_dd_dxi_pT_pTxi(double, double, double*, int, void*);",
        Library="TILMedia190ClaRa");
    end dd_dxi_pT_pTxin;

    pure function specificAbsoluteGasEntropy_pTn
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input Integer compNo "Component ID";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output SI.SpecificEntropy s_i "Specific entropy of theoretical pure component";

    external"C" s_i = TILMedia_GasObjectFunctions_specificAbsoluteGasEntropy_pTn(
          p,
          T,
          compNo,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_GasObjectFunctions_specificAbsoluteGasEntropy_pTn(double, double, int, void*);",
        Library="TILMedia190ClaRa");

      annotation (derivative(
          noDerivative=compNo,
          noDerivative=gasPointer) =TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_specificAbsoluteGasEntropy_pTn);
    end specificAbsoluteGasEntropy_pTn;

    pure function der_specificAbsoluteGasEntropy_pTn
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input Integer compNo "Component ID";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      input Real der_p "Pressure";
      input Real der_T "Temperature";
      output Real der_s_i "Specific entropy of theoretical pure component";

    external"C" der_s_i = TILMedia_GasObjectFunctions_der_specificAbsoluteGasEntropy_pTn(
          p,
          T,
          der_p,
          der_T,
          compNo,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_GasObjectFunctions_der_specificAbsoluteGasEntropy_pTn(double, double, double, double, int, void*);",
        Library="TILMedia190ClaRa");

    end der_specificAbsoluteGasEntropy_pTn;

    pure function specificAbsoluteLiquidEntropy_pTn
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input Integer compNo "Component ID";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output SI.SpecificEntropy s_i "Specific entropy of theoretical pure component";

    external"C" s_i = TILMedia_GasObjectFunctions_specificAbsoluteLiquidEntropy_pTn(
          p,
          T,
          compNo,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_GasObjectFunctions_specificAbsoluteLiquidEntropy_pTn(double, double, int, void*);",
        Library="TILMedia190ClaRa");

      annotation (derivative(
          noDerivative=compNo,
          noDerivative=gasPointer) =TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_specificAbsoluteLiquidEntropy_pTn);
    end specificAbsoluteLiquidEntropy_pTn;

    pure function der_specificAbsoluteLiquidEntropy_pTn
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input Integer compNo "Component ID";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      input Real der_p "Pressure";
      input Real der_T "Temperature";
      output Real der_s_i "Specific entropy of theoretical pure component";

    external"C" der_s_i = TILMedia_GasObjectFunctions_der_specificAbsoluteLiquidEntropy_pTn(
          p,
          T,
          der_p,
          der_T,
          compNo,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_GasObjectFunctions_der_specificAbsoluteLiquidEntropy_pTn(double, double, double, double, int, void*);",
        Library="TILMedia190ClaRa");

    end der_specificAbsoluteLiquidEntropy_pTn;

    pure function specificGasEnthalpy_refStateHf_Tn
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.Temperature T "Temperature";
      input Integer compNo "Component ID";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output SI.SpecificEnthalpy h_i "Specific entropy of theoretical pure component";

    external"C" h_i = TILMedia_GasObjectFunctions_specificGasEnthalpy_refStateHf_Tn(
          T,
          compNo,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_GasObjectFunctions_specificGasEnthalpy_refStateHf_Tn(double, int, void*);",
        Library="TILMedia190ClaRa");

      annotation (derivative(
          noDerivative=compNo,
          noDerivative=gasPointer) =TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_specificGasEnthalpy_refStateHf_Tn);
    end specificGasEnthalpy_refStateHf_Tn;

    pure function der_specificGasEnthalpy_refStateHf_Tn
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.Temperature T "Temperature";
      input Integer compNo "Component ID";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      input Real der_T "Temperature";
      output Real der_h_i "Specific entropy of theoretical pure component";

    external"C" der_h_i = TILMedia_GasObjectFunctions_der_specificGasEnthalpy_refStateHf_Tn(
          T,
          der_T,
          compNo,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_GasObjectFunctions_der_specificGasEnthalpy_refStateHf_Tn(double, double, int, void*);",
        Library="TILMedia190ClaRa");
    end der_specificGasEnthalpy_refStateHf_Tn;

    pure function specificLiquidEnthalpy_refStateHf_Tn
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.Temperature T "Temperature";
      input Integer compNo "Component ID";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output SI.SpecificEnthalpy h_i "Specific entropy of theoretical pure component";

    external"C" h_i = TILMedia_GasObjectFunctions_specificLiquidEnthalpy_refStateHf_Tn(
          T,
          compNo,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_GasObjectFunctions_specificLiquidEnthalpy_refStateHf_Tn(double, int, void*);",
        Library="TILMedia190ClaRa");

      annotation (derivative(
          noDerivative=compNo,
          noDerivative=gasPointer) =TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_specificLiquidEnthalpy_refStateHf_Tn);
    end specificLiquidEnthalpy_refStateHf_Tn;

    pure function der_specificLiquidEnthalpy_refStateHf_Tn
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.Temperature T "Temperature";
      input Integer compNo "Component ID";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      input Real der_T "Temperature";
      output Real der_h_i "Specific entropy of theoretical pure component";

    external"C" der_h_i = TILMedia_GasObjectFunctions_der_specificLiquidEnthalpy_refStateHf_Tn(
          T,
          der_T,
          compNo,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_GasObjectFunctions_der_specificLiquidEnthalpy_refStateHf_Tn(double, double, int, void*);",
        Library="TILMedia190ClaRa");
    end der_specificLiquidEnthalpy_refStateHf_Tn;

    pure function transportProperties_pTxi
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output SI.PrandtlNumber Pr "Prandtl number";
      output SI.ThermalConductivity lambda "Thermal conductivity";
      output SI.DynamicViscosity eta "Dynamic viscosity";
      output SI.SurfaceTension sigma "Surface tension";
    external"C" TILMedia_Gas_transportProperties_pTxi(
          p,
          T,
          xi,
          gasPointer,
          Pr,
          lambda,
          eta,
          sigma) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Gas_transportProperties_pTxi(double, double, double*, void*, double*, double*, double*, double*);",
        Library="TILMedia190ClaRa");
      annotation (derivative(noDerivative=gasPointer) =TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_transportProperties_pTxi);
    end transportProperties_pTxi;

    pure function der_transportProperties_pTxi
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi[:] "Mass fraction";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      input Real der_p "Pressure";
      input Real der_T "Temperature";
      input Real der_xi[:] "Mass fraction";
      output Real der_Pr "Prandtl number";
      output Real der_lambda "Thermal conductivity";
      output Real der_eta "Dynamic viscosity";
      output Real der_sigma "Surface tension";
    external"C" TILMedia_Gas_der_transportProperties_pTxi(
          p,
          T,
          xi,
          der_p,
          der_T,
          der_xi,
          gasPointer,
          der_Pr,
          der_lambda,
          der_eta,
          der_sigma) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Gas_der_transportProperties_pTxi(double, double, double*, double, double, double*, void*, double*, double*, double*, double*);",
        Library="TILMedia190ClaRa");
    end der_transportProperties_pTxi;

    pure function relativeHumidity_pThumRatioxidg
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input Real humRatio "Humidity ratio";
      input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";

    external"C" phi = TILMedia_MoistAir_phi_pThumRatioxidg(
          p,
          T,
          humRatio,
          xi_dryGas,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_MoistAir_phi_pThumRatioxidg(double, double, double, double*, void*);",
        Library="TILMedia190ClaRa");
      annotation (inverse(humRatio=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.humidityRatio_pTphixidg(
                p,
                T,
                phi,
                xi_dryGas,
                gasPointer)), derivative(noDerivative=gasPointer) =TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_relativeHumidity_pThumRatioxidg);
    end relativeHumidity_pThumRatioxidg;

    pure function der_relativeHumidity_pThumRatioxidg
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input Real humRatio "Humidity ratio";
      input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      input Real der_p "Pressure";
      input Real der_T "Temperature";
      input Real der_humRatio "Humidity ratio";
      input Real der_xi_dryGas[:] "Mass fraction of dry gas";
      output Real der_phi "Relative humidity";

    external"C" der_phi = TILMedia_MoistAir_der_phi_pThumRatioxidg(
          p,
          T,
          humRatio,
          xi_dryGas,
          der_p,
          der_T,
          der_humRatio,
          der_xi_dryGas,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_MoistAir_der_phi_pThumRatioxidg(double, double, double, double*, double, double, double, double*, void*);",
        Library="TILMedia190ClaRa");

      //    annotation (inverse(humRatio=TILMedia.Internals.GasObjectFunctions.humRatio_pTphixidg(p,T,phi,xi_dryGas,gasPointer)));
    end der_relativeHumidity_pThumRatioxidg;

    pure function humidityRatio_pTphixidg
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
      input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output Real humRatio "Humidity ratio";

    external"C" humRatio = TILMedia_MoistAir_humRatio_pTphixidg(
          p,
          T,
          phi,
          xi_dryGas,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_MoistAir_humRatio_pTphixidg(double, double, double, double*, void*);",
        Library="TILMedia190ClaRa");
      annotation (inverse(phi=TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.relativeHumidity_pThumRatioxidg(
                p,
                T,
                humRatio,
                xi_dryGas,
                gasPointer)), derivative(noDerivative=gasPointer) =TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_humidityRatio_pTphixidg);
    end humidityRatio_pTphixidg;

    pure function der_humidityRatio_pTphixidg
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
      input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      input Real der_p "Pressure";
      input Real der_T "Temperature";
      input Real der_phi "Relative humidity";
      input Real der_xi_dryGas[:] "Mass fraction of dry gas";
      output Real der_humRatio "Humidity ratio";

    external"C" der_humRatio = TILMedia_MoistAir_der_humRatio_pTphixidg(
          p,
          T,
          phi,
          xi_dryGas,
          der_p,
          der_T,
          der_phi,
          der_xi_dryGas,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_MoistAir_der_humRatio_pTphixidg(double, double, double, double*, double, double, double, double*, void*);",
        Library="TILMedia190ClaRa");

      //    annotation (inverse(phi=TILMedia.Internals.GasObjectFunctions.phi_pThumRatioxidg(p,T,humRatio,xi_dryGas,gasPointer)));
    end der_humidityRatio_pTphixidg;

    pure function saturationHumidityRatio_pTxidg
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;

      output Real humRatio_s "Saturation humidity ratio";

    external"C" humRatio_s = TILMedia_Gas_saturationHumidityRatio_pTxidg(
          p,
          T,
          xi_dryGas,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_Gas_saturationHumidityRatio_pTxidg(double, double, double*, void*);",
        Library="TILMedia190ClaRa");

      annotation (derivative(noDerivative=gasPointer) =TILMedia.Internals.Gas.AdditionalObjectFunctions.ObjectFunctions.der_saturationHumidityRatio_pTxidg);
    end saturationHumidityRatio_pTxidg;

    pure function der_saturationHumidityRatio_pTxidg
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction xi_dryGas[:] "Mass fraction of dry gas";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      input Real der_p "Pressure";
      input Real der_T "Temperature";
      input Real der_xi_dryGas[:] "Mass fraction of dry gas";
      output Real der_humRatio_s "Saturation humidity ratio";

    external"C" der_humRatio_s = TILMedia_Gas_der_saturationHumidityRatio_pTxidg(
          p,
          T,
          xi_dryGas,
          der_p,
          der_T,
          der_xi_dryGas,
          gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_Gas_der_saturationHumidityRatio_pTxidg(double, double, double*, double, double, double*, void*);",
        Library="TILMedia190ClaRa");

    end der_saturationHumidityRatio_pTxidg;

    pure function fractionSolidWRTnonGaseousMass_phxi "Fraction of solid wrt total non-gaseous mass (solid+liquid)"
      extends TILMedia.BaseClasses.PartialGasObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject gasPointer;
      output SI.MassFraction q_solid "Solid mass fraction";
    external"C" q_solid = TILMedia_GasObjectFunctions_fractionSolidWRTnonGaseousMass_phxi(
        p,
        h,
        xi,
        gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_GasObjectFunctions_fractionSolidWRTnonGaseousMass_phxi(double,double,double*,void*);",
        Library="TILMedia190ClaRa");
    end fractionSolidWRTnonGaseousMass_phxi;

  end ObjectFunctions;
end AdditionalObjectFunctions;
