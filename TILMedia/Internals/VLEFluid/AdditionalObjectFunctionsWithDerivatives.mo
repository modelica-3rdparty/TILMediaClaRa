within TILMedia.Internals.VLEFluid;
package AdditionalObjectFunctionsWithDerivatives
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  function VLEProperties_phxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.Density d_l "Density";
    output SI.SpecificEnthalpy h_l "Specific enthalpy";
    output SI.AbsolutePressure p_l "Pressure";
    output SI.SpecificEntropy s_l "Specific entropy";
    output SI.Temperature T_l "Temperature";
    output SI.MassFraction[size(xi,1)] xi_l "Mass fractions";
    output SI.Density d_v "Density";
    output SI.SpecificEnthalpy h_v "Specific enthalpy";
    output SI.AbsolutePressure p_v "Pressure";
    output SI.SpecificEntropy s_v "Specific entropy";
    output SI.Temperature T_v "Temperature";
    output SI.MassFraction[size(xi,1)] xi_v "Mass fractions";
  algorithm
    (d_l,h_l,p_l,s_l,T_l,xi_l,d_v,h_v,p_v,s_v,T_v,xi_v) :=
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.VLEProperties_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer)=TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.der_VLEProperties_phxi);
  end VLEProperties_phxi;

  function der_VLEProperties_phxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    input Real der_p "Pressure";
    input Real der_h "Specific enthalpy";
    input Real[:] der_xi "Mass fractions of the first nc-1 components";
    output Real der_d_l "Density";
    output Real der_h_l "Specific enthalpy";
    output Real der_p_l "Pressure";
    output Real der_s_l "Specific entropy";
    output Real der_T_l "Temperature";
    output Real[size(xi,1)] der_xi_l "Mass fractions";
    output Real der_d_v "Density";
    output Real der_h_v "Specific enthalpy";
    output Real der_p_v "Pressure";
    output Real der_s_v "Specific entropy";
    output Real der_T_v "Temperature";
    output Real[size(xi,1)] der_xi_v "Mass fractions";
  algorithm
    (der_d_l,der_h_l,der_p_l,der_s_l,der_T_l,der_xi_l,der_d_v,der_h_v,der_p_v,der_s_v,der_T_v,der_xi_v) :=
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.der_VLEProperties_phxi(
        p,
        h,
        xi,
        vleFluidPointer,
        der_p,
        der_h,
        der_xi);
  annotation(Inline=false, LateInline=true);
  end der_VLEProperties_phxi;

  function transportPropertyRecord_phxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
    output SI.ThermalConductivity lambda "Thermal conductivity";
    output SI.DynamicViscosity eta "Dynamic viscosity";
    output SI.SurfaceTension sigma "Surface tension";
  algorithm
    (Pr,lambda,eta,sigma) :=
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.transportPropertyRecord_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer)=TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.der_transportPropertyRecord_phxi);
  end transportPropertyRecord_phxi;

  function der_transportPropertyRecord_phxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    input Real der_p "Pressure";
    input Real der_h "Specific enthalpy";
    input Real[:] der_xi "Mass fractions of the first nc-1 components";
    output Real der_Pr "Prandtl number";
    output Real der_lambda "Thermal conductivity";
    output Real der_eta "Dynamic viscosity";
    output Real der_sigma "Surface tension";
  algorithm
    (der_Pr,der_lambda,der_eta,der_sigma) :=
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.der_transportPropertyRecord_phxi(
        p,
        h,
        xi,
        vleFluidPointer,
        der_p,
        der_h,
        der_xi);
  annotation(Inline=false, LateInline=true);
  end der_transportPropertyRecord_phxi;

  function additionalProperties_phxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.MassFraction x "Steam mass fraction";
    output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
    output SI.SpecificHeatCapacity cv "Specific heat capacity cv";
    output SI.LinearExpansionCoefficient beta
      "Isobaric expansion coefficient";
    output SI.Compressibility kappa "Isothermal compressibility";
    output TILMedia.Internals.Units.DensityDerPressure drhodp
      "Derivative of density wrt pressure";
    output TILMedia.Internals.Units.DensityDerSpecificEnthalpy drhodh
      "Derivative of density wrt specific enthalpy";
    output Real[size(xi,1)] drhodxi "Derivative of density wrt mass fraction";
    output SI.Velocity a "Speed of sound";
    output Real gamma "Heat capacity ratio";
  algorithm
    (x,cp,cv,beta,kappa,drhodp,drhodh,drhodxi,a,gamma) :=
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.additionalProperties_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer)=TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.der_additionalProperties_phxi);
  end additionalProperties_phxi;

  function der_additionalProperties_phxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    input Real der_p "Pressure";
    input Real der_h "Specific enthalpy";
    input Real[:] der_xi "Mass fractions of the first nc-1 components";
    output Real der_x "Steam mass fraction";
    output Real der_cp "Specific heat capacity cp";
    output Real der_cv "Specific heat capacity cv";
    output Real der_beta "Isobaric expansion coefficient";
    output Real der_kappa "Isothermal compressibility";
    output Real der_drhodp "Derivative of density wrt pressure";
    output Real der_drhodh "Derivative of density wrt specific enthalpy";
    output Real[size(xi,1)] der_drhodxi "Derivative of density wrt mass fraction";
    output Real der_a "Speed of sound";
    output Real der_gamma "Heat capacity ratio";
  algorithm
    (der_x,der_cp,der_cv,der_beta,der_kappa,der_drhodp,der_drhodh,der_drhodxi,der_a,der_gamma) :=
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.der_additionalProperties_phxi(
        p,
        h,
        xi,
        vleFluidPointer,
        der_p,
        der_h,
        der_xi);
  annotation(Inline=false, LateInline=true);
  end der_additionalProperties_phxi;

  function VLETransportPropertyRecord_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.PrandtlNumber Pr_l "Prandtl number";
    output SI.PrandtlNumber Pr_v "Prandtl number";
    output SI.ThermalConductivity lambda_l "Thermal conductivity";
    output SI.ThermalConductivity lambda_v "Thermal conductivity";
    output SI.DynamicViscosity eta_l "Dynamic viscosity";
    output SI.DynamicViscosity eta_v "Dynamic viscosity";
  algorithm
    (Pr_l,Pr_v,lambda_l,lambda_v,eta_l,eta_v) :=
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.VLETransportPropertyRecord_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer)=TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.der_VLETransportPropertyRecord_phxi);
  end VLETransportPropertyRecord_phxi;

  function der_VLETransportPropertyRecord_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    input Real der_p "Pressure";
    input Real der_h "Specific enthalpy";
    input Real[:] der_xi "Mass fractions of the first nc-1 components";
    output Real der_Pr_l "Prandtl number";
    output Real der_Pr_v "Prandtl number";
    output Real der_lambda_l "Thermal conductivity";
    output Real der_lambda_v "Thermal conductivity";
    output Real der_eta_l "Dynamic viscosity";
    output Real der_eta_v "Dynamic viscosity";
  algorithm
    (der_Pr_l,der_Pr_v,der_lambda_l,der_lambda_v,der_eta_l,der_eta_v) :=
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.der_VLETransportPropertyRecord_phxi(
        p,
        h,
        xi,
        vleFluidPointer,
        der_p,
        der_h,
        der_xi);
  annotation(Inline=false, LateInline=true);
  end der_VLETransportPropertyRecord_phxi;

  function VLEAdditionalProperties_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.SpecificHeatCapacity cp_l
      "Specific heat capacity cp";
    output SI.LinearExpansionCoefficient beta_l
      "Isobaric expansion coefficient";
    output SI.Compressibility kappa_l
      "Isothermal compressibility";
    output SI.SpecificHeatCapacity cp_v
      "Specific heat capacity cp";
    output SI.LinearExpansionCoefficient beta_v
      "Isobaric expansion coefficient";
    output SI.Compressibility kappa_v
      "Isothermal compressibility";
  algorithm
    (cp_l,beta_l,kappa_l,cp_v,beta_v,kappa_v) :=
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.VLEAdditionalProperties_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer)=TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.der_VLEAdditionalProperties_phxi);
  end VLEAdditionalProperties_phxi;

  function der_VLEAdditionalProperties_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    input Real der_p "Pressure";
    input Real der_h "Specific enthalpy";
    input Real[:] der_xi "Mass fractions of the first nc-1 components";
    output Real der_cp_l
      "Specific heat capacity cp";
    output Real der_beta_l
      "Isobaric expansion coefficient";
    output Real der_kappa_l
      "Isothermal compressibility";
    output Real der_cp_v
      "Specific heat capacity cp";
    output Real der_beta_v
      "Isobaric expansion coefficient";
    output Real der_kappa_v "Isothermal compressibility";
  algorithm
    (der_cp_l,der_beta_l,der_kappa_l,der_cp_v,der_beta_v,der_kappa_v) :=
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.der_VLEAdditionalProperties_phxi(
        p,
        h,
        xi,
        vleFluidPointer,
        der_p,
        der_h,
        der_xi);
  annotation(Inline=false, LateInline=true);
  end der_VLEAdditionalProperties_phxi;

  function meanDensity_phAhB
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input Real p;
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input Real h_A;
    input Real h_B;
    input TILMedia.Internals.TILMediaExternalObject
      cache_A "Pointer to external medium mem||y";
    input TILMedia.Internals.TILMediaExternalObject
      cache_B "Pointer to external medium mem||y";
    output Real rhobar;
    output Real drhobar_dp;
    output Real drhobar_dh1;
    output Real drhobar_dh2;
    output Real onePhase;
  algorithm
    (rhobar,drhobar_dp,drhobar_dh1,drhobar_dh2,onePhase) :=
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.meanDensity_phAhB(
        p,
        xi,
        h_A,
        h_B,
        cache_A,
        cache_B);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=cache_A, noDerivative=cache_B)=TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.der_meanDensity_phAhB);
  end meanDensity_phAhB;

  function der_meanDensity_phAhB
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input Real p;
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input Real h_A;
    input Real h_B;
    input TILMedia.Internals.TILMediaExternalObject
      cache_A "Pointer to external medium mem||y";
    input TILMedia.Internals.TILMediaExternalObject
      cache_B "Pointer to external medium mem||y";
    input Real der_p;
    input Real[:] der_xi;
    input Real der_h_A;
    input Real der_h_B;
    output Real der_rhobar;
    output Real der_drhobar_dp;
    output Real der_drhobar_dh1;
    output Real der_drhobar_dh2;
    output Real der_onePhase;
  algorithm
    (der_rhobar,der_drhobar_dp,der_drhobar_dh1,der_drhobar_dh2,der_onePhase) :=
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.der_meanDensity_phAhB(
        p,
        xi,
        h_A,
        h_B,
        cache_A,
        cache_B,
        der_p,
        der_xi,
        der_h_A,
        der_h_B);
  annotation(Inline=false, LateInline=true);
  end der_meanDensity_phAhB;

  function density_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
   input SI.AbsolutePressure p "Pressure";
   input SI.SpecificEnthalpy h "Specific Enthalpy";
   input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
   output SI.Density d "Density";
  algorithm
    d := TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.density_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer)=TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.der_density_phxi);
  end density_phxi;

  function der_density_phxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific Enthalpy";
      input SI.MassFraction[:] xi
    "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
      input Real der_p "Derivative of Pressure";
      input Real der_h "Derivative of Specific Enthalpy";
      input Real[:] der_xi
    "Derivative of Mass fractions of the first nc-1 components";
      output Real der_d "Derivative of Density";
  algorithm
    der_d := TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.der_density_phxi(
        p,
        h,
        xi,
        vleFluidPointer,
        der_p,
        der_h,
        der_xi);
  annotation(Inline=false, LateInline=true);
  end der_density_phxi;

  package ObjectFunctions
    extends TILMedia.Internals.ClassTypes.ModelPackage;

    pure function VLEProperties_phxi
        extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.Density d_l "Density";
      output SI.SpecificEnthalpy h_l "Specific enthalpy";
      output SI.AbsolutePressure p_l "Pressure";
      output SI.SpecificEntropy s_l "Specific entropy";
      output SI.Temperature T_l "Temperature";
      output SI.MassFraction[size(xi,1)] xi_l "Mass fractions";
      output SI.Density d_v "Density";
      output SI.SpecificEnthalpy h_v "Specific enthalpy";
      output SI.AbsolutePressure p_v "Pressure";
      output SI.SpecificEntropy s_v "Specific entropy";
      output SI.Temperature T_v "Temperature";
      output SI.MassFraction[size(xi,1)] xi_v "Mass fractions";
    external "C" TILMedia_VLEFluid_VLEProperties_phxi(
          p,
          h,
          xi, vleFluidPointer,
      d_l, h_l, p_l, s_l, T_l, xi_l,
      d_v, h_v, p_v, s_v, T_v, xi_v)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_VLEProperties_phxi(double, double, double*, void*, double*, double*, double*, double*, double*, double*,
                double*, double*, double*, double*, double*, double*);",  Library="TILMedia190ClaRa");
             annotation(derivative(noDerivative=vleFluidPointer)=TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.der_VLEProperties_phxi);
    end VLEProperties_phxi;

    pure function der_VLEProperties_phxi
        extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      input Real der_p "Pressure";
      input Real der_h "Specific enthalpy";
      input Real[:] der_xi "Mass fractions of the first nc-1 components";
      output Real der_d_l "Density";
      output Real der_h_l "Specific enthalpy";
      output Real der_p_l "Pressure";
      output Real der_s_l "Specific entropy";
      output Real der_T_l "Temperature";
      output Real[size(xi,1)] der_xi_l "Mass fractions";
      output Real der_d_v "Density";
      output Real der_h_v "Specific enthalpy";
      output Real der_p_v "Pressure";
      output Real der_s_v "Specific entropy";
      output Real der_T_v "Temperature";
      output Real[size(xi,1)] der_xi_v "Mass fractions";
    external "C" TILMedia_VLEFluid_der_VLEProperties_phxi(
          p,
          h,
          xi, vleFluidPointer,
          der_p,
          der_h,
          der_xi,
      der_d_l, der_h_l, der_p_l, der_s_l, der_T_l, der_xi_l,
      der_d_v, der_h_v, der_p_v, der_s_v, der_T_v, der_xi_v)
    annotation(Library="TILMedia190ClaRa",__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_der_VLEProperties_phxi(double, double, double*, void*,
                double, double, double*,double*, double*, double*, double*, double*, double*,double*, double*, double*, double*, double*, double*);");
    end der_VLEProperties_phxi;

    pure function transportPropertyRecord_phxi
        extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.PrandtlNumber Pr "Prandtl number";
      output SI.ThermalConductivity lambda "Thermal conductivity";
      output SI.DynamicViscosity eta "Dynamic viscosity";
      output SI.SurfaceTension sigma "Surface tension";
    external "C" TILMedia_VLEFluid_transportProperties_phxi(
          p,
          h,
          xi, vleFluidPointer,
          Pr,
          lambda,
          eta,
          sigma)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_transportProperties_phxi(double, double, double*, void*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    annotation(derivative(noDerivative=vleFluidPointer)=TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.der_transportPropertyRecord_phxi);
    end transportPropertyRecord_phxi;

    pure function der_transportPropertyRecord_phxi
        extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      input Real der_p "Pressure";
      input Real der_h "Specific enthalpy";
      input Real[:] der_xi "Mass fractions of the first nc-1 components";
      output Real der_Pr "Prandtl number";
      output Real der_lambda "Thermal conductivity";
      output Real der_eta "Dynamic viscosity";
      output Real der_sigma "Surface tension";
    external "C" TILMedia_VLEFluid_der_transportProperties_phxi(
          p,
          h,
          xi, vleFluidPointer,
          der_p,
          der_h,
          der_xi,
          der_Pr,
          der_lambda,
          der_eta,
          der_sigma)
    annotation(Library="TILMedia190ClaRa",__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_der_transportProperties_phxi(double, double, double*, void*, double, double, double*, double*, double*, double*, double*);");
    end der_transportPropertyRecord_phxi;

    pure function additionalProperties_phxi
        extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.MassFraction x "Steam mass fraction";
      output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
      output SI.SpecificHeatCapacity cv "Specific heat capacity cv";
      output SI.LinearExpansionCoefficient beta
        "Isobaric expansion coefficient";
      output SI.Compressibility kappa "Isothermal compressibility";
      output TILMedia.Internals.Units.DensityDerPressure drhodp
        "Derivative of density wrt pressure";
      output TILMedia.Internals.Units.DensityDerSpecificEnthalpy drhodh
        "Derivative of density wrt specific enthalpy";
      output Real[size(xi,1)] drhodxi "Derivative of density wrt mass fraction";
      output SI.Velocity a "Speed of sound";
      output Real gamma "Heat capacity ratio";
    external "C" TILMedia_VLEFluid_additionalProperties_phxi(
          p,
          h,
          xi, vleFluidPointer,
          x,
          cp,
          cv,
          beta,
          kappa,
          drhodp,
          drhodh,
          drhodxi,
          a,
          gamma)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_additionalProperties_phxi(double, double, double*, void*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    annotation(derivative(noDerivative=vleFluidPointer)=TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.der_additionalProperties_phxi);
    end additionalProperties_phxi;

    pure function der_additionalProperties_phxi
        extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      input Real der_p "Pressure";
      input Real der_h "Specific enthalpy";
      input Real[:] der_xi "Mass fractions of the first nc-1 components";
      output Real der_x "Steam mass fraction";
      output Real der_cp "Specific heat capacity cp";
      output Real der_cv "Specific heat capacity cv";
      output Real der_beta "Isobaric expansion coefficient";
      output Real der_kappa "Isothermal compressibility";
      output Real der_drhodp "Derivative of density wrt pressure";
      output Real der_drhodh "Derivative of density wrt specific enthalpy";
      output Real[size(xi,1)] der_drhodxi "Derivative of density wrt mass fraction";
      output Real der_a "Speed of sound";
      output Real der_gamma "Heat capacity ratio";
    external "C" TILMedia_VLEFluid_der_additionalProperties_phxi(
          p,
          h,
          xi, vleFluidPointer,
          der_p,
          der_h,
          der_xi,
          der_x,
          der_cp,
          der_cv,
          der_beta,
          der_kappa,
          der_drhodp,
          der_drhodh,
          der_drhodxi,
          der_a,
          der_gamma)
    annotation(Library="TILMedia190ClaRa",__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_der_additionalProperties_phxi(double, double, double*, void*, double, double, double*, double*, double*, double*, double*, double*, double*
        , double*, double*, double*, double*);");
    end der_additionalProperties_phxi;

    pure function VLETransportPropertyRecord_phxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.PrandtlNumber Pr_l "Prandtl number";
      output SI.PrandtlNumber Pr_v "Prandtl number";
      output SI.ThermalConductivity lambda_l "Thermal conductivity";
      output SI.ThermalConductivity lambda_v "Thermal conductivity";
      output SI.DynamicViscosity eta_l "Dynamic viscosity";
      output SI.DynamicViscosity eta_v "Dynamic viscosity";
    external "C" TILMedia_VLEFluid_VLETransportProperties_phxi(
          p,
          h,
          xi,
          vleFluidPointer,
          Pr_l,
          Pr_v,
          lambda_l,
          lambda_v,
          eta_l,
          eta_v)
      annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_VLETransportProperties_phxi(double, double, double*, void*, double*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
      annotation(derivative(noDerivative=vleFluidPointer)=TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.der_VLETransportPropertyRecord_phxi);
    end VLETransportPropertyRecord_phxi;

    pure function der_VLETransportPropertyRecord_phxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      input Real der_p "Pressure";
      input Real der_h "Specific enthalpy";
      input Real[:] der_xi "Mass fractions of the first nc-1 components";
      output Real der_Pr_l "Prandtl number";
      output Real der_Pr_v "Prandtl number";
      output Real der_lambda_l "Thermal conductivity";
      output Real der_lambda_v "Thermal conductivity";
      output Real der_eta_l "Dynamic viscosity";
      output Real der_eta_v "Dynamic viscosity";
    external "C" TILMedia_VLEFluid_der_VLETransportProperties_phxi(
          p,
          h,
          xi,
          vleFluidPointer,
          der_p,
          der_h,
          der_xi,
          der_Pr_l,
          der_Pr_v,
          der_lambda_l,
          der_lambda_v,
          der_eta_l,
          der_eta_v)
      annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_der_VLETransportProperties_phxi(double, double, double*, void*, double, double, double*, double*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end der_VLETransportPropertyRecord_phxi;

    pure function VLEAdditionalProperties_phxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.SpecificHeatCapacity cp_l
        "Specific heat capacity cp";
      output SI.LinearExpansionCoefficient beta_l
        "Isobaric expansion coefficient";
      output SI.Compressibility kappa_l
        "Isothermal compressibility";
      output SI.SpecificHeatCapacity cp_v
        "Specific heat capacity cp";
      output SI.LinearExpansionCoefficient beta_v
        "Isobaric expansion coefficient";
      output SI.Compressibility kappa_v
        "Isothermal compressibility";
    external "C" TILMedia_VLEFluid_VLEAdditionalProperties_phxi(
          p,
          h,
          xi, vleFluidPointer,
      cp_l, beta_l, kappa_l,
      cp_v, beta_v, kappa_v)
      annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_VLEAdditionalProperties_phxi(double, double, double*, void*,double*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
      annotation(derivative(noDerivative=vleFluidPointer)=TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.der_VLEAdditionalProperties_phxi);
    end VLEAdditionalProperties_phxi;

    pure function der_VLEAdditionalProperties_phxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      input Real der_p "Pressure";
      input Real der_h "Specific enthalpy";
      input Real[:] der_xi "Mass fractions of the first nc-1 components";
      output Real der_cp_l
        "Specific heat capacity cp";
      output Real der_beta_l
        "Isobaric expansion coefficient";
      output Real der_kappa_l
        "Isothermal compressibility";
      output Real der_cp_v
        "Specific heat capacity cp";
      output Real der_beta_v
        "Isobaric expansion coefficient";
      output Real der_kappa_v "Isothermal compressibility";
    external "C" TILMedia_VLEFluid_der_VLEAdditionalProperties_phxi(
          p,
          h,
          xi,
          vleFluidPointer,
          der_p,
          der_h,
          der_xi,
          der_cp_l,
          der_beta_l,
          der_kappa_l,
          der_cp_v,
          der_beta_v,
          der_kappa_v)
      annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_der_VLEAdditionalProperties_phxi(double, double, double*, void*, double, double, double*, double*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end der_VLEAdditionalProperties_phxi;

    pure function meanDensity_phAhB
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input Real p;
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input Real h_A;
      input Real h_B;
      input TILMedia.Internals.TILMediaExternalObject
        cache_A "Pointer to external medium mem||y";
      input TILMedia.Internals.TILMediaExternalObject
        cache_B "Pointer to external medium mem||y";
      output Real rhobar;
      output Real drhobar_dp;
      output Real drhobar_dh1;
      output Real drhobar_dh2;
      output Real onePhase;
    external "C" TILMedia_VLEFluid_meanDensity_phAhB(
          p,
          xi,
          h_A,
          h_B,
          cache_A,
          cache_B,
          rhobar,
          drhobar_dp,
          drhobar_dh1,
          drhobar_dh2,
          onePhase)
      annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_meanDensity_phAhB(double, double*, double, double, void*, void*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
      annotation(derivative(noDerivative=cache_A, noDerivative=cache_B)=TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.der_meanDensity_phAhB);
    end meanDensity_phAhB;

    pure function der_meanDensity_phAhB
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input Real p;
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input Real h_A;
      input Real h_B;
      input TILMedia.Internals.TILMediaExternalObject
        cache_A "Pointer to external medium mem||y";
      input TILMedia.Internals.TILMediaExternalObject
        cache_B "Pointer to external medium mem||y";
      input Real der_p;
      input Real[:] der_xi;
      input Real der_h_A;
      input Real der_h_B;
      output Real der_rhobar;
      output Real der_drhobar_dp;
      output Real der_drhobar_dh1;
      output Real der_drhobar_dh2;
      output Real der_onePhase;
    external "C" TILMedia_VLEFluid_der_meanDensity_phAhB(
          p,
          xi,
          h_A,
          h_B,
          cache_A,
          cache_B,
          der_p,
          der_xi,
          der_h_A,
          der_h_B,
          der_rhobar,
          der_drhobar_dp,
          der_drhobar_dh1,
          der_drhobar_dh2,
          der_onePhase)
      annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_der_meanDensity_phAhB(double, double*, double, double, void*, void*, double, double*, double, double, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end der_meanDensity_phAhB;

    pure function density_phxi
     extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
     input SI.AbsolutePressure p "Pressure";
     input SI.SpecificEnthalpy h "Specific Enthalpy";
     input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
     output SI.Density d "Density";
    external "C" d = TILMedia_VLEFluid_Cached_density_phxi(
          p,
          h,
          xi, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluid_Cached_density_phxi(double, double, double*, void*);",Library="TILMedia190ClaRa");
    annotation(derivative(noDerivative=vleFluidPointer)=TILMedia.Internals.VLEFluid.AdditionalObjectFunctionsWithDerivatives.ObjectFunctions.der_density_phxi);
    end density_phxi;

    function der_density_phxi
       extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
       input SI.AbsolutePressure p "Pressure";
       input SI.SpecificEnthalpy h "Specific Enthalpy";
       input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
       input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
       input Real der_p "Derivative of Pressure";
       input Real der_h "Derivative of Specific Enthalpy";
       input Real[:] der_xi
      "Derivative of Mass fractions of the first nc-1 components";
       output Real der_d "Derivative of Density";
    algorithm
      der_d :=+TILMedia.Internals.VLEFluid.ObjectFunctions.densityDerivativeWRTpressure_phxi(
         p,
         h,
         xi,
         vleFluidPointer)*der_p +
      TILMedia.Internals.VLEFluid.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_phxi(
         p,
         h,
         xi,
         vleFluidPointer)*der_h + {
      TILMedia.Internals.VLEFluid.ObjectFunctions.densityDerivativeWRTmassFraction_phxin(
         p,
         h,
         xi,
         i,
         vleFluidPointer) for i in 1:size(xi, 1)}*der_xi;
    end der_density_phxi;

  end ObjectFunctions;
end AdditionalObjectFunctionsWithDerivatives;
