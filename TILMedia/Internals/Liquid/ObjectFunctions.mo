within TILMedia.Internals.Liquid;
package ObjectFunctions
  "Package for calculation of liquid properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.BaseClasses.PartialLiquidObjectFunctions;
  redeclare replaceable pure function
    extends specificEntropy_phxi
  external"C" s = TILMedia_LiquidObjectFunctions_specificEntropy_phxi(
        p,
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_specificEntropy_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificEntropy_phxi;
  redeclare replaceable pure function
    extends specificEntropy_pTxi
  external"C" s = TILMedia_LiquidObjectFunctions_specificEntropy_pTxi(
        p,
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_specificEntropy_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificEntropy_pTxi;
  redeclare replaceable pure function
    extends density_Txi
  external"C" d = TILMedia_LiquidObjectFunctions_density_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_density_Txi(double,double*,void*);",
      Library="TILMedia190ClaRa");
  end density_Txi;
  redeclare replaceable pure function
    extends specificEnthalpy_Txi
  external"C" h = TILMedia_LiquidObjectFunctions_specificEnthalpy_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_specificEnthalpy_Txi(double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificEnthalpy_Txi;
  redeclare replaceable pure function
    extends specificIsobaricHeatCapacity_Txi
  external"C" cp = TILMedia_LiquidObjectFunctions_specificIsobaricHeatCapacity_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_specificIsobaricHeatCapacity_Txi(double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificIsobaricHeatCapacity_Txi;
  redeclare replaceable pure function
    extends isobaricThermalExpansionCoefficient_Txi
  external"C" beta = TILMedia_LiquidObjectFunctions_isobaricThermalExpansionCoefficient_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_isobaricThermalExpansionCoefficient_Txi(double,double*,void*);",
      Library="TILMedia190ClaRa");
  end isobaricThermalExpansionCoefficient_Txi;
  redeclare replaceable pure function
    extends prandtlNumber_Txi
  external"C" Pr = TILMedia_LiquidObjectFunctions_prandtlNumber_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_prandtlNumber_Txi(double,double*,void*);",
      Library="TILMedia190ClaRa");
  end prandtlNumber_Txi;
  redeclare replaceable pure function
    extends thermalConductivity_Txi
  external"C" lambda = TILMedia_LiquidObjectFunctions_thermalConductivity_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_thermalConductivity_Txi(double,double*,void*);",
      Library="TILMedia190ClaRa");
  end thermalConductivity_Txi;
  redeclare replaceable pure function
    extends dynamicViscosity_Txi
  external"C" eta = TILMedia_LiquidObjectFunctions_dynamicViscosity_Txi(
        T,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_dynamicViscosity_Txi(double,double*,void*);",
      Library="TILMedia190ClaRa");
  end dynamicViscosity_Txi;
  redeclare replaceable pure function
    extends density_hxi
  external"C" d = TILMedia_LiquidObjectFunctions_density_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_density_hxi(double,double*,void*);",
      Library="TILMedia190ClaRa");
  end density_hxi;
  redeclare replaceable pure function
    extends temperature_hxi
  external"C" T = TILMedia_LiquidObjectFunctions_temperature_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_temperature_hxi(double,double*,void*);",
      Library="TILMedia190ClaRa");
  end temperature_hxi;
  redeclare replaceable pure function
    extends specificIsobaricHeatCapacity_hxi
  external"C" cp = TILMedia_LiquidObjectFunctions_specificIsobaricHeatCapacity_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_specificIsobaricHeatCapacity_hxi(double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificIsobaricHeatCapacity_hxi;
  redeclare replaceable pure function
    extends isobaricThermalExpansionCoefficient_hxi
  external"C" beta = TILMedia_LiquidObjectFunctions_isobaricThermalExpansionCoefficient_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_isobaricThermalExpansionCoefficient_hxi(double,double*,void*);",
      Library="TILMedia190ClaRa");
  end isobaricThermalExpansionCoefficient_hxi;
  redeclare replaceable pure function
    extends prandtlNumber_hxi
  external"C" Pr = TILMedia_LiquidObjectFunctions_prandtlNumber_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_prandtlNumber_hxi(double,double*,void*);",
      Library="TILMedia190ClaRa");
  end prandtlNumber_hxi;
  redeclare replaceable pure function
    extends thermalConductivity_hxi
  external"C" lambda = TILMedia_LiquidObjectFunctions_thermalConductivity_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_thermalConductivity_hxi(double,double*,void*);",
      Library="TILMedia190ClaRa");
  end thermalConductivity_hxi;
  redeclare replaceable pure function
    extends dynamicViscosity_hxi
  external"C" eta = TILMedia_LiquidObjectFunctions_dynamicViscosity_hxi(
        h,
        xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_dynamicViscosity_hxi(double,double*,void*);",
      Library="TILMedia190ClaRa");
  end dynamicViscosity_hxi;
  redeclare replaceable pure function
    extends der_density_Txi
  external"C" der_d = TILMedia_LiquidObjectFunctions_der_density_Txi(
        T,
        xi,
        der_T,
        der_xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_der_density_Txi(double,double const*,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_density_Txi;
  redeclare replaceable pure function
    extends der_specificEnthalpy_Txi
  external"C" der_h = TILMedia_LiquidObjectFunctions_der_specificEnthalpy_Txi(
        T,
        xi,
        der_T,
        der_xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_der_specificEnthalpy_Txi(double,double const*,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_specificEnthalpy_Txi;
  redeclare replaceable pure function
    extends der_specificIsobaricHeatCapacity_Txi
  external"C" der_cp = TILMedia_LiquidObjectFunctions_der_specificIsobaricHeatCapacity_Txi(
        T,
        xi,
        der_T,
        der_xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_der_specificIsobaricHeatCapacity_Txi(double,double const*,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_specificIsobaricHeatCapacity_Txi;
  redeclare replaceable pure function
    extends der_isobaricThermalExpansionCoefficient_Txi
  external"C" der_beta = TILMedia_LiquidObjectFunctions_der_isobaricThermalExpansionCoefficient_Txi(
        T,
        xi,
        der_T,
        der_xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_der_isobaricThermalExpansionCoefficient_Txi(double,double const*,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_isobaricThermalExpansionCoefficient_Txi;
  redeclare replaceable pure function
    extends der_prandtlNumber_Txi
  external"C" der_Pr = TILMedia_LiquidObjectFunctions_der_prandtlNumber_Txi(
        T,
        xi,
        der_T,
        der_xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_der_prandtlNumber_Txi(double,double const*,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_prandtlNumber_Txi;
  redeclare replaceable pure function
    extends der_thermalConductivity_Txi
  external"C" der_lambda = TILMedia_LiquidObjectFunctions_der_thermalConductivity_Txi(
        T,
        xi,
        der_T,
        der_xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_der_thermalConductivity_Txi(double,double const*,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_thermalConductivity_Txi;
  redeclare replaceable pure function
    extends der_dynamicViscosity_Txi
  external"C" der_eta = TILMedia_LiquidObjectFunctions_der_dynamicViscosity_Txi(
        T,
        xi,
        der_T,
        der_xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_der_dynamicViscosity_Txi(double,double const*,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_dynamicViscosity_Txi;
  redeclare replaceable pure function
    extends der_density_hxi
  external"C" der_d = TILMedia_LiquidObjectFunctions_der_density_hxi(
        h,
        xi,
        der_h,
        der_xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_der_density_hxi(double,double const*,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_density_hxi;
  redeclare replaceable pure function
    extends der_temperature_hxi
  external"C" der_T = TILMedia_LiquidObjectFunctions_der_temperature_hxi(
        h,
        xi,
        der_h,
        der_xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_der_temperature_hxi(double,double const*,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_temperature_hxi;
  redeclare replaceable pure function
    extends der_specificIsobaricHeatCapacity_hxi
  external"C" der_cp = TILMedia_LiquidObjectFunctions_der_specificIsobaricHeatCapacity_hxi(
        h,
        xi,
        der_h,
        der_xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_der_specificIsobaricHeatCapacity_hxi(double,double const*,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_specificIsobaricHeatCapacity_hxi;
  redeclare replaceable pure function
    extends der_isobaricThermalExpansionCoefficient_hxi
  external"C" der_beta = TILMedia_LiquidObjectFunctions_der_isobaricThermalExpansionCoefficient_hxi(
        h,
        xi,
        der_h,
        der_xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_der_isobaricThermalExpansionCoefficient_hxi(double,double const*,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_isobaricThermalExpansionCoefficient_hxi;
  redeclare replaceable pure function
    extends der_prandtlNumber_hxi
  external"C" der_Pr = TILMedia_LiquidObjectFunctions_der_prandtlNumber_hxi(
        h,
        xi,
        der_h,
        der_xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_der_prandtlNumber_hxi(double,double const*,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_prandtlNumber_hxi;
  redeclare replaceable pure function
    extends der_thermalConductivity_hxi
  external"C" der_lambda = TILMedia_LiquidObjectFunctions_der_thermalConductivity_hxi(
        h,
        xi,
        der_h,
        der_xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_der_thermalConductivity_hxi(double,double const*,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_thermalConductivity_hxi;
  redeclare replaceable pure function
    extends der_dynamicViscosity_hxi
  external"C" der_eta = TILMedia_LiquidObjectFunctions_der_dynamicViscosity_hxi(
        h,
        xi,
        der_h,
        der_xi,
        liquidPointer) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_LiquidObjectFunctions_der_dynamicViscosity_hxi(double,double const*,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_dynamicViscosity_hxi;
end ObjectFunctions;
