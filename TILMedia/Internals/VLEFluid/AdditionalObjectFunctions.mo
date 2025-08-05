within TILMedia.Internals.VLEFluid;
package AdditionalObjectFunctions
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  function additionalProperties_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.additionalProperties_dTxi(
        d,
        T,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end additionalProperties_dTxi;

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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.additionalProperties_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end additionalProperties_phxi;

  function additionalProperties_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.additionalProperties_psxi(
        p,
        s,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end additionalProperties_psxi;

  function additionalProperties_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.additionalProperties_pTxi(
        p,
        T,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end additionalProperties_pTxi;

  function criticalDataRecord_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output Real d,h,p,s,T;
  algorithm
    (d,h,p,s,T) := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.criticalDataRecord_xi(xi,
      vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end criticalDataRecord_xi;

  function molarMass_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.MolarMass mm "Molar mass";
  algorithm
    mm := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.molarMass_xi(xi, vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end molarMass_xi;

  function properties_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
    output SI.AbsolutePressure p "Pressure";
    output SI.SpecificEntropy s "Specific entropy";
  algorithm
    (h,p,s) := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.properties_dTxi(
        d,
        T,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end properties_dTxi;

  function properties_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.Density d "Density";
    output SI.SpecificEntropy s "Specific entropy";
    output SI.Temperature T "Temperature";
  algorithm
    (d,s,T) := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.properties_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end properties_phxi;

  function properties_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.Density d "Density";
    output SI.SpecificEnthalpy h "Specific enthalpy";
    output SI.Temperature T "Temperature";
  algorithm
    (d,h,T) := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.properties_psxi(
        p,
        s,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end properties_psxi;

  function properties_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.Density d "Density";
    output SI.SpecificEnthalpy h "Specific enthalpy";
    output SI.SpecificEntropy s "Specific entropy";
  algorithm
    (d,h,s) := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.properties_pTxi(
        p,
        T,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end properties_pTxi;

  function transportPropertyRecord_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.transportPropertyRecord_dTxi(
        d,
        T,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end transportPropertyRecord_dTxi;

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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.transportPropertyRecord_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end transportPropertyRecord_phxi;

  function transportPropertyRecord_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.transportPropertyRecord_psxi(
        p,
        s,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end transportPropertyRecord_psxi;

  function transportPropertyRecord_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.transportPropertyRecord_pTxi(
        p,
        T,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end transportPropertyRecord_pTxi;

  function VLETransportPropertyRecord_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.VLETransportPropertyRecord_dTxi(
        d,
        T,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end VLETransportPropertyRecord_dTxi;

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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.VLETransportPropertyRecord_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end VLETransportPropertyRecord_phxi;

  function VLETransportPropertyRecord_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.VLETransportPropertyRecord_psxi(
        p,
        s,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end VLETransportPropertyRecord_psxi;

  function phase_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output Integer phase;
  algorithm
    phase := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.phase_dTxi(
        d,
        T,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end phase_dTxi;

  function phase_phxi2
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output Integer phase;
  algorithm
    phase := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.phase_phxi2(
        p,
        h,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end phase_phxi2;

  function phase_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output Integer phase;
  algorithm
    phase := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.phase_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end phase_phxi;

  function VLEAdditionalProperties_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.VLEAdditionalProperties_dTxi(
        d,
        T,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end VLEAdditionalProperties_dTxi;

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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.VLEAdditionalProperties_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end VLEAdditionalProperties_phxi;

  function VLEAdditionalProperties_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.VLEAdditionalProperties_psxi(
        p,
        s,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end VLEAdditionalProperties_psxi;

  function VLEAdditionalProperties_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.VLEAdditionalProperties_pTxi(
        p,
        T,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end VLEAdditionalProperties_pTxi;

  function VLEProperties_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Density d "Density";
    input SI.Temperature T "Temperature";
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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.VLEProperties_dTxi(
        d,
        T,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end VLEProperties_dTxi;

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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.VLEProperties_phxi(
        p,
        h,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end VLEProperties_phxi;

  function VLEProperties_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.VLEProperties_psxi(
        p,
        s,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end VLEProperties_psxi;

  function VLEProperties_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.VLEProperties_pTxi(
        p,
        T,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end VLEProperties_pTxi;

  function molarMass_nc
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input Integer nc "Number of components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.MolarMass mm_i[nc] "Molar mass";
  algorithm
    mm_i := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.molarMass_nc(nc, vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end molarMass_nc;

  function triplePressure_n
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input Integer compNo;
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.AbsolutePressure p_triple "Triple pressure";
  algorithm
    p_triple := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.triplePressure_n(compNo,
      vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end triplePressure_n;

  function tripleTemperature_n
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input Integer compNo;
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.Temperature T_triple "Triple temperature";
  algorithm
    T_triple := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.tripleTemperature_n(compNo,
      vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end tripleTemperature_n;

  function cricondenbar_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output Real d,h,p,s,T;
  algorithm
    (d,h,p,s,T) := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.cricondenbar_xi(xi,
      vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end cricondenbar_xi;

  function cricondentherm_xi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output Real d,h,p,s,T;
  algorithm
    (d,h,p,s,T) := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.cricondentherm_xi(xi,
      vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end cricondentherm_xi;

  function properties_pdxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Density d "Density";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.SpecificEnthalpy h "Specific enthalpy";
    output SI.SpecificEntropy s "Specific entropy";
    output SI.Temperature T "Temperature";
  algorithm
    (h,s,T) := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.properties_pdxi(
        p,
        d,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end properties_pdxi;

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
      TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.meanDensity_phAhB(
        p,
        xi,
        h_A,
        h_B,
        cache_A,
        cache_B);
  annotation(Inline=false, LateInline=true);
  end meanDensity_phAhB;

  function properties_Thxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.Density d "Density";
    output SI.AbsolutePressure p "Pressure";
    output SI.SpecificEntropy s "Specific entropy";
  algorithm
    (d,p,s) := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.properties_Thxi(
        T,
        h,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end properties_Thxi;

  function properties_Tsxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input SI.Temperature T "Temperature";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject
      vleFluidPointer;
    output SI.Density d "Density";
    output SI.SpecificEnthalpy h "Specific enthalpy";
    output SI.AbsolutePressure p "Pressure";
  algorithm
    (d,h,p) := TILMedia.Internals.VLEFluid.AdditionalObjectFunctions.ObjectFunctions.properties_Tsxi(
        T,
        s,
        xi,
        vleFluidPointer);
  annotation(Inline=false, LateInline=true);
  end properties_Tsxi;

  package ObjectFunctions
    extends TILMedia.Internals.ClassTypes.ModelPackage;

    pure function additionalProperties_dTxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.Density d "Density";
      input SI.Temperature T "Temperature";
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
    external "C" TILMedia_VLEFluid_additionalProperties_dTxi(
          d,
          T,
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
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_additionalProperties_dTxi(double, double, double*, void*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end additionalProperties_dTxi;

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
    end additionalProperties_phxi;

    pure function additionalProperties_psxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEntropy s "Specific entropy";
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
    external "C" TILMedia_VLEFluid_additionalProperties_psxi(
          p,
          s,
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
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_additionalProperties_psxi(double, double, double*, void*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end additionalProperties_psxi;

    pure function additionalProperties_pTxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
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
    external "C" TILMedia_VLEFluid_additionalProperties_pTxi(
          p,
          T,
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
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_additionalProperties_pTxi(double, double, double*, void*, double*, double*, double*, double*, double*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end additionalProperties_pTxi;

    pure function criticalDataRecord_xi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output Real d,h,p,s,T;
    external "C" TILMedia_VLEFluid_criticalDataRecord_xi(
          xi, vleFluidPointer,
          d,
          h,
          p,
          s,
          T)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_criticalDataRecord_xi(double*, void*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end criticalDataRecord_xi;

    pure function molarMass_xi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.MolarMass mm "Molar mass";
    external "C" mm = TILMedia_VLEFluid_Cached_molarMass_xi(xi)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluid_Cached_molarMass_xi(double*,void*);",Library="TILMedia190ClaRa");
    end molarMass_xi;

    pure function properties_dTxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.Density d "Density";
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.SpecificEnthalpy h "Specific enthalpy";
      output SI.AbsolutePressure p "Pressure";
      output SI.SpecificEntropy s "Specific entropy";
    external "C" TILMedia_VLEFluid_properties_dTxi(
          d,
          T,
          xi, vleFluidPointer,
          h,
          p,
          s)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_properties_dTxi(double, double, double*, void*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end properties_dTxi;

    pure function properties_phxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.Density d "Density";
      output SI.SpecificEntropy s "Specific entropy";
      output SI.Temperature T "Temperature";
    external "C" TILMedia_VLEFluid_properties_phxi(
          p,
          h,
          xi, vleFluidPointer,
          d,
          s,
          T)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_properties_phxi(double, double, double*, void*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end properties_phxi;

    pure function properties_psxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEntropy s "Specific entropy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.Density d "Density";
      output SI.SpecificEnthalpy h "Specific enthalpy";
      output SI.Temperature T "Temperature";
    external "C" TILMedia_VLEFluid_properties_psxi(
          p,
          s,
          xi, vleFluidPointer,
          d,
          h,
          T)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_properties_psxi(double, double, double*, void*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end properties_psxi;

    pure function properties_pTxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.Density d "Density";
      output SI.SpecificEnthalpy h "Specific enthalpy";
      output SI.SpecificEntropy s "Specific entropy";
    external "C" TILMedia_VLEFluid_properties_pTxi(
          p,
          T,
          xi, vleFluidPointer,
          d,
          h,
          s)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_properties_pTxi(double, double, double*, void*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end properties_pTxi;

    pure function transportPropertyRecord_dTxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.Density d "Density";
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.PrandtlNumber Pr "Prandtl number";
      output SI.ThermalConductivity lambda "Thermal conductivity";
      output SI.DynamicViscosity eta "Dynamic viscosity";
      output SI.SurfaceTension sigma "Surface tension";
    external "C" TILMedia_VLEFluid_transportProperties_dTxi(
          d,
          T,
          xi, vleFluidPointer,
          Pr,
          lambda,
          eta,
          sigma)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_transportProperties_dTxi(double, double, double*, void*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end transportPropertyRecord_dTxi;

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
    end transportPropertyRecord_phxi;

    pure function transportPropertyRecord_psxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEntropy s "Specific entropy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.PrandtlNumber Pr "Prandtl number";
      output SI.ThermalConductivity lambda "Thermal conductivity";
      output SI.DynamicViscosity eta "Dynamic viscosity";
      output SI.SurfaceTension sigma "Surface tension";
    external "C" TILMedia_VLEFluid_transportProperties_psxi(
          p,
          s,
          xi, vleFluidPointer,
          Pr,
          lambda,
          eta,
          sigma)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_transportProperties_psxi(double, double, double*, void*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end transportPropertyRecord_psxi;

    pure function transportPropertyRecord_pTxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.PrandtlNumber Pr "Prandtl number";
      output SI.ThermalConductivity lambda "Thermal conductivity";
      output SI.DynamicViscosity eta "Dynamic viscosity";
      output SI.SurfaceTension sigma "Surface tension";
    external "C" TILMedia_VLEFluid_transportProperties_pTxi(
          p,
          T,
          xi, vleFluidPointer,
          Pr,
          lambda,
          eta,
          sigma)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_transportProperties_pTxi(double, double, double*, void*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end transportPropertyRecord_pTxi;

    pure function VLETransportPropertyRecord_dTxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.Density d "Density";
      input SI.Temperature T "Temperature";
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
    external "C" TILMedia_VLEFluid_VLETransportProperties_dTxi(
          d,
          T,
          xi, vleFluidPointer,
          Pr_l,
          Pr_v,
          lambda_l,
          lambda_v,
          eta_l,
          eta_v)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_VLETransportProperties_dTxi(double, double, double*, void*, double*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end VLETransportPropertyRecord_dTxi;

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
          xi, vleFluidPointer,
          Pr_l,
          Pr_v,
          lambda_l,
          lambda_v,
          eta_l,
          eta_v)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_VLETransportProperties_phxi(double, double, double*, void*, double*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end VLETransportPropertyRecord_phxi;

    pure function VLETransportPropertyRecord_psxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEntropy s "Specific entropy";
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
    external "C" TILMedia_VLEFluid_VLETransportProperties_psxi(
          p,
          s,
          xi, vleFluidPointer,
          Pr_l,
          Pr_v,
          lambda_l,
          lambda_v,
          eta_l,
          eta_v)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_VLETransportProperties_psxi(double, double, double*, void*, double*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end VLETransportPropertyRecord_psxi;

    pure function phase_dTxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.Density d "Density";
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output Integer phase;
    external "C" TILMedia_VLEFluid_Cached_phase_dTxi(
        d,
        T,
        xi, vleFluidPointer,
        phase)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_Cached_phase_dTxi(double, double, double*, void*, int*);",Library="TILMedia190ClaRa");
    end phase_dTxi;

    pure function phase_phxi2
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output Integer phase;
    external "C" TILMedia_VLEFluid_Cached_phase_phxi(
          p,
          h,
          xi, vleFluidPointer,
          phase)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_Cached_phase_phxi(double, double, double*, void*, int*)",Library="TILMedia190ClaRa");
    end phase_phxi2;

    function phase_phxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output Integer phase;
    algorithm
      phase := phase_phxi2(
          p,
          h,
          xi,
          vleFluidPointer);
    end phase_phxi;

    pure function VLEAdditionalProperties_dTxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.Density d "Density";
      input SI.Temperature T "Temperature";
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
    external "C" TILMedia_VLEFluid_VLEAdditionalProperties_dTxi(
          d,
          T,
          xi, vleFluidPointer,
      cp_l, beta_l, kappa_l,
      cp_v, beta_v, kappa_v)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_VLEAdditionalProperties_dTxi(double, double, double*, void*,double*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end VLEAdditionalProperties_dTxi;

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
    end VLEAdditionalProperties_phxi;

    pure function VLEAdditionalProperties_psxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEntropy s "Specific entropy";
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
    external "C" TILMedia_VLEFluid_VLEAdditionalProperties_psxi(
          p,
          s,
          xi, vleFluidPointer,
      cp_l, beta_l, kappa_l,
      cp_v, beta_v, kappa_v)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_VLEAdditionalProperties_psxi(double, double, double*, void*,double*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end VLEAdditionalProperties_psxi;

    pure function VLEAdditionalProperties_pTxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
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
    external "C" TILMedia_VLEFluid_VLEAdditionalProperties_pTxi(
          p,
          T,
          xi, vleFluidPointer,
      cp_l, beta_l, kappa_l,
      cp_v, beta_v, kappa_v)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_VLEAdditionalProperties_pTxi(double, double, double*, void*,double*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end VLEAdditionalProperties_pTxi;

    pure function VLEProperties_dTxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.Density d "Density";
      input SI.Temperature T "Temperature";
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
    external "C" TILMedia_VLEFluid_VLEProperties_dTxi(
          d,
          T,
          xi, vleFluidPointer,
      d_l, h_l, p_l, s_l, T_l, xi_l,
      d_v, h_v, p_v, s_v, T_v, xi_v)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_VLEProperties_dTxi(double, double, double*, void*, double*, double*, double*, double*, double*, double*,
                double*, double*, double*, double*, double*, double*);",  Library="TILMedia190ClaRa");
    end VLEProperties_dTxi;

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
    end VLEProperties_phxi;

    pure function VLEProperties_psxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.SpecificEntropy s "Specific entropy";
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
    external "C" TILMedia_VLEFluid_VLEProperties_psxi(
          p,
          s,
          xi, vleFluidPointer,
      d_l, h_l, p_l, s_l, T_l, xi_l,
      d_v, h_v, p_v, s_v, T_v, xi_v)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_VLEProperties_psxi(double, double, double*, void*, double*, double*, double*, double*, double*, double*,
                double*, double*, double*, double*, double*, double*);",  Library="TILMedia190ClaRa");
    end VLEProperties_psxi;

    pure function VLEProperties_pTxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
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
    external "C" TILMedia_VLEFluid_VLEProperties_pTxi(
          p,
          T,
          xi, vleFluidPointer,
      d_l, h_l, p_l, s_l, T_l, xi_l,
      d_v, h_v, p_v, s_v, T_v, xi_v)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_VLEProperties_pTxi(double, double, double*, void*, double*, double*, double*, double*, double*, double*,
                double*, double*, double*, double*, double*, double*);",  Library="TILMedia190ClaRa");
    end VLEProperties_pTxi;

    pure function molarMass_nc
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input Integer nc "Number of components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.MolarMass mm_i[nc] "Molar mass";
    external "C" TILMedia_VLEFluid_Cached_molarMass(vleFluidPointer, mm_i) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_VLEFluid_Cached_molarMass(void*,double*);",
        Library="TILMedia190ClaRa");
    end molarMass_nc;

    pure function triplePressure_n
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input Integer compNo;
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.AbsolutePressure p_triple "Triple pressure";
    external "C" p_triple = TILMedia_VLEFluid_Cached_triplePressure_n(compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluid_Cached_triplePressure_n(int, void*);",Library="TILMedia190ClaRa");
    end triplePressure_n;

    pure function tripleTemperature_n
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input Integer compNo;
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.Temperature T_triple "Triple temperature";
    external "C" T_triple = TILMedia_VLEFluid_Cached_tripleTemperature_n(compNo, vleFluidPointer)
    annotation(__iti_dllNoExport = true,Include="double TILMedia_VLEFluid_Cached_tripleTemperature_n(int, void*);",Library="TILMedia190ClaRa");
    end tripleTemperature_n;

    pure function cricondenbar_xi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output Real d,h,p,s,T;
    external "C" TILMedia_VLEFluid_cricondenbar_xi(
          xi, vleFluidPointer,
          d,
          h,
          p,
          s,
          T)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_cricondenbar_xi(double*, void*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end cricondenbar_xi;

    pure function cricondentherm_xi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output Real d,h,p,s,T;
    external "C" TILMedia_VLEFluid_cricondentherm_xi(
          xi, vleFluidPointer,
          d,
          h,
          p,
          s,
          T)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_cricondentherm_xi(double*, void*, double*, double*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end cricondentherm_xi;

    pure function properties_pdxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Density d "Density";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.SpecificEnthalpy h "Specific enthalpy";
      output SI.SpecificEntropy s "Specific entropy";
      output SI.Temperature T "Temperature";
    external "C" TILMedia_VLEFluid_properties_pdxi(
          p,
          d,
          xi, vleFluidPointer,
          h,
          s,
          T)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_properties_pdxi(double, double, double*, void*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end properties_pdxi;

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
    end meanDensity_phAhB;

    pure function properties_Thxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.Temperature T "Temperature";
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.Density d "Density";
      output SI.AbsolutePressure p "Pressure";
      output SI.SpecificEntropy s "Specific entropy";
    external "C" TILMedia_VLEFluid_properties_Thxi(
          T,
          h,
          xi, vleFluidPointer,
          d,
          p,
          s)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_properties_Thxi(double, double, double*, void*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end properties_Thxi;

    pure function properties_Tsxi
      extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
      input SI.Temperature T "Temperature";
      input SI.SpecificEntropy s "Specific entropy";
      input SI.MassFraction[:] xi
        "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject
        vleFluidPointer;
      output SI.Density d "Density";
      output SI.SpecificEnthalpy h "Specific enthalpy";
      output SI.AbsolutePressure p "Pressure";
    external "C" TILMedia_VLEFluid_properties_Tsxi(
          T,
          s,
          xi, vleFluidPointer,
          d,
          h,
          p)
    annotation(__iti_dllNoExport = true,Include="void TILMedia_VLEFluid_properties_Tsxi(double, double, double*, void*, double*, double*, double*);",Library="TILMedia190ClaRa");
    end properties_Tsxi;

  end ObjectFunctions;
end AdditionalObjectFunctions;
