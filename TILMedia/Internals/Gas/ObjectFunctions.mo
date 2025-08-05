within TILMedia.Internals.Gas;
package ObjectFunctions
  "Package for calculation of gas vapor properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.BaseClasses.PartialGasObjectFunctions;
  redeclare replaceable pure function
    extends density_phxi
  external"C" d = TILMedia_GasObjectFunctions_density_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_density_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end density_phxi;
  redeclare replaceable pure function
    extends specificEntropy_phxi
  external"C" s = TILMedia_GasObjectFunctions_specificEntropy_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEntropy_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificEntropy_phxi;
  redeclare replaceable pure function
    extends temperature_phxi
  external"C" T = TILMedia_GasObjectFunctions_temperature_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_temperature_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end temperature_phxi;
  redeclare replaceable pure function
    extends specificIsobaricHeatCapacity_phxi
  external"C" cp = TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificIsobaricHeatCapacity_phxi;
  redeclare replaceable pure function
    extends specificIsochoricHeatCapacity_phxi
  external"C" cv = TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificIsochoricHeatCapacity_phxi;
  redeclare replaceable pure function
    extends isobaricThermalExpansionCoefficient_phxi
  external"C" beta = TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end isobaricThermalExpansionCoefficient_phxi;
  redeclare replaceable pure function
    extends isothermalCompressibility_phxi
  external"C" kappa = TILMedia_GasObjectFunctions_isothermalCompressibility_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isothermalCompressibility_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end isothermalCompressibility_phxi;
  redeclare replaceable pure function
    extends speedOfSound_phxi
  external"C" w = TILMedia_GasObjectFunctions_speedOfSound_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_speedOfSound_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end speedOfSound_phxi;
  redeclare replaceable pure function
    extends densityDerivativeWRTspecificEnthalpy_phxi
  external"C" drhodh_pxi = TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end densityDerivativeWRTspecificEnthalpy_phxi;
  redeclare replaceable pure function
    extends densityDerivativeWRTpressure_phxi
  external"C" drhodp_hxi = TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end densityDerivativeWRTpressure_phxi;
  redeclare replaceable pure function
    extends densityDerivativeWRTmassFraction_phxin
  external"C" drhodxi_ph = TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_phxin(
        p,
        h,
        xi,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_phxin(double,double,double*,int, void*);",
      Library="TILMedia190ClaRa");
  end densityDerivativeWRTmassFraction_phxin;
  redeclare replaceable pure function
    extends partialPressure_phxin
  external"C" p_i = TILMedia_GasObjectFunctions_partialPressure_phxin(
        p,
        h,
        xi,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_partialPressure_phxin(double,double,double*,int, void*);",
      Library="TILMedia190ClaRa");
  end partialPressure_phxin;
  redeclare replaceable pure function
    extends gaseousMassFraction_phxi
  external"C" xi_gas = TILMedia_GasObjectFunctions_gaseousMassFraction_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_gaseousMassFraction_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end gaseousMassFraction_phxi;
  redeclare replaceable pure function
    extends relativeHumidity_phxi
  external"C" phi = TILMedia_GasObjectFunctions_relativeHumidity_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_relativeHumidity_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end relativeHumidity_phxi;
  redeclare replaceable pure function
    extends saturationMassFraction_phxi
  external"C" xi_s = TILMedia_GasObjectFunctions_saturationMassFraction_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationMassFraction_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end saturationMassFraction_phxi;
  redeclare replaceable pure function
    extends saturationHumidityRatio_phxi
  external"C" humRatio_s = TILMedia_GasObjectFunctions_saturationHumidityRatio_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationHumidityRatio_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end saturationHumidityRatio_phxi;
  redeclare replaceable pure function
    extends specificEnthalpy1px_phxi
  external"C" h1px = TILMedia_GasObjectFunctions_specificEnthalpy1px_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpy1px_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificEnthalpy1px_phxi;
  redeclare replaceable pure function
    extends prandtlNumber_phxi
  external"C" Pr = TILMedia_GasObjectFunctions_prandtlNumber_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_prandtlNumber_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end prandtlNumber_phxi;
  redeclare replaceable pure function
    extends thermalConductivity_phxi
  external"C" lambda = TILMedia_GasObjectFunctions_thermalConductivity_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_thermalConductivity_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end thermalConductivity_phxi;
  redeclare replaceable pure function
    extends dynamicViscosity_phxi
  external"C" eta = TILMedia_GasObjectFunctions_dynamicViscosity_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_dynamicViscosity_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end dynamicViscosity_phxi;
  redeclare replaceable pure function
    extends dewTemperature_phxi
  external"C" T_dew = TILMedia_GasObjectFunctions_dewTemperature_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_dewTemperature_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end dewTemperature_phxi;
  redeclare replaceable pure function
    extends wetBulbTemperature_phxi
  external"C" T_wetBulb = TILMedia_GasObjectFunctions_wetBulbTemperature_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_wetBulbTemperature_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end wetBulbTemperature_phxi;
  redeclare replaceable pure function
    extends iceBulbTemperature_phxi
  external"C" T_iceBulb = TILMedia_GasObjectFunctions_iceBulbTemperature_phxi(
        p,
        h,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_iceBulbTemperature_phxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end iceBulbTemperature_phxi;
  redeclare replaceable pure function
    extends density_psxi
  external"C" d = TILMedia_GasObjectFunctions_density_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_density_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end density_psxi;
  redeclare replaceable pure function
    extends specificEnthalpy_psxi
  external"C" h = TILMedia_GasObjectFunctions_specificEnthalpy_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpy_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificEnthalpy_psxi;
  redeclare replaceable pure function
    extends temperature_psxi
  external"C" T = TILMedia_GasObjectFunctions_temperature_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_temperature_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end temperature_psxi;
  redeclare replaceable pure function
    extends specificIsobaricHeatCapacity_psxi
  external"C" cp = TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificIsobaricHeatCapacity_psxi;
  redeclare replaceable pure function
    extends specificIsochoricHeatCapacity_psxi
  external"C" cv = TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificIsochoricHeatCapacity_psxi;
  redeclare replaceable pure function
    extends isobaricThermalExpansionCoefficient_psxi
  external"C" beta = TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end isobaricThermalExpansionCoefficient_psxi;
  redeclare replaceable pure function
    extends isothermalCompressibility_psxi
  external"C" kappa = TILMedia_GasObjectFunctions_isothermalCompressibility_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isothermalCompressibility_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end isothermalCompressibility_psxi;
  redeclare replaceable pure function
    extends speedOfSound_psxi
  external"C" w = TILMedia_GasObjectFunctions_speedOfSound_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_speedOfSound_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end speedOfSound_psxi;
  redeclare replaceable pure function
    extends densityDerivativeWRTspecificEnthalpy_psxi
  external"C" drhodh_pxi = TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end densityDerivativeWRTspecificEnthalpy_psxi;
  redeclare replaceable pure function
    extends densityDerivativeWRTpressure_psxi
  external"C" drhodp_hxi = TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end densityDerivativeWRTpressure_psxi;
  redeclare replaceable pure function
    extends densityDerivativeWRTmassFraction_psxin
  external"C" drhodxi_ph = TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_psxin(
        p,
        s,
        xi,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_psxin(double,double,double*,int, void*);",
      Library="TILMedia190ClaRa");
  end densityDerivativeWRTmassFraction_psxin;
  redeclare replaceable pure function
    extends partialPressure_psxin
  external"C" p_i = TILMedia_GasObjectFunctions_partialPressure_psxin(
        p,
        s,
        xi,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_partialPressure_psxin(double,double,double*,int, void*);",
      Library="TILMedia190ClaRa");
  end partialPressure_psxin;
  redeclare replaceable pure function
    extends gaseousMassFraction_psxi
  external"C" xi_gas = TILMedia_GasObjectFunctions_gaseousMassFraction_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_gaseousMassFraction_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end gaseousMassFraction_psxi;
  redeclare replaceable pure function
    extends relativeHumidity_psxi
  external"C" phi = TILMedia_GasObjectFunctions_relativeHumidity_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_relativeHumidity_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end relativeHumidity_psxi;
  redeclare replaceable pure function
    extends saturationMassFraction_psxi
  external"C" xi_s = TILMedia_GasObjectFunctions_saturationMassFraction_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationMassFraction_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end saturationMassFraction_psxi;
  redeclare replaceable pure function
    extends saturationHumidityRatio_psxi
  external"C" humRatio_s = TILMedia_GasObjectFunctions_saturationHumidityRatio_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationHumidityRatio_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end saturationHumidityRatio_psxi;
  redeclare replaceable pure function
    extends specificEnthalpy1px_psxi
  external"C" h1px = TILMedia_GasObjectFunctions_specificEnthalpy1px_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpy1px_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificEnthalpy1px_psxi;
  redeclare replaceable pure function
    extends prandtlNumber_psxi
  external"C" Pr = TILMedia_GasObjectFunctions_prandtlNumber_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_prandtlNumber_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end prandtlNumber_psxi;
  redeclare replaceable pure function
    extends thermalConductivity_psxi
  external"C" lambda = TILMedia_GasObjectFunctions_thermalConductivity_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_thermalConductivity_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end thermalConductivity_psxi;
  redeclare replaceable pure function
    extends dynamicViscosity_psxi
  external"C" eta = TILMedia_GasObjectFunctions_dynamicViscosity_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_dynamicViscosity_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end dynamicViscosity_psxi;
  redeclare replaceable pure function
    extends dewTemperature_psxi
  external"C" T_dew = TILMedia_GasObjectFunctions_dewTemperature_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_dewTemperature_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end dewTemperature_psxi;
  redeclare replaceable pure function
    extends wetBulbTemperature_psxi
  external"C" T_wetBulb = TILMedia_GasObjectFunctions_wetBulbTemperature_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_wetBulbTemperature_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end wetBulbTemperature_psxi;
  redeclare replaceable pure function
    extends iceBulbTemperature_psxi
  external"C" T_iceBulb = TILMedia_GasObjectFunctions_iceBulbTemperature_psxi(
        p,
        s,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_iceBulbTemperature_psxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end iceBulbTemperature_psxi;
  redeclare replaceable pure function
    extends density_pTxi
  external"C" d = TILMedia_GasObjectFunctions_density_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_density_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end density_pTxi;
  redeclare replaceable pure function
    extends specificEnthalpy_pTxi
  external"C" h = TILMedia_GasObjectFunctions_specificEnthalpy_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpy_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificEnthalpy_pTxi;
  redeclare replaceable pure function
    extends specificEntropy_pTxi
  external"C" s = TILMedia_GasObjectFunctions_specificEntropy_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEntropy_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificEntropy_pTxi;
  redeclare replaceable pure function
    extends specificIsobaricHeatCapacity_pTxi
  external"C" cp = TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsobaricHeatCapacity_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificIsobaricHeatCapacity_pTxi;
  redeclare replaceable pure function
    extends specificIsochoricHeatCapacity_pTxi
  external"C" cv = TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsochoricHeatCapacity_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificIsochoricHeatCapacity_pTxi;
  redeclare replaceable pure function
    extends isobaricThermalExpansionCoefficient_pTxi
  external"C" beta = TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isobaricThermalExpansionCoefficient_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end isobaricThermalExpansionCoefficient_pTxi;
  redeclare replaceable pure function
    extends isothermalCompressibility_pTxi
  external"C" kappa = TILMedia_GasObjectFunctions_isothermalCompressibility_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_isothermalCompressibility_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end isothermalCompressibility_pTxi;
  redeclare replaceable pure function
    extends speedOfSound_pTxi
  external"C" w = TILMedia_GasObjectFunctions_speedOfSound_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_speedOfSound_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end speedOfSound_pTxi;
  redeclare replaceable pure function
    extends densityDerivativeWRTspecificEnthalpy_pTxi
  external"C" drhodh_pxi = TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end densityDerivativeWRTspecificEnthalpy_pTxi;
  redeclare replaceable pure function
    extends densityDerivativeWRTpressure_pTxi
  external"C" drhodp_hxi = TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTpressure_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end densityDerivativeWRTpressure_pTxi;
  redeclare replaceable pure function
    extends densityDerivativeWRTmassFraction_pTxin
  external"C" drhodxi_ph = TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_pTxin(
        p,
        T,
        xi,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_densityDerivativeWRTmassFraction_pTxin(double,double,double*,int, void*);",
      Library="TILMedia190ClaRa");
  end densityDerivativeWRTmassFraction_pTxin;
  redeclare replaceable pure function
    extends partialPressure_pTxin
  external"C" p_i = TILMedia_GasObjectFunctions_partialPressure_pTxin(
        p,
        T,
        xi,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_partialPressure_pTxin(double,double,double*,int, void*);",
      Library="TILMedia190ClaRa");
  end partialPressure_pTxin;
  redeclare replaceable pure function
    extends gaseousMassFraction_pTxi
  external"C" xi_gas = TILMedia_GasObjectFunctions_gaseousMassFraction_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_gaseousMassFraction_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end gaseousMassFraction_pTxi;
  redeclare replaceable pure function
    extends relativeHumidity_pTxi
  external"C" phi = TILMedia_GasObjectFunctions_relativeHumidity_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_relativeHumidity_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end relativeHumidity_pTxi;
  redeclare replaceable pure function
    extends saturationMassFraction_pTxi
  external"C" xi_s = TILMedia_GasObjectFunctions_saturationMassFraction_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationMassFraction_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end saturationMassFraction_pTxi;
  redeclare replaceable pure function
    extends saturationHumidityRatio_pTxi
  external"C" humRatio_s = TILMedia_GasObjectFunctions_saturationHumidityRatio_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationHumidityRatio_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end saturationHumidityRatio_pTxi;
  redeclare replaceable pure function
    extends specificEnthalpy1px_pTxi
  external"C" h1px = TILMedia_GasObjectFunctions_specificEnthalpy1px_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpy1px_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end specificEnthalpy1px_pTxi;
  redeclare replaceable pure function
    extends prandtlNumber_pTxi
  external"C" Pr = TILMedia_GasObjectFunctions_prandtlNumber_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_prandtlNumber_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end prandtlNumber_pTxi;
  redeclare replaceable pure function
    extends thermalConductivity_pTxi
  external"C" lambda = TILMedia_GasObjectFunctions_thermalConductivity_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_thermalConductivity_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end thermalConductivity_pTxi;
  redeclare replaceable pure function
    extends dynamicViscosity_pTxi
  external"C" eta = TILMedia_GasObjectFunctions_dynamicViscosity_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_dynamicViscosity_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end dynamicViscosity_pTxi;
  redeclare replaceable pure function
    extends dewTemperature_pTxi
  external"C" T_dew = TILMedia_GasObjectFunctions_dewTemperature_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_dewTemperature_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end dewTemperature_pTxi;
  redeclare replaceable pure function
    extends wetBulbTemperature_pTxi
  external"C" T_wetBulb = TILMedia_GasObjectFunctions_wetBulbTemperature_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_wetBulbTemperature_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end wetBulbTemperature_pTxi;
  redeclare replaceable pure function
    extends iceBulbTemperature_pTxi
  external"C" T_iceBulb = TILMedia_GasObjectFunctions_iceBulbTemperature_pTxi(
        p,
        T,
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_iceBulbTemperature_pTxi(double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end iceBulbTemperature_pTxi;
  redeclare replaceable pure function
    extends saturationPartialPressure_T
  external"C" p_s = TILMedia_GasObjectFunctions_saturationPartialPressure_T(
        T,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_saturationPartialPressure_T(double,void*);",
      Library="TILMedia190ClaRa");
  end saturationPartialPressure_T;
  redeclare replaceable pure function
    extends specificEnthalpyOfVaporisation_T
  external"C" delta_hv = TILMedia_GasObjectFunctions_specificEnthalpyOfVaporisation_T(
        T,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpyOfVaporisation_T(double,void*);",
      Library="TILMedia190ClaRa");
  end specificEnthalpyOfVaporisation_T;
  redeclare replaceable pure function
    extends specificEnthalpyOfDesublimation_T
  external"C" delta_hd = TILMedia_GasObjectFunctions_specificEnthalpyOfDesublimation_T(
        T,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpyOfDesublimation_T(double,void*);",
      Library="TILMedia190ClaRa");
  end specificEnthalpyOfDesublimation_T;
  redeclare replaceable pure function
    extends specificEnthalpyOfPureGas_Tn
  external"C" h_i = TILMedia_GasObjectFunctions_specificEnthalpyOfPureGas_Tn(
        T,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpyOfPureGas_Tn(double,int, void*);",
      Library="TILMedia190ClaRa");
  end specificEnthalpyOfPureGas_Tn;
  redeclare replaceable pure function
    extends specificIsobaricHeatCapacityOfPureGas_Tn
  external"C" cp_i = TILMedia_GasObjectFunctions_specificIsobaricHeatCapacityOfPureGas_Tn(
        T,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificIsobaricHeatCapacityOfPureGas_Tn(double,int, void*);",
      Library="TILMedia190ClaRa");
  end specificIsobaricHeatCapacityOfPureGas_Tn;
  redeclare replaceable pure function
    extends averageMolarMass_xi
  external"C" M = TILMedia_GasObjectFunctions_averageMolarMass_xi(
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_averageMolarMass_xi(double*,void*);",
      Library="TILMedia190ClaRa");
  end averageMolarMass_xi;
  redeclare replaceable pure function
    extends humidityRatio_xi
  external"C" humRatio = TILMedia_GasObjectFunctions_humidityRatio_xi(
        xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_humidityRatio_xi(double*,void*);",
      Library="TILMedia190ClaRa");
  end humidityRatio_xi;
  redeclare replaceable pure function
    extends molarMass_n
  external"C" M_i = TILMedia_GasObjectFunctions_molarMass_n(
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_molarMass_n(int, void*);",
      Library="TILMedia190ClaRa");
  end molarMass_n;
  redeclare replaceable pure function
    extends specificEnthalpyOfFormation_n
  external"C" hF_i = TILMedia_GasObjectFunctions_specificEnthalpyOfFormation_n(
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_specificEnthalpyOfFormation_n(int, void*);",
      Library="TILMedia190ClaRa");
  end specificEnthalpyOfFormation_n;
  redeclare replaceable pure function
    extends freezingPoint
  external"C" T_freeze = TILMedia_GasObjectFunctions_freezingPoint(
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_freezingPoint(void*);",
      Library="TILMedia190ClaRa");
  end freezingPoint;

    redeclare replaceable pure function
    extends saturationMassFraction_pTxidg
  external"C" xi_s = TILMedia_Gas_saturationMassFraction_pTxidg(
        p,
        T,
        xi_dryGas,
        gasPointer) annotation (
        __iti_dllNoExport=true,
        Include="double TILMedia_Gas_saturationMassFraction_pTxidg(double, double, double*, void*);",
        Library="TILMedia190ClaRa");
  end saturationMassFraction_pTxidg;
      redeclare replaceable pure function
    extends der_density_phxi
  external"C" der_d = TILMedia_GasObjectFunctions_der_density_phxi(
        p,
        h,
        xi,
        der_p,
        der_h,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_density_phxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_density_phxi;
  redeclare replaceable pure function
    extends der_specificEntropy_phxi
  external"C" der_s = TILMedia_GasObjectFunctions_der_specificEntropy_phxi(
        p,
        h,
        xi,
        der_p,
        der_h,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_specificEntropy_phxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_specificEntropy_phxi;
  redeclare replaceable pure function
    extends der_temperature_phxi
  external"C" der_T = TILMedia_GasObjectFunctions_der_temperature_phxi(
        p,
        h,
        xi,
        der_p,
        der_h,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_temperature_phxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_temperature_phxi;
  redeclare replaceable pure function
    extends der_specificIsobaricHeatCapacity_phxi
  external"C" der_cp = TILMedia_GasObjectFunctions_der_specificIsobaricHeatCapacity_phxi(
        p,
        h,
        xi,
        der_p,
        der_h,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_specificIsobaricHeatCapacity_phxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_specificIsobaricHeatCapacity_phxi;
  redeclare replaceable pure function
    extends der_specificIsochoricHeatCapacity_phxi
  external"C" der_cv = TILMedia_GasObjectFunctions_der_specificIsochoricHeatCapacity_phxi(
        p,
        h,
        xi,
        der_p,
        der_h,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_specificIsochoricHeatCapacity_phxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_specificIsochoricHeatCapacity_phxi;
  redeclare replaceable pure function
    extends der_isobaricThermalExpansionCoefficient_phxi
  external"C" der_beta = TILMedia_GasObjectFunctions_der_isobaricThermalExpansionCoefficient_phxi(
        p,
        h,
        xi,
        der_p,
        der_h,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_isobaricThermalExpansionCoefficient_phxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_isobaricThermalExpansionCoefficient_phxi;
  redeclare replaceable pure function
    extends der_isothermalCompressibility_phxi
  external"C" der_kappa = TILMedia_GasObjectFunctions_der_isothermalCompressibility_phxi(
        p,
        h,
        xi,
        der_p,
        der_h,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_isothermalCompressibility_phxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_isothermalCompressibility_phxi;
  redeclare replaceable pure function
    extends der_speedOfSound_phxi
  external"C" der_w = TILMedia_GasObjectFunctions_der_speedOfSound_phxi(
        p,
        h,
        xi,
        der_p,
        der_h,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_speedOfSound_phxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_speedOfSound_phxi;
  redeclare replaceable pure function
    extends der_densityDerivativeWRTspecificEnthalpy_phxi
  external"C" der_drhodh_pxi = TILMedia_GasObjectFunctions_der_densityDerivativeWRTspecificEnthalpy_phxi(
        p,
        h,
        xi,
        der_p,
        der_h,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_densityDerivativeWRTspecificEnthalpy_phxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_densityDerivativeWRTspecificEnthalpy_phxi;
  redeclare replaceable pure function
    extends der_densityDerivativeWRTpressure_phxi
  external"C" der_drhodp_hxi = TILMedia_GasObjectFunctions_der_densityDerivativeWRTpressure_phxi(
        p,
        h,
        xi,
        der_p,
        der_h,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_densityDerivativeWRTpressure_phxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_densityDerivativeWRTpressure_phxi;
  redeclare replaceable pure function
    extends der_densityDerivativeWRTmassFraction_phxin
  external"C" der_drhodxi_ph = TILMedia_GasObjectFunctions_der_densityDerivativeWRTmassFraction_phxin(
        p,
        h,
        xi,
        der_p,
        der_h,
        der_xi,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_densityDerivativeWRTmassFraction_phxin(double,double,double*,double,double,double*,int, void*);",
      Library="TILMedia190ClaRa");
  end der_densityDerivativeWRTmassFraction_phxin;
  redeclare replaceable pure function
    extends der_relativeHumidity_phxi
  external"C" der_phi = TILMedia_GasObjectFunctions_der_relativeHumidity_phxi(
        p,
        h,
        xi,
        der_p,
        der_h,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_relativeHumidity_phxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_relativeHumidity_phxi;
  redeclare replaceable pure function
    extends der_saturationHumidityRatio_phxi
  external"C" der_humRatio_s = TILMedia_GasObjectFunctions_der_saturationHumidityRatio_phxi(
        p,
        h,
        xi,
        der_p,
        der_h,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_saturationHumidityRatio_phxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_saturationHumidityRatio_phxi;
  redeclare replaceable pure function
    extends der_specificEnthalpy_psxi
  external"C" der_h = TILMedia_GasObjectFunctions_der_specificEnthalpy_psxi(
        p,
        s,
        xi,
        der_p,
        der_s,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_specificEnthalpy_psxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_specificEnthalpy_psxi;
  redeclare replaceable pure function
    extends der_temperature_psxi
  external"C" der_T = TILMedia_GasObjectFunctions_der_temperature_psxi(
        p,
        s,
        xi,
        der_p,
        der_s,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_temperature_psxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_temperature_psxi;
  redeclare replaceable pure function
    extends der_specificEntropy_pTxi
  external"C" der_s = TILMedia_GasObjectFunctions_der_specificEntropy_pTxi(
        p,
        T,
        xi,
        der_p,
        der_T,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_specificEntropy_pTxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_specificEntropy_pTxi;
  redeclare replaceable pure function
    extends der_specificIsobaricHeatCapacity_pTxi
  external"C" der_cp = TILMedia_GasObjectFunctions_der_specificIsobaricHeatCapacity_pTxi(
        p,
        T,
        xi,
        der_p,
        der_T,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_specificIsobaricHeatCapacity_pTxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_specificIsobaricHeatCapacity_pTxi;
  redeclare replaceable pure function
    extends der_specificIsochoricHeatCapacity_pTxi
  external"C" der_cv = TILMedia_GasObjectFunctions_der_specificIsochoricHeatCapacity_pTxi(
        p,
        T,
        xi,
        der_p,
        der_T,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_specificIsochoricHeatCapacity_pTxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_specificIsochoricHeatCapacity_pTxi;
  redeclare replaceable pure function
    extends der_isobaricThermalExpansionCoefficient_pTxi
  external"C" der_beta = TILMedia_GasObjectFunctions_der_isobaricThermalExpansionCoefficient_pTxi(
        p,
        T,
        xi,
        der_p,
        der_T,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_isobaricThermalExpansionCoefficient_pTxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_isobaricThermalExpansionCoefficient_pTxi;
  redeclare replaceable pure function
    extends der_isothermalCompressibility_pTxi
  external"C" der_kappa = TILMedia_GasObjectFunctions_der_isothermalCompressibility_pTxi(
        p,
        T,
        xi,
        der_p,
        der_T,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_isothermalCompressibility_pTxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_isothermalCompressibility_pTxi;
  redeclare replaceable pure function
    extends der_speedOfSound_pTxi
  external"C" der_w = TILMedia_GasObjectFunctions_der_speedOfSound_pTxi(
        p,
        T,
        xi,
        der_p,
        der_T,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_speedOfSound_pTxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_speedOfSound_pTxi;
  redeclare replaceable pure function
    extends der_partialPressure_pTxin
  external"C" der_p_i = TILMedia_GasObjectFunctions_der_partialPressure_pTxin(
        p,
        T,
        xi,
        der_p,
        der_T,
        der_xi,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_partialPressure_pTxin(double,double,double*,double,double,double*,int, void*);",
      Library="TILMedia190ClaRa");
  end der_partialPressure_pTxin;
  redeclare replaceable pure function
    extends der_gaseousMassFraction_pTxi
  external"C" der_xi_gas = TILMedia_GasObjectFunctions_der_gaseousMassFraction_pTxi(
        p,
        T,
        xi,
        der_p,
        der_T,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_gaseousMassFraction_pTxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_gaseousMassFraction_pTxi;
  redeclare replaceable pure function
    extends der_relativeHumidity_pTxi
  external"C" der_phi = TILMedia_GasObjectFunctions_der_relativeHumidity_pTxi(
        p,
        T,
        xi,
        der_p,
        der_T,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_relativeHumidity_pTxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_relativeHumidity_pTxi;
  redeclare replaceable pure function
    extends der_saturationHumidityRatio_pTxi
  external"C" der_humRatio_s = TILMedia_GasObjectFunctions_der_saturationHumidityRatio_pTxi(
        p,
        T,
        xi,
        der_p,
        der_T,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_saturationHumidityRatio_pTxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_saturationHumidityRatio_pTxi;
  redeclare replaceable pure function
    extends der_prandtlNumber_pTxi
  external"C" der_Pr = TILMedia_GasObjectFunctions_der_prandtlNumber_pTxi(
        p,
        T,
        xi,
        der_p,
        der_T,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_prandtlNumber_pTxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_prandtlNumber_pTxi;
  redeclare replaceable pure function
    extends der_thermalConductivity_pTxi
  external"C" der_lambda = TILMedia_GasObjectFunctions_der_thermalConductivity_pTxi(
        p,
        T,
        xi,
        der_p,
        der_T,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_thermalConductivity_pTxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_thermalConductivity_pTxi;
  redeclare replaceable pure function
    extends der_dynamicViscosity_pTxi
  external"C" der_eta = TILMedia_GasObjectFunctions_der_dynamicViscosity_pTxi(
        p,
        T,
        xi,
        der_p,
        der_T,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_dynamicViscosity_pTxi(double,double,double*,double,double,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_dynamicViscosity_pTxi;
  redeclare replaceable pure function
    extends der_saturationPartialPressure_T
  external"C" der_p_s = TILMedia_GasObjectFunctions_der_saturationPartialPressure_T(
        T,
        der_T,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_saturationPartialPressure_T(double,double,void*);",
      Library="TILMedia190ClaRa");
  end der_saturationPartialPressure_T;
  redeclare replaceable pure function
    extends der_specificEnthalpyOfVaporisation_T
  external"C" der_delta_hv = TILMedia_GasObjectFunctions_der_specificEnthalpyOfVaporisation_T(
        T,
        der_T,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_specificEnthalpyOfVaporisation_T(double,double,void*);",
      Library="TILMedia190ClaRa");
  end der_specificEnthalpyOfVaporisation_T;
  redeclare replaceable pure function
    extends der_specificEnthalpyOfDesublimation_T
  external"C" der_delta_hd = TILMedia_GasObjectFunctions_der_specificEnthalpyOfDesublimation_T(
        T,
        der_T,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_specificEnthalpyOfDesublimation_T(double,double,void*);",
      Library="TILMedia190ClaRa");
  end der_specificEnthalpyOfDesublimation_T;
  redeclare replaceable pure function
    extends der_specificIsobaricHeatCapacityOfPureGas_Tn
  external"C" der_cp_i = TILMedia_GasObjectFunctions_der_specificIsobaricHeatCapacityOfPureGas_Tn(
        T,
        der_T,
        compNo, gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_specificIsobaricHeatCapacityOfPureGas_Tn(double,double,int, void*);",
      Library="TILMedia190ClaRa");
  end der_specificIsobaricHeatCapacityOfPureGas_Tn;
  redeclare replaceable pure function
    extends der_humidityRatio_xi
  external"C" der_humRatio = TILMedia_GasObjectFunctions_der_humidityRatio_xi(
        xi,
        der_xi,
        gasPointer) annotation(
      __iti_dllNoExport=true,
      Include="double TILMedia_GasObjectFunctions_der_humidityRatio_xi(double*,double*,void*);",
      Library="TILMedia190ClaRa");
  end der_humidityRatio_xi;

    redeclare replaceable pure function
    extends der_saturationMassFraction_pTxidg
  external"C" der_xi_s = TILMedia_Gas_der_saturationMassFraction_pTxidg(
      p,
      T,
      xi_dryGas,
      der_p,
      der_T,
      der_xi_dryGas,
      gasPointer) annotation (
    __iti_dllNoExport=true,
    Include="double TILMedia_Gas_der_saturationMassFraction_pTxidg(double, double, double*, double, double, double*, void*);",
    Library="TILMedia190ClaRa");
  end der_saturationMassFraction_pTxidg;

end ObjectFunctions;
