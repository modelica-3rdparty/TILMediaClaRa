within TILMedia.Internals.Liquid;
package AdditionalObjectFunctions
  extends TILMedia.Internals.ClassTypes.ModelPackage;
  function molarMass_xi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject liquidPointer;
    output SI.MolarMass mm "Molar mass";
  algorithm
    mm := TILMedia.Internals.Liquid.AdditionalObjectFunctions.ObjectFunctions.molarMass_xi(xi, liquidPointer);
  annotation(Inline=false, LateInline=true);
  end molarMass_xi;

  function properties_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject liquidPointer;
    output SI.Density d "Density";
    output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
    output SI.LinearExpansionCoefficient beta "Isobaric expansion coefficient";
  algorithm
    (d,cp,beta) := TILMedia.Internals.Liquid.AdditionalObjectFunctions.ObjectFunctions.properties_Txi(T, xi,
      liquidPointer);
  annotation(derivative(noDerivative=liquidPointer) =TILMedia.Internals.Liquid.AdditionalObjectFunctions.der_properties_Txi,     Inline=false, LateInline=true);
  end properties_Txi;

  function der_properties_Txi "derivative function for pure components"
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject liquidPointer;
    input Real der_T "Temperature";
    input Real[:] der_xi "Mass fractions of the first nc-1 components";
    output Real der_d "Density";
    output Real der_cp "Specific heat capacity cp";
    output Real der_beta "Isobaric expansion coefficient";
  algorithm
    (der_d,der_cp,der_beta) := TILMedia.Internals.Liquid.AdditionalObjectFunctions.ObjectFunctions.der_properties_Txi(
        T,
        xi,
        liquidPointer,
        der_T,
        der_xi);
  annotation(Inline=false, LateInline=true);
  end der_properties_Txi;

  function properties_hxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject liquidPointer;
    output SI.Density d "Density";
    output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
    output SI.LinearExpansionCoefficient beta "Isobaric expansion coefficient";
  algorithm
    (d,cp,beta) := TILMedia.Internals.Liquid.AdditionalObjectFunctions.ObjectFunctions.properties_hxi(h, xi,
      liquidPointer);
  annotation(derivative(noDerivative=liquidPointer) =TILMedia.Internals.Liquid.AdditionalObjectFunctions.der_properties_hxi,     Inline=false, LateInline=true);
  end properties_hxi;

  function der_properties_hxi "derivative function for pure components"
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject liquidPointer;
    input Real der_h "Specific enthalpy";
    input Real[:] der_xi "Mass fractions of the first nc-1 components";
    output Real der_d "Density";
    output Real der_cp "Specific heat capacity cp";
    output Real der_beta "Isobaric expansion coefficient";
  algorithm
    (der_d,der_cp,der_beta) := TILMedia.Internals.Liquid.AdditionalObjectFunctions.ObjectFunctions.der_properties_hxi(
        h,
        xi,
        liquidPointer,
        der_h,
        der_xi);
  annotation(Inline=false, LateInline=true);
  end der_properties_hxi;

  function transportPropertyRecord_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject liquidPointer;
    output SI.PrandtlNumber Pr "Prandtl number";
    output SI.ThermalConductivity lambda "Thermal conductivity";
    output SI.DynamicViscosity eta "Dynamic viscosity";
    output SI.SurfaceTension sigma "Surface tension";
  algorithm
    (Pr,lambda,eta,sigma) :=
      TILMedia.Internals.Liquid.AdditionalObjectFunctions.ObjectFunctions.transportPropertyRecord_Txi(T, xi,
      liquidPointer);
  annotation(derivative(noDerivative=liquidPointer) =TILMedia.Internals.Liquid.AdditionalObjectFunctions.der_transportPropertyRecord_Txi,     Inline=false, LateInline=true);
  end transportPropertyRecord_Txi;

  function der_transportPropertyRecord_Txi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject liquidPointer;
    input Real der_T "Temperature";
    input Real[:] der_xi "Mass fractions of the first nc-1 components";
    output Real der_Pr "Prandtl number";
    output Real der_lambda "Thermal conductivity";
    output Real der_eta "Dynamic viscosity";
    output Real der_sigma "Surface tension";
  algorithm
    (der_Pr,der_lambda,der_eta,der_sigma) :=
      TILMedia.Internals.Liquid.AdditionalObjectFunctions.ObjectFunctions.der_transportPropertyRecord_Txi(
        T,
        xi,
        liquidPointer,
        der_T,
        der_xi);
  annotation(Inline=false, LateInline=true);
  end der_transportPropertyRecord_Txi;

  function specificEntropy_pTxi
    extends TILMedia.BaseClasses.PartialLiquidFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.TILMediaExternalObject liquidPointer;
    output SI.SpecificEntropy s "Specific entropy";
  algorithm
    s :=TILMedia.Internals.Liquid.AdditionalObjectFunctions.ObjectFunctions.specificEntropy_pTxi(
        p,
        T,
        xi,
        liquidPointer);
  annotation(Inline=false, LateInline=true);
  end specificEntropy_pTxi;

  package ObjectFunctions
    extends TILMedia.Internals.ClassTypes.ModelPackage;

    pure function molarMass_xi
      extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      output SI.MolarMass mm "Molar mass";
    external"C" mm = TILMedia_Liquid_molarMass_xi(liquidPointer, xi) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_Liquid_molarMass_xi(double*,void*);",
        Library="TILMedia190ClaRa");
    end molarMass_xi;

    pure function properties_Txi
      extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      output SI.Density d "Density";
      output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
      output SI.LinearExpansionCoefficient beta "Isobaric expansion coefficient";
    external"C" TILMedia_Liquid_properties_Txi(
          T,
          xi,
          liquidPointer,
          d,
          cp,
          beta) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Liquid_properties_Txi(double, double*, void*, double*, double*, double*);",
        Library="TILMedia190ClaRa");
      annotation (derivative(noDerivative=liquidPointer) =TILMedia.Internals.Liquid.AdditionalObjectFunctions.ObjectFunctions.der_properties_Txi);
    end properties_Txi;

    pure function der_properties_Txi "derivative function for pure components"
      extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      input Real der_T "Temperature";
      input Real[:] der_xi "Mass fractions of the first nc-1 components";
      output Real der_d "Density";
      output Real der_cp "Specific heat capacity cp";
      output Real der_beta "Isobaric expansion coefficient";
    external"C" TILMedia_Liquid_der_properties_Txi(
          T,
          xi,
          liquidPointer,
          der_T,
          der_xi,
          der_d,
          der_cp,
          der_beta) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Liquid_der_properties_Txi(double, double*, void*, double, double*, double*, double*, double*);",
        Library="TILMedia190ClaRa");
    end der_properties_Txi;

    pure function properties_hxi
      extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      output SI.Density d "Density";
      output SI.SpecificHeatCapacity cp "Specific heat capacity cp";
      output SI.LinearExpansionCoefficient beta "Isobaric expansion coefficient";
    external"C" TILMedia_Liquid_properties_hxi(
          h,
          xi,
          liquidPointer,
          d,
          cp,
          beta) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Liquid_properties_hxi(double, double*, void*, double*, double*, double*);",
        Library="TILMedia190ClaRa");
      annotation (derivative(noDerivative=liquidPointer) =TILMedia.Internals.Liquid.AdditionalObjectFunctions.ObjectFunctions.der_properties_hxi);
    end properties_hxi;

    pure function der_properties_hxi "derivative function for pure components"
      extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.SpecificEnthalpy h "Specific enthalpy";
      input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      input Real der_h "Specific enthalpy";
      input Real[:] der_xi "Mass fractions of the first nc-1 components";
      output Real der_d "Density";
      output Real der_cp "Specific heat capacity cp";
      output Real der_beta "Isobaric expansion coefficient";
    external"C" TILMedia_Liquid_der_properties_hxi(
          h,
          xi,
          liquidPointer,
          der_h,
          der_xi,
          der_d,
          der_cp,
          der_beta) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Liquid_der_properties_hxi(double, double*, void*, double, double*, double*, double*, double*);",
        Library="TILMedia190ClaRa");
    end der_properties_hxi;

    pure function transportPropertyRecord_Txi
      extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      output SI.PrandtlNumber Pr "Prandtl number";
      output SI.ThermalConductivity lambda "Thermal conductivity";
      output SI.DynamicViscosity eta "Dynamic viscosity";
      output SI.SurfaceTension sigma "Surface tension";
    external"C" TILMedia_Liquid_transportProperties_Txi(
          T,
          xi,
          liquidPointer,
          Pr,
          lambda,
          eta,
          sigma) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Liquid_transportProperties_Txi(double, double*, void*, double*, double*, double*, double*);",
        Library="TILMedia190ClaRa");

      annotation (derivative(noDerivative=liquidPointer) =TILMedia.Internals.Liquid.AdditionalObjectFunctions.ObjectFunctions.der_transportPropertyRecord_Txi);
    end transportPropertyRecord_Txi;

    pure function der_transportPropertyRecord_Txi
      extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      input Real der_T "Temperature";
      input Real[:] der_xi "Mass fractions of the first nc-1 components";
      output Real der_Pr "Prandtl number";
      output Real der_lambda "Thermal conductivity";
      output Real der_eta "Dynamic viscosity";
      output Real der_sigma "Surface tension";
    external"C" TILMedia_Liquid_der_transportProperties_Txi(
          T,
          xi,
          liquidPointer,
          der_T,
          der_xi,
          der_Pr,
          der_lambda,
          der_eta,
          der_sigma) annotation (
        __iti_dllNoExport=true,
        Include="void TILMedia_Liquid_der_transportProperties_Txi(double, double*, void*, double, double*, double*, double*, double*, double*);",
        Library="TILMedia190ClaRa");
    end der_transportPropertyRecord_Txi;

    pure function specificEntropy_pTxi
      extends TILMedia.BaseClasses.PartialLiquidFunction;
      input SI.AbsolutePressure p "Pressure";
      input SI.Temperature T "Temperature";
      input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
      input TILMedia.Internals.TILMediaExternalObject liquidPointer;
      output SI.SpecificEntropy s "Specific entropy";
    external"C" s = TILMedia_Liquid_specificEntropy_pTxi(
          p,
          T,
          xi,
          liquidPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_Liquid_specificEntropy_pTxi(double, double, double*, void*);",
        Library="TILMedia190ClaRa");
    end specificEntropy_pTxi;

  end ObjectFunctions;
end AdditionalObjectFunctions;
