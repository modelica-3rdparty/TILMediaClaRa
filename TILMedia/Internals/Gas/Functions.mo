within TILMedia.Internals.Gas;
package Functions
  extends TILMedia.Internals.ClassTypes.ModelPackage;
  pure function density_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Density d "Density";
  external"C" d = TILMedia_GasFunctions_density_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_density_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end density_phxi;
  pure function specificEntropy_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificEntropy s "Specific entropy";
  external"C" s = TILMedia_GasFunctions_specificEntropy_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificEntropy_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificEntropy_phxi;
  pure function temperature_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Temperature T "Temperature";
  external"C" T = TILMedia_GasFunctions_temperature_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_temperature_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end temperature_phxi;
  pure function specificIsobaricHeatCapacity_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external"C" cp = TILMedia_GasFunctions_specificIsobaricHeatCapacity_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificIsobaricHeatCapacity_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificIsobaricHeatCapacity_phxi;
  pure function specificIsochoricHeatCapacity_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  external"C" cv = TILMedia_GasFunctions_specificIsochoricHeatCapacity_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificIsochoricHeatCapacity_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificIsochoricHeatCapacity_phxi;
  pure function isobaricThermalExpansionCoefficient_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  external"C" beta = TILMedia_GasFunctions_isobaricThermalExpansionCoefficient_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_isobaricThermalExpansionCoefficient_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end isobaricThermalExpansionCoefficient_phxi;
  pure function isothermalCompressibility_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Compressibility kappa "Isothermal compressibility";
  external"C" kappa = TILMedia_GasFunctions_isothermalCompressibility_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_isothermalCompressibility_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end isothermalCompressibility_phxi;
  pure function speedOfSound_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Velocity w "Speed of sound";
  external"C" w = TILMedia_GasFunctions_speedOfSound_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_speedOfSound_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end speedOfSound_phxi;
  pure function densityDerivativeWRTspecificEnthalpy_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external"C" drhodh_pxi = TILMedia_GasFunctions_densityDerivativeWRTspecificEnthalpy_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_densityDerivativeWRTspecificEnthalpy_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end densityDerivativeWRTspecificEnthalpy_phxi;
  pure function densityDerivativeWRTpressure_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  external"C" drhodp_hxi = TILMedia_GasFunctions_densityDerivativeWRTpressure_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_densityDerivativeWRTpressure_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end densityDerivativeWRTpressure_phxi;
  pure function densityDerivativeWRTmassFraction_phxin
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  external"C" drhodxi_ph = TILMedia_GasFunctions_densityDerivativeWRTmassFraction_phxin(
        p,
        h,
        xi,
        compNo, gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_densityDerivativeWRTmassFraction_phxin(double,double,double*,int, const char*, int, int);",
      Library="TILMedia190ClaRa");

  end densityDerivativeWRTmassFraction_phxin;
  pure function partialPressure_phxin
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.PartialPressure p_i "Partial pressure";
  external"C" p_i = TILMedia_GasFunctions_partialPressure_phxin(
        p,
        h,
        xi,
        compNo, gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_partialPressure_phxin(double,double,double*,int, const char*, int, int);",
      Library="TILMedia190ClaRa");

  end partialPressure_phxin;
  pure function gaseousMassFraction_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.MassFraction xi_gas "Mass fraction of gaseous condensing component";
  external"C" xi_gas = TILMedia_GasFunctions_gaseousMassFraction_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_gaseousMassFraction_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end gaseousMassFraction_phxi;
  pure function relativeHumidity_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
  external"C" phi = TILMedia_GasFunctions_relativeHumidity_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_relativeHumidity_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end relativeHumidity_phxi;
  pure function saturationMassFraction_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.MassFraction xi_s "Saturation mass fraction of condensing component";
  external"C" xi_s = TILMedia_GasFunctions_saturationMassFraction_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_saturationMassFraction_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end saturationMassFraction_phxi;
  pure function saturationHumidityRatio_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output Real humRatio_s "Saturation content of condensing component aka saturation humidity ratio";
  external"C" humRatio_s = TILMedia_GasFunctions_saturationHumidityRatio_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_saturationHumidityRatio_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end saturationHumidityRatio_phxi;
  pure function specificEnthalpy1px_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificEnthalpy h1px "Specific enthalpy h related to the mass of components that cannot condense";
  external"C" h1px = TILMedia_GasFunctions_specificEnthalpy1px_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificEnthalpy1px_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificEnthalpy1px_phxi;
  pure function prandtlNumber_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.PrandtlNumber Pr "Prandtl number";
  external"C" Pr = TILMedia_GasFunctions_prandtlNumber_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_prandtlNumber_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end prandtlNumber_phxi;
  pure function thermalConductivity_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external"C" lambda = TILMedia_GasFunctions_thermalConductivity_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_thermalConductivity_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end thermalConductivity_phxi;
  pure function dynamicViscosity_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external"C" eta = TILMedia_GasFunctions_dynamicViscosity_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_dynamicViscosity_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end dynamicViscosity_phxi;
  pure function dewTemperature_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Temperature T_dew "Temperature at dew point";
  external"C" T_dew = TILMedia_GasFunctions_dewTemperature_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_dewTemperature_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end dewTemperature_phxi;
  pure function wetBulbTemperature_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Temperature T_wetBulb "Wet bulb temperature";
  external"C" T_wetBulb = TILMedia_GasFunctions_wetBulbTemperature_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_wetBulbTemperature_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end wetBulbTemperature_phxi;
  pure function iceBulbTemperature_phxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEnthalpy h "Specific enthalpy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Temperature T_iceBulb "Ice bulb temperature";
  external"C" T_iceBulb = TILMedia_GasFunctions_iceBulbTemperature_phxi(
        p,
        h,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_iceBulbTemperature_phxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end iceBulbTemperature_phxi;
  pure function density_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Density d "Density";
  external"C" d = TILMedia_GasFunctions_density_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_density_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end density_psxi;
  pure function specificEnthalpy_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  external"C" h = TILMedia_GasFunctions_specificEnthalpy_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificEnthalpy_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificEnthalpy_psxi;
  pure function temperature_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Temperature T "Temperature";
  external"C" T = TILMedia_GasFunctions_temperature_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_temperature_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end temperature_psxi;
  pure function specificIsobaricHeatCapacity_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external"C" cp = TILMedia_GasFunctions_specificIsobaricHeatCapacity_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificIsobaricHeatCapacity_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificIsobaricHeatCapacity_psxi;
  pure function specificIsochoricHeatCapacity_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  external"C" cv = TILMedia_GasFunctions_specificIsochoricHeatCapacity_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificIsochoricHeatCapacity_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificIsochoricHeatCapacity_psxi;
  pure function isobaricThermalExpansionCoefficient_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  external"C" beta = TILMedia_GasFunctions_isobaricThermalExpansionCoefficient_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_isobaricThermalExpansionCoefficient_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end isobaricThermalExpansionCoefficient_psxi;
  pure function isothermalCompressibility_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Compressibility kappa "Isothermal compressibility";
  external"C" kappa = TILMedia_GasFunctions_isothermalCompressibility_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_isothermalCompressibility_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end isothermalCompressibility_psxi;
  pure function speedOfSound_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Velocity w "Speed of sound";
  external"C" w = TILMedia_GasFunctions_speedOfSound_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_speedOfSound_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end speedOfSound_psxi;
  pure function densityDerivativeWRTspecificEnthalpy_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external"C" drhodh_pxi = TILMedia_GasFunctions_densityDerivativeWRTspecificEnthalpy_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_densityDerivativeWRTspecificEnthalpy_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end densityDerivativeWRTspecificEnthalpy_psxi;
  pure function densityDerivativeWRTpressure_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  external"C" drhodp_hxi = TILMedia_GasFunctions_densityDerivativeWRTpressure_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_densityDerivativeWRTpressure_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end densityDerivativeWRTpressure_psxi;
  pure function densityDerivativeWRTmassFraction_psxin
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  external"C" drhodxi_ph = TILMedia_GasFunctions_densityDerivativeWRTmassFraction_psxin(
        p,
        s,
        xi,
        compNo, gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_densityDerivativeWRTmassFraction_psxin(double,double,double*,int, const char*, int, int);",
      Library="TILMedia190ClaRa");

  end densityDerivativeWRTmassFraction_psxin;
  pure function partialPressure_psxin
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.PartialPressure p_i "Partial pressure";
  external"C" p_i = TILMedia_GasFunctions_partialPressure_psxin(
        p,
        s,
        xi,
        compNo, gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_partialPressure_psxin(double,double,double*,int, const char*, int, int);",
      Library="TILMedia190ClaRa");

  end partialPressure_psxin;
  pure function gaseousMassFraction_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.MassFraction xi_gas "Mass fraction of gaseous condensing component";
  external"C" xi_gas = TILMedia_GasFunctions_gaseousMassFraction_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_gaseousMassFraction_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end gaseousMassFraction_psxi;
  pure function relativeHumidity_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
  external"C" phi = TILMedia_GasFunctions_relativeHumidity_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_relativeHumidity_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end relativeHumidity_psxi;
  pure function saturationMassFraction_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.MassFraction xi_s "Saturation mass fraction of condensing component";
  external"C" xi_s = TILMedia_GasFunctions_saturationMassFraction_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_saturationMassFraction_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end saturationMassFraction_psxi;
  pure function saturationHumidityRatio_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output Real humRatio_s "Saturation content of condensing component aka saturation humidity ratio";
  external"C" humRatio_s = TILMedia_GasFunctions_saturationHumidityRatio_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_saturationHumidityRatio_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end saturationHumidityRatio_psxi;
  pure function specificEnthalpy1px_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificEnthalpy h1px "Specific enthalpy h related to the mass of components that cannot condense";
  external"C" h1px = TILMedia_GasFunctions_specificEnthalpy1px_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificEnthalpy1px_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificEnthalpy1px_psxi;
  pure function prandtlNumber_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.PrandtlNumber Pr "Prandtl number";
  external"C" Pr = TILMedia_GasFunctions_prandtlNumber_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_prandtlNumber_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end prandtlNumber_psxi;
  pure function thermalConductivity_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external"C" lambda = TILMedia_GasFunctions_thermalConductivity_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_thermalConductivity_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end thermalConductivity_psxi;
  pure function dynamicViscosity_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external"C" eta = TILMedia_GasFunctions_dynamicViscosity_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_dynamicViscosity_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end dynamicViscosity_psxi;
  pure function dewTemperature_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Temperature T_dew "Temperature at dew point";
  external"C" T_dew = TILMedia_GasFunctions_dewTemperature_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_dewTemperature_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end dewTemperature_psxi;
  pure function wetBulbTemperature_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Temperature T_wetBulb "Wet bulb temperature";
  external"C" T_wetBulb = TILMedia_GasFunctions_wetBulbTemperature_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_wetBulbTemperature_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end wetBulbTemperature_psxi;
  pure function iceBulbTemperature_psxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.SpecificEntropy s "Specific entropy";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Temperature T_iceBulb "Ice bulb temperature";
  external"C" T_iceBulb = TILMedia_GasFunctions_iceBulbTemperature_psxi(
        p,
        s,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_iceBulbTemperature_psxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end iceBulbTemperature_psxi;
  pure function density_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Density d "Density";
  external"C" d = TILMedia_GasFunctions_density_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_density_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end density_pTxi;
  pure function specificEnthalpy_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificEnthalpy h "Specific enthalpy";
  external"C" h = TILMedia_GasFunctions_specificEnthalpy_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificEnthalpy_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificEnthalpy_pTxi;
  pure function specificEntropy_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificEntropy s "Specific entropy";
  external"C" s = TILMedia_GasFunctions_specificEntropy_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificEntropy_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificEntropy_pTxi;
  pure function specificIsobaricHeatCapacity_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificHeatCapacity cp "Specific isobaric heat capacity cp";
  external"C" cp = TILMedia_GasFunctions_specificIsobaricHeatCapacity_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificIsobaricHeatCapacity_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificIsobaricHeatCapacity_pTxi;
  pure function specificIsochoricHeatCapacity_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificHeatCapacity cv "Specific isochoric heat capacity cv";
  external"C" cv = TILMedia_GasFunctions_specificIsochoricHeatCapacity_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificIsochoricHeatCapacity_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificIsochoricHeatCapacity_pTxi;
  pure function isobaricThermalExpansionCoefficient_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.LinearExpansionCoefficient beta "Isobaric thermal expansion coefficient";
  external"C" beta = TILMedia_GasFunctions_isobaricThermalExpansionCoefficient_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_isobaricThermalExpansionCoefficient_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end isobaricThermalExpansionCoefficient_pTxi;
  pure function isothermalCompressibility_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Compressibility kappa "Isothermal compressibility";
  external"C" kappa = TILMedia_GasFunctions_isothermalCompressibility_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_isothermalCompressibility_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end isothermalCompressibility_pTxi;
  pure function speedOfSound_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Velocity w "Speed of sound";
  external"C" w = TILMedia_GasFunctions_speedOfSound_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_speedOfSound_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end speedOfSound_pTxi;
  pure function densityDerivativeWRTspecificEnthalpy_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.DerDensityByEnthalpy drhodh_pxi "Derivative of density wrt specific enthalpy at constant pressure and mass fraction";
  external"C" drhodh_pxi = TILMedia_GasFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_densityDerivativeWRTspecificEnthalpy_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end densityDerivativeWRTspecificEnthalpy_pTxi;
  pure function densityDerivativeWRTpressure_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.DerDensityByPressure drhodp_hxi "Derivative of density wrt pressure at specific enthalpy and mass fraction";
  external"C" drhodp_hxi = TILMedia_GasFunctions_densityDerivativeWRTpressure_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_densityDerivativeWRTpressure_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end densityDerivativeWRTpressure_pTxi;
  pure function densityDerivativeWRTmassFraction_pTxin
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Density drhodxi_ph "Derivative of density wrt mass fraction of water at constant pressure and specific enthalpy";
  external"C" drhodxi_ph = TILMedia_GasFunctions_densityDerivativeWRTmassFraction_pTxin(
        p,
        T,
        xi,
        compNo, gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_densityDerivativeWRTmassFraction_pTxin(double,double,double*,int, const char*, int, int);",
      Library="TILMedia190ClaRa");

  end densityDerivativeWRTmassFraction_pTxin;
  pure function partialPressure_pTxin
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input Integer compNo "Component ID";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.PartialPressure p_i "Partial pressure";
  external"C" p_i = TILMedia_GasFunctions_partialPressure_pTxin(
        p,
        T,
        xi,
        compNo, gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_partialPressure_pTxin(double,double,double*,int, const char*, int, int);",
      Library="TILMedia190ClaRa");

  end partialPressure_pTxin;
  pure function gaseousMassFraction_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.MassFraction xi_gas "Mass fraction of gaseous condensing component";
  external"C" xi_gas = TILMedia_GasFunctions_gaseousMassFraction_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_gaseousMassFraction_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end gaseousMassFraction_pTxi;
  pure function relativeHumidity_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output TILMedia.Internals.Units.RelativeHumidity phi "Relative humidity";
  external"C" phi = TILMedia_GasFunctions_relativeHumidity_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_relativeHumidity_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end relativeHumidity_pTxi;
  pure function saturationMassFraction_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.MassFraction xi_s "Saturation mass fraction of condensing component";
  external"C" xi_s = TILMedia_GasFunctions_saturationMassFraction_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_saturationMassFraction_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end saturationMassFraction_pTxi;
  pure function saturationHumidityRatio_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output Real humRatio_s "Saturation content of condensing component aka saturation humidity ratio";
  external"C" humRatio_s = TILMedia_GasFunctions_saturationHumidityRatio_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_saturationHumidityRatio_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end saturationHumidityRatio_pTxi;
  pure function specificEnthalpy1px_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificEnthalpy h1px "Specific enthalpy h related to the mass of components that cannot condense";
  external"C" h1px = TILMedia_GasFunctions_specificEnthalpy1px_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificEnthalpy1px_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificEnthalpy1px_pTxi;
  pure function prandtlNumber_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.PrandtlNumber Pr "Prandtl number";
  external"C" Pr = TILMedia_GasFunctions_prandtlNumber_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_prandtlNumber_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end prandtlNumber_pTxi;
  pure function thermalConductivity_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.ThermalConductivity lambda "Thermal conductivity";
  external"C" lambda = TILMedia_GasFunctions_thermalConductivity_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_thermalConductivity_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end thermalConductivity_pTxi;
  pure function dynamicViscosity_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.DynamicViscosity eta "Dynamic viscosity";
  external"C" eta = TILMedia_GasFunctions_dynamicViscosity_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_dynamicViscosity_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end dynamicViscosity_pTxi;
  pure function dewTemperature_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Temperature T_dew "Temperature at dew point";
  external"C" T_dew = TILMedia_GasFunctions_dewTemperature_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_dewTemperature_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end dewTemperature_pTxi;
  pure function wetBulbTemperature_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Temperature T_wetBulb "Wet bulb temperature";
  external"C" T_wetBulb = TILMedia_GasFunctions_wetBulbTemperature_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_wetBulbTemperature_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end wetBulbTemperature_pTxi;
  pure function iceBulbTemperature_pTxi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.AbsolutePressure p "Pressure";
    input SI.Temperature T "Temperature";
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Temperature T_iceBulb "Ice bulb temperature";
  external"C" T_iceBulb = TILMedia_GasFunctions_iceBulbTemperature_pTxi(
        p,
        T,
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_iceBulbTemperature_pTxi(double,double,double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end iceBulbTemperature_pTxi;
  pure function saturationPartialPressure_T
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.Temperature T "Temperature";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.PartialPressure p_s "Saturation partial pressure of condensing component";
  external"C" p_s = TILMedia_GasFunctions_saturationPartialPressure_T(
        T,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_saturationPartialPressure_T(double,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end saturationPartialPressure_T;
  pure function specificEnthalpyOfVaporisation_T
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.Temperature T "Temperature";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificEnthalpy delta_hv "Specific enthalpy of vaporisation of condensing component";
  external"C" delta_hv = TILMedia_GasFunctions_specificEnthalpyOfVaporisation_T(
        T,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificEnthalpyOfVaporisation_T(double,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificEnthalpyOfVaporisation_T;
  pure function specificEnthalpyOfDesublimation_T
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.Temperature T "Temperature";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificEnthalpy delta_hd "Specific enthalpy of desublimation of condensing component";
  external"C" delta_hd = TILMedia_GasFunctions_specificEnthalpyOfDesublimation_T(
        T,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificEnthalpyOfDesublimation_T(double,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificEnthalpyOfDesublimation_T;
  pure function specificEnthalpyOfPureGas_Tn
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.Temperature T "Temperature";
    input Integer compNo "Component ID";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificEnthalpy h_i "Specific enthalpy of theoretical pure component";
  external"C" h_i = TILMedia_GasFunctions_specificEnthalpyOfPureGas_Tn(
        T,
        compNo, gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificEnthalpyOfPureGas_Tn(double,int, const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificEnthalpyOfPureGas_Tn;
  pure function specificIsobaricHeatCapacityOfPureGas_Tn
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.Temperature T "Temperature";
    input Integer compNo "Component ID";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificHeatCapacity cp_i "Specific isobaric heat capacity of theoretical pure component";
  external"C" cp_i = TILMedia_GasFunctions_specificIsobaricHeatCapacityOfPureGas_Tn(
        T,
        compNo, gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificIsobaricHeatCapacityOfPureGas_Tn(double,int, const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificIsobaricHeatCapacityOfPureGas_Tn;
  pure function averageMolarMass_xi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.MolarMass M "Average molar mass";
  external"C" M = TILMedia_GasFunctions_averageMolarMass_xi(
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_averageMolarMass_xi(double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end averageMolarMass_xi;
  pure function humidityRatio_xi
    extends TILMedia.BaseClasses.PartialGasFunction;
    input SI.MassFraction[:] xi "Mass fractions of the first nc-1 components";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output Real humRatio "Content of condensing component aka humidity ratio";
  external"C" humRatio = TILMedia_GasFunctions_humidityRatio_xi(
        xi,
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_humidityRatio_xi(double*,const char*, int, int);",
      Library="TILMedia190ClaRa");

  end humidityRatio_xi;
  pure function molarMass_n
    extends TILMedia.BaseClasses.PartialGasFunction;
    input Integer compNo "Component ID";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.MolarMass M_i "Molar mass of component i";
  external"C" M_i = TILMedia_GasFunctions_molarMass_n(
        compNo, gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_molarMass_n(int, const char*, int, int);",
      Library="TILMedia190ClaRa");

  end molarMass_n;
  pure function specificEnthalpyOfFormation_n
    extends TILMedia.BaseClasses.PartialGasFunction;
    input Integer compNo "Component ID";
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.SpecificEnthalpy hF_i "Specific enthalpy of formation";
  external"C" hF_i = TILMedia_GasFunctions_specificEnthalpyOfFormation_n(
        compNo, gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_specificEnthalpyOfFormation_n(int, const char*, int, int);",
      Library="TILMedia190ClaRa");

  end specificEnthalpyOfFormation_n;
  pure function freezingPoint
    extends TILMedia.BaseClasses.PartialGasFunction;
    input TILMedia.Internals.GasName gasName "Gas name";
    input Integer nc "Number of components";
    input Integer condensingIndex "Index of condensing component";
    output SI.Temperature T_freeze "Freezing point of condensing component";
  external"C" T_freeze = TILMedia_GasFunctions_freezingPoint(
        gasName,
        nc,
        condensingIndex) annotation (
      __iti_dllNoExport=true,
      Include="double TILMedia_GasFunctions_freezingPoint(const char*, int, int);",
      Library="TILMedia190ClaRa");

  end freezingPoint;
end Functions;
