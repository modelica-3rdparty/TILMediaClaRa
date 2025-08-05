within TILMedia.Gas;
package ObjectFunctions
  "Package for calculation of gas vapor properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.BaseClasses.PartialGasObjectFunctions;
redeclare replaceable function extends density_phxi
algorithm
  d := TILMedia.Internals.Gas.ObjectFunctions.density_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_density_phxi);
end density_phxi;
redeclare replaceable function extends specificEntropy_phxi
algorithm
  s := TILMedia.Internals.Gas.ObjectFunctions.specificEntropy_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_specificEntropy_phxi,inverse(h=TILMedia.Gas.ObjectFunctions.specificEnthalpy_psxi(p,s,xi,gasPointer)));
end specificEntropy_phxi;
redeclare replaceable function extends temperature_phxi
algorithm
  T := TILMedia.Internals.Gas.ObjectFunctions.temperature_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_temperature_phxi,inverse(h=TILMedia.Gas.ObjectFunctions.specificEnthalpy_pTxi(p,T,xi,gasPointer)));
end temperature_phxi;
redeclare replaceable function extends specificIsobaricHeatCapacity_phxi
algorithm
  cp := TILMedia.Internals.Gas.ObjectFunctions.specificIsobaricHeatCapacity_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_specificIsobaricHeatCapacity_phxi);
end specificIsobaricHeatCapacity_phxi;
redeclare replaceable function extends specificIsochoricHeatCapacity_phxi
algorithm
  cv := TILMedia.Internals.Gas.ObjectFunctions.specificIsochoricHeatCapacity_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_specificIsochoricHeatCapacity_phxi);
end specificIsochoricHeatCapacity_phxi;
redeclare replaceable function extends isobaricThermalExpansionCoefficient_phxi
algorithm
  beta := TILMedia.Internals.Gas.ObjectFunctions.isobaricThermalExpansionCoefficient_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_isobaricThermalExpansionCoefficient_phxi);
end isobaricThermalExpansionCoefficient_phxi;
redeclare replaceable function extends isothermalCompressibility_phxi
algorithm
  kappa := TILMedia.Internals.Gas.ObjectFunctions.isothermalCompressibility_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_isothermalCompressibility_phxi);
end isothermalCompressibility_phxi;
redeclare replaceable function extends speedOfSound_phxi
algorithm
  w := TILMedia.Internals.Gas.ObjectFunctions.speedOfSound_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_speedOfSound_phxi);
end speedOfSound_phxi;
redeclare replaceable function extends densityDerivativeWRTspecificEnthalpy_phxi
algorithm
  drhodh_pxi := TILMedia.Internals.Gas.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_densityDerivativeWRTspecificEnthalpy_phxi);
end densityDerivativeWRTspecificEnthalpy_phxi;
redeclare replaceable function extends densityDerivativeWRTpressure_phxi
algorithm
  drhodp_hxi := TILMedia.Internals.Gas.ObjectFunctions.densityDerivativeWRTpressure_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_densityDerivativeWRTpressure_phxi);
end densityDerivativeWRTpressure_phxi;
redeclare replaceable function extends densityDerivativeWRTmassFraction_phxin
algorithm
  drhodxi_ph := TILMedia.Internals.Gas.ObjectFunctions.densityDerivativeWRTmassFraction_phxin(p,h,xi,compNo, gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_densityDerivativeWRTmassFraction_phxin);
end densityDerivativeWRTmassFraction_phxin;
redeclare replaceable function extends relativeHumidity_phxi
algorithm
  phi := TILMedia.Internals.Gas.ObjectFunctions.relativeHumidity_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_relativeHumidity_phxi);
end relativeHumidity_phxi;
redeclare replaceable function extends saturationHumidityRatio_phxi
algorithm
  humRatio_s := TILMedia.Internals.Gas.ObjectFunctions.saturationHumidityRatio_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_saturationHumidityRatio_phxi);
end saturationHumidityRatio_phxi;
redeclare replaceable function extends specificEnthalpy_psxi
algorithm
  h := TILMedia.Internals.Gas.ObjectFunctions.specificEnthalpy_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_specificEnthalpy_psxi,inverse(s=TILMedia.Gas.ObjectFunctions.specificEntropy_phxi(p,h,xi,gasPointer)));
end specificEnthalpy_psxi;
redeclare replaceable function extends temperature_psxi
algorithm
  T := TILMedia.Internals.Gas.ObjectFunctions.temperature_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_temperature_psxi,inverse(s=TILMedia.Gas.ObjectFunctions.specificEntropy_pTxi(p,T,xi,gasPointer)));
end temperature_psxi;
redeclare replaceable function extends density_pTxi
algorithm
  d := TILMedia.Internals.Gas.ObjectFunctions.density_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_density_pTxi);
end density_pTxi;
redeclare replaceable function extends specificEnthalpy_pTxi
algorithm
  h := TILMedia.Internals.Gas.ObjectFunctions.specificEnthalpy_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_specificEnthalpy_pTxi,inverse(T=TILMedia.Gas.ObjectFunctions.temperature_phxi(p,h,xi,gasPointer)));
end specificEnthalpy_pTxi;
redeclare replaceable function extends specificEntropy_pTxi
algorithm
  s := TILMedia.Internals.Gas.ObjectFunctions.specificEntropy_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_specificEntropy_pTxi,inverse(T=TILMedia.Gas.ObjectFunctions.temperature_psxi(p,s,xi,gasPointer)));
end specificEntropy_pTxi;
redeclare replaceable function extends specificIsobaricHeatCapacity_pTxi
algorithm
  cp := TILMedia.Internals.Gas.ObjectFunctions.specificIsobaricHeatCapacity_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_specificIsobaricHeatCapacity_pTxi);
end specificIsobaricHeatCapacity_pTxi;
redeclare replaceable function extends specificIsochoricHeatCapacity_pTxi
algorithm
  cv := TILMedia.Internals.Gas.ObjectFunctions.specificIsochoricHeatCapacity_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_specificIsochoricHeatCapacity_pTxi);
end specificIsochoricHeatCapacity_pTxi;
redeclare replaceable function extends isobaricThermalExpansionCoefficient_pTxi
algorithm
  beta := TILMedia.Internals.Gas.ObjectFunctions.isobaricThermalExpansionCoefficient_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_isobaricThermalExpansionCoefficient_pTxi);
end isobaricThermalExpansionCoefficient_pTxi;
redeclare replaceable function extends isothermalCompressibility_pTxi
algorithm
  kappa := TILMedia.Internals.Gas.ObjectFunctions.isothermalCompressibility_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_isothermalCompressibility_pTxi);
end isothermalCompressibility_pTxi;
redeclare replaceable function extends speedOfSound_pTxi
algorithm
  w := TILMedia.Internals.Gas.ObjectFunctions.speedOfSound_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_speedOfSound_pTxi);
end speedOfSound_pTxi;
redeclare replaceable function extends partialPressure_pTxin
algorithm
  p_i := TILMedia.Internals.Gas.ObjectFunctions.partialPressure_pTxin(p,T,xi,compNo, gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_partialPressure_pTxin);
end partialPressure_pTxin;
redeclare replaceable function extends gaseousMassFraction_pTxi
algorithm
  xi_gas := TILMedia.Internals.Gas.ObjectFunctions.gaseousMassFraction_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_gaseousMassFraction_pTxi);
end gaseousMassFraction_pTxi;
redeclare replaceable function extends relativeHumidity_pTxi
algorithm
  phi := TILMedia.Internals.Gas.ObjectFunctions.relativeHumidity_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_relativeHumidity_pTxi);
end relativeHumidity_pTxi;
redeclare replaceable function extends saturationHumidityRatio_pTxi
algorithm
  humRatio_s := TILMedia.Internals.Gas.ObjectFunctions.saturationHumidityRatio_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_saturationHumidityRatio_pTxi);
end saturationHumidityRatio_pTxi;
redeclare replaceable function extends prandtlNumber_pTxi
algorithm
  Pr := TILMedia.Internals.Gas.ObjectFunctions.prandtlNumber_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_prandtlNumber_pTxi);
end prandtlNumber_pTxi;
redeclare replaceable function extends thermalConductivity_pTxi
algorithm
  lambda := TILMedia.Internals.Gas.ObjectFunctions.thermalConductivity_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_thermalConductivity_pTxi);
end thermalConductivity_pTxi;
redeclare replaceable function extends dynamicViscosity_pTxi
algorithm
  eta := TILMedia.Internals.Gas.ObjectFunctions.dynamicViscosity_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_dynamicViscosity_pTxi);
end dynamicViscosity_pTxi;
redeclare replaceable function extends saturationPartialPressure_T
algorithm
  p_s := TILMedia.Internals.Gas.ObjectFunctions.saturationPartialPressure_T(T,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_saturationPartialPressure_T);
end saturationPartialPressure_T;
redeclare replaceable function extends specificEnthalpyOfVaporisation_T
algorithm
  delta_hv := TILMedia.Internals.Gas.ObjectFunctions.specificEnthalpyOfVaporisation_T(T,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_specificEnthalpyOfVaporisation_T);
end specificEnthalpyOfVaporisation_T;
redeclare replaceable function extends specificEnthalpyOfDesublimation_T
algorithm
  delta_hd := TILMedia.Internals.Gas.ObjectFunctions.specificEnthalpyOfDesublimation_T(T,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_specificEnthalpyOfDesublimation_T);
end specificEnthalpyOfDesublimation_T;
redeclare replaceable function extends specificEnthalpyOfPureGas_Tn
algorithm
  h_i := TILMedia.Internals.Gas.ObjectFunctions.specificEnthalpyOfPureGas_Tn(T,compNo, gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_specificEnthalpyOfPureGas_Tn);
end specificEnthalpyOfPureGas_Tn;
redeclare replaceable function extends specificIsobaricHeatCapacityOfPureGas_Tn
algorithm
  cp_i := TILMedia.Internals.Gas.ObjectFunctions.specificIsobaricHeatCapacityOfPureGas_Tn(T,compNo, gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_specificIsobaricHeatCapacityOfPureGas_Tn);
end specificIsobaricHeatCapacityOfPureGas_Tn;
redeclare replaceable function extends humidityRatio_xi
algorithm
  humRatio := TILMedia.Internals.Gas.ObjectFunctions.humidityRatio_xi(xi,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_humidityRatio_xi);
end humidityRatio_xi;
redeclare replaceable function extends partialPressure_phxin
algorithm
  p_i := TILMedia.Internals.Gas.ObjectFunctions.partialPressure_phxin(p,h,xi,compNo, gasPointer);
  annotation(Inline=false, LateInline=true);
end partialPressure_phxin;
redeclare replaceable function extends gaseousMassFraction_phxi
algorithm
  xi_gas := TILMedia.Internals.Gas.ObjectFunctions.gaseousMassFraction_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end gaseousMassFraction_phxi;
redeclare replaceable function extends saturationMassFraction_phxi
algorithm
  xi_s := TILMedia.Internals.Gas.ObjectFunctions.saturationMassFraction_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end saturationMassFraction_phxi;
redeclare replaceable function extends specificEnthalpy1px_phxi
algorithm
  h1px := TILMedia.Internals.Gas.ObjectFunctions.specificEnthalpy1px_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end specificEnthalpy1px_phxi;
redeclare replaceable function extends prandtlNumber_phxi
algorithm
  Pr := TILMedia.Internals.Gas.ObjectFunctions.prandtlNumber_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end prandtlNumber_phxi;
redeclare replaceable function extends thermalConductivity_phxi
algorithm
  lambda := TILMedia.Internals.Gas.ObjectFunctions.thermalConductivity_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end thermalConductivity_phxi;
redeclare replaceable function extends dynamicViscosity_phxi
algorithm
  eta := TILMedia.Internals.Gas.ObjectFunctions.dynamicViscosity_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end dynamicViscosity_phxi;
redeclare replaceable function extends dewTemperature_phxi
algorithm
  T_dew := TILMedia.Internals.Gas.ObjectFunctions.dewTemperature_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end dewTemperature_phxi;
redeclare replaceable function extends wetBulbTemperature_phxi
algorithm
  T_wetBulb := TILMedia.Internals.Gas.ObjectFunctions.wetBulbTemperature_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end wetBulbTemperature_phxi;
redeclare replaceable function extends iceBulbTemperature_phxi
algorithm
  T_iceBulb := TILMedia.Internals.Gas.ObjectFunctions.iceBulbTemperature_phxi(p,h,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end iceBulbTemperature_phxi;
redeclare replaceable function extends density_psxi
algorithm
  d := TILMedia.Internals.Gas.ObjectFunctions.density_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end density_psxi;
redeclare replaceable function extends specificIsobaricHeatCapacity_psxi
algorithm
  cp := TILMedia.Internals.Gas.ObjectFunctions.specificIsobaricHeatCapacity_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end specificIsobaricHeatCapacity_psxi;
redeclare replaceable function extends specificIsochoricHeatCapacity_psxi
algorithm
  cv := TILMedia.Internals.Gas.ObjectFunctions.specificIsochoricHeatCapacity_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end specificIsochoricHeatCapacity_psxi;
redeclare replaceable function extends isobaricThermalExpansionCoefficient_psxi
algorithm
  beta := TILMedia.Internals.Gas.ObjectFunctions.isobaricThermalExpansionCoefficient_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end isobaricThermalExpansionCoefficient_psxi;
redeclare replaceable function extends isothermalCompressibility_psxi
algorithm
  kappa := TILMedia.Internals.Gas.ObjectFunctions.isothermalCompressibility_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end isothermalCompressibility_psxi;
redeclare replaceable function extends speedOfSound_psxi
algorithm
  w := TILMedia.Internals.Gas.ObjectFunctions.speedOfSound_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end speedOfSound_psxi;
redeclare replaceable function extends densityDerivativeWRTspecificEnthalpy_psxi
algorithm
  drhodh_pxi := TILMedia.Internals.Gas.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end densityDerivativeWRTspecificEnthalpy_psxi;
redeclare replaceable function extends densityDerivativeWRTpressure_psxi
algorithm
  drhodp_hxi := TILMedia.Internals.Gas.ObjectFunctions.densityDerivativeWRTpressure_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end densityDerivativeWRTpressure_psxi;
redeclare replaceable function extends densityDerivativeWRTmassFraction_psxin
algorithm
  drhodxi_ph := TILMedia.Internals.Gas.ObjectFunctions.densityDerivativeWRTmassFraction_psxin(p,s,xi,compNo, gasPointer);
  annotation(Inline=false, LateInline=true);
end densityDerivativeWRTmassFraction_psxin;
redeclare replaceable function extends partialPressure_psxin
algorithm
  p_i := TILMedia.Internals.Gas.ObjectFunctions.partialPressure_psxin(p,s,xi,compNo, gasPointer);
  annotation(Inline=false, LateInline=true);
end partialPressure_psxin;
redeclare replaceable function extends gaseousMassFraction_psxi
algorithm
  xi_gas := TILMedia.Internals.Gas.ObjectFunctions.gaseousMassFraction_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end gaseousMassFraction_psxi;
redeclare replaceable function extends relativeHumidity_psxi
algorithm
  phi := TILMedia.Internals.Gas.ObjectFunctions.relativeHumidity_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end relativeHumidity_psxi;
redeclare replaceable function extends saturationMassFraction_psxi
algorithm
  xi_s := TILMedia.Internals.Gas.ObjectFunctions.saturationMassFraction_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end saturationMassFraction_psxi;
redeclare replaceable function extends saturationHumidityRatio_psxi
algorithm
  humRatio_s := TILMedia.Internals.Gas.ObjectFunctions.saturationHumidityRatio_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end saturationHumidityRatio_psxi;
redeclare replaceable function extends specificEnthalpy1px_psxi
algorithm
  h1px := TILMedia.Internals.Gas.ObjectFunctions.specificEnthalpy1px_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end specificEnthalpy1px_psxi;
redeclare replaceable function extends prandtlNumber_psxi
algorithm
  Pr := TILMedia.Internals.Gas.ObjectFunctions.prandtlNumber_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end prandtlNumber_psxi;
redeclare replaceable function extends thermalConductivity_psxi
algorithm
  lambda := TILMedia.Internals.Gas.ObjectFunctions.thermalConductivity_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end thermalConductivity_psxi;
redeclare replaceable function extends dynamicViscosity_psxi
algorithm
  eta := TILMedia.Internals.Gas.ObjectFunctions.dynamicViscosity_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end dynamicViscosity_psxi;
redeclare replaceable function extends dewTemperature_psxi
algorithm
  T_dew := TILMedia.Internals.Gas.ObjectFunctions.dewTemperature_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end dewTemperature_psxi;
redeclare replaceable function extends wetBulbTemperature_psxi
algorithm
  T_wetBulb := TILMedia.Internals.Gas.ObjectFunctions.wetBulbTemperature_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end wetBulbTemperature_psxi;
redeclare replaceable function extends iceBulbTemperature_psxi
algorithm
  T_iceBulb := TILMedia.Internals.Gas.ObjectFunctions.iceBulbTemperature_psxi(p,s,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end iceBulbTemperature_psxi;
redeclare replaceable function extends densityDerivativeWRTspecificEnthalpy_pTxi
algorithm
  drhodh_pxi := TILMedia.Internals.Gas.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end densityDerivativeWRTspecificEnthalpy_pTxi;
redeclare replaceable function extends densityDerivativeWRTpressure_pTxi
algorithm
  drhodp_hxi := TILMedia.Internals.Gas.ObjectFunctions.densityDerivativeWRTpressure_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end densityDerivativeWRTpressure_pTxi;
redeclare replaceable function extends densityDerivativeWRTmassFraction_pTxin
algorithm
  drhodxi_ph := TILMedia.Internals.Gas.ObjectFunctions.densityDerivativeWRTmassFraction_pTxin(p,T,xi,compNo, gasPointer);
  annotation(Inline=false, LateInline=true);
end densityDerivativeWRTmassFraction_pTxin;
redeclare replaceable function extends saturationMassFraction_pTxi
algorithm
  xi_s := TILMedia.Internals.Gas.ObjectFunctions.saturationMassFraction_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end saturationMassFraction_pTxi;
redeclare replaceable function extends specificEnthalpy1px_pTxi
algorithm
  h1px := TILMedia.Internals.Gas.ObjectFunctions.specificEnthalpy1px_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end specificEnthalpy1px_pTxi;
redeclare replaceable function extends dewTemperature_pTxi
algorithm
  T_dew := TILMedia.Internals.Gas.ObjectFunctions.dewTemperature_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end dewTemperature_pTxi;
redeclare replaceable function extends wetBulbTemperature_pTxi
algorithm
  T_wetBulb := TILMedia.Internals.Gas.ObjectFunctions.wetBulbTemperature_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end wetBulbTemperature_pTxi;
redeclare replaceable function extends iceBulbTemperature_pTxi
algorithm
  T_iceBulb := TILMedia.Internals.Gas.ObjectFunctions.iceBulbTemperature_pTxi(p,T,xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end iceBulbTemperature_pTxi;
redeclare replaceable function extends averageMolarMass_xi
algorithm
  M := TILMedia.Internals.Gas.ObjectFunctions.averageMolarMass_xi(xi,gasPointer);
  annotation(Inline=false, LateInline=true);
end averageMolarMass_xi;
redeclare replaceable function extends molarMass_n
algorithm
  M_i := TILMedia.Internals.Gas.ObjectFunctions.molarMass_n(compNo, gasPointer);
  annotation(Inline=false, LateInline=true);
end molarMass_n;
redeclare replaceable function extends specificEnthalpyOfFormation_n
algorithm
  hF_i := TILMedia.Internals.Gas.ObjectFunctions.specificEnthalpyOfFormation_n(compNo, gasPointer);
  annotation(Inline=false, LateInline=true);
end specificEnthalpyOfFormation_n;
redeclare replaceable function extends freezingPoint
algorithm
  T_freeze := TILMedia.Internals.Gas.ObjectFunctions.freezingPoint(gasPointer);
  annotation(Inline=false, LateInline=true);
end freezingPoint;

    redeclare replaceable function
    extends saturationMassFraction_pTxidg
  algorithm
    xi_s := TILMedia.Internals.Gas.ObjectFunctions.saturationMassFraction_pTxidg(p,T,xi_dryGas,gasPointer);
  annotation(Inline=false, LateInline=true, derivative(noDerivative=gasPointer) = TILMedia.Gas.ObjectFunctions.der_saturationMassFraction_pTxidg);
end saturationMassFraction_pTxidg;
    redeclare replaceable function extends der_density_phxi
algorithm
  der_d := TILMedia.Internals.Gas.ObjectFunctions.der_density_phxi(p,h,xi,gasPointer,der_p,der_h,der_xi);
  annotation(Inline=false, LateInline=true);
end der_density_phxi;
redeclare replaceable function extends der_specificEntropy_phxi
algorithm
  der_s := TILMedia.Internals.Gas.ObjectFunctions.der_specificEntropy_phxi(p,h,xi,gasPointer,der_p,der_h,der_xi);
  annotation(Inline=false, LateInline=true);
end der_specificEntropy_phxi;
redeclare replaceable function extends der_temperature_phxi
algorithm
  der_T := TILMedia.Internals.Gas.ObjectFunctions.der_temperature_phxi(p,h,xi,gasPointer,der_p,der_h,der_xi);
  annotation(Inline=false, LateInline=true);
end der_temperature_phxi;
redeclare replaceable function extends der_specificIsobaricHeatCapacity_phxi
algorithm
  der_cp := TILMedia.Internals.Gas.ObjectFunctions.der_specificIsobaricHeatCapacity_phxi(p,h,xi,gasPointer,der_p,der_h,der_xi);
  annotation(Inline=false, LateInline=true);
end der_specificIsobaricHeatCapacity_phxi;
redeclare replaceable function extends der_specificIsochoricHeatCapacity_phxi
algorithm
  der_cv := TILMedia.Internals.Gas.ObjectFunctions.der_specificIsochoricHeatCapacity_phxi(p,h,xi,gasPointer,der_p,der_h,der_xi);
  annotation(Inline=false, LateInline=true);
end der_specificIsochoricHeatCapacity_phxi;
redeclare replaceable function extends der_isobaricThermalExpansionCoefficient_phxi
algorithm
  der_beta := TILMedia.Internals.Gas.ObjectFunctions.der_isobaricThermalExpansionCoefficient_phxi(p,h,xi,gasPointer,der_p,der_h,der_xi);
  annotation(Inline=false, LateInline=true);
end der_isobaricThermalExpansionCoefficient_phxi;
redeclare replaceable function extends der_isothermalCompressibility_phxi
algorithm
  der_kappa := TILMedia.Internals.Gas.ObjectFunctions.der_isothermalCompressibility_phxi(p,h,xi,gasPointer,der_p,der_h,der_xi);
  annotation(Inline=false, LateInline=true);
end der_isothermalCompressibility_phxi;
redeclare replaceable function extends der_speedOfSound_phxi
algorithm
  der_w := TILMedia.Internals.Gas.ObjectFunctions.der_speedOfSound_phxi(p,h,xi,gasPointer,der_p,der_h,der_xi);
  annotation(Inline=false, LateInline=true);
end der_speedOfSound_phxi;
redeclare replaceable function extends der_densityDerivativeWRTspecificEnthalpy_phxi
algorithm
  der_drhodh_pxi := TILMedia.Internals.Gas.ObjectFunctions.der_densityDerivativeWRTspecificEnthalpy_phxi(p,h,xi,gasPointer,der_p,der_h,der_xi);
  annotation(Inline=false, LateInline=true);
end der_densityDerivativeWRTspecificEnthalpy_phxi;
redeclare replaceable function extends der_densityDerivativeWRTpressure_phxi
algorithm
  der_drhodp_hxi := TILMedia.Internals.Gas.ObjectFunctions.der_densityDerivativeWRTpressure_phxi(p,h,xi,gasPointer,der_p,der_h,der_xi);
  annotation(Inline=false, LateInline=true);
end der_densityDerivativeWRTpressure_phxi;
redeclare replaceable function extends der_densityDerivativeWRTmassFraction_phxin
algorithm
  der_drhodxi_ph := TILMedia.Internals.Gas.ObjectFunctions.der_densityDerivativeWRTmassFraction_phxin(p,h,xi,compNo, gasPointer,der_p,der_h,der_xi);
  annotation(Inline=false, LateInline=true);
end der_densityDerivativeWRTmassFraction_phxin;
redeclare replaceable function extends der_relativeHumidity_phxi
algorithm
  der_phi := TILMedia.Internals.Gas.ObjectFunctions.der_relativeHumidity_phxi(p,h,xi,gasPointer,der_p,der_h,der_xi);
  annotation(Inline=false, LateInline=true);
end der_relativeHumidity_phxi;
redeclare replaceable function extends der_saturationHumidityRatio_phxi
algorithm
  der_humRatio_s := TILMedia.Internals.Gas.ObjectFunctions.der_saturationHumidityRatio_phxi(p,h,xi,gasPointer,der_p,der_h,der_xi);
  annotation(Inline=false, LateInline=true);
end der_saturationHumidityRatio_phxi;
redeclare replaceable function extends der_specificEnthalpy_psxi
algorithm
  der_h := TILMedia.Internals.Gas.ObjectFunctions.der_specificEnthalpy_psxi(p,s,xi,gasPointer,der_p,der_s,der_xi);
  annotation(Inline=false, LateInline=true);
end der_specificEnthalpy_psxi;
redeclare replaceable function extends der_temperature_psxi
algorithm
  der_T := TILMedia.Internals.Gas.ObjectFunctions.der_temperature_psxi(p,s,xi,gasPointer,der_p,der_s,der_xi);
  annotation(Inline=false, LateInline=true);
end der_temperature_psxi;
redeclare replaceable function extends der_density_pTxi
algorithm
  der_d := der_p*TILMedia.Internals.Gas.AdditionalObjectFunctions.dd_dp_Txi_pTxi(
      p,
      T,
      xi,
      gasPointer) + der_T*TILMedia.Internals.Gas.AdditionalObjectFunctions.dd_dT_pxi_pTxi(
      p,
      T,
      xi,
      gasPointer) + der_xi*{TILMedia.Internals.Gas.AdditionalObjectFunctions.dd_dxi_pT_pTxin(
      p,
      T,
      xi,
      i,
      gasPointer) for i in 0:size(xi, 1) - 1};
  annotation(Inline=false, LateInline=true);
end der_density_pTxi;
redeclare replaceable function extends der_specificEnthalpy_pTxi
algorithm
  der_h := der_p*TILMedia.Internals.Gas.AdditionalObjectFunctions.dhdp_Txi_pTxi(
      p,
      T,
      xi,
      gasPointer) + der_T*TILMedia.Internals.Gas.AdditionalObjectFunctions.dhdT_pxi_pTxi(
      p,
      T,
      xi,
      gasPointer) + der_xi*{TILMedia.Internals.Gas.AdditionalObjectFunctions.dhdxi_pT_pTxin(
      p,
      T,
      xi,
      i,
      gasPointer) for i in 0:size(xi, 1) - 1};
  annotation(Inline=false, LateInline=true);
end der_specificEnthalpy_pTxi;
redeclare replaceable function extends der_specificEntropy_pTxi
algorithm
  der_s := TILMedia.Internals.Gas.ObjectFunctions.der_specificEntropy_pTxi(p,T,xi,gasPointer,der_p,der_T,der_xi);
  annotation(Inline=false, LateInline=true);
end der_specificEntropy_pTxi;
redeclare replaceable function extends der_specificIsobaricHeatCapacity_pTxi
algorithm
  der_cp := TILMedia.Internals.Gas.ObjectFunctions.der_specificIsobaricHeatCapacity_pTxi(p,T,xi,gasPointer,der_p,der_T,der_xi);
  annotation(Inline=false, LateInline=true);
end der_specificIsobaricHeatCapacity_pTxi;
redeclare replaceable function extends der_specificIsochoricHeatCapacity_pTxi
algorithm
  der_cv := TILMedia.Internals.Gas.ObjectFunctions.der_specificIsochoricHeatCapacity_pTxi(p,T,xi,gasPointer,der_p,der_T,der_xi);
  annotation(Inline=false, LateInline=true);
end der_specificIsochoricHeatCapacity_pTxi;
redeclare replaceable function extends der_isobaricThermalExpansionCoefficient_pTxi
algorithm
  der_beta := TILMedia.Internals.Gas.ObjectFunctions.der_isobaricThermalExpansionCoefficient_pTxi(p,T,xi,gasPointer,der_p,der_T,der_xi);
  annotation(Inline=false, LateInline=true);
end der_isobaricThermalExpansionCoefficient_pTxi;
redeclare replaceable function extends der_isothermalCompressibility_pTxi
algorithm
  der_kappa := TILMedia.Internals.Gas.ObjectFunctions.der_isothermalCompressibility_pTxi(p,T,xi,gasPointer,der_p,der_T,der_xi);
  annotation(Inline=false, LateInline=true);
end der_isothermalCompressibility_pTxi;
redeclare replaceable function extends der_speedOfSound_pTxi
algorithm
  der_w := TILMedia.Internals.Gas.ObjectFunctions.der_speedOfSound_pTxi(p,T,xi,gasPointer,der_p,der_T,der_xi);
  annotation(Inline=false, LateInline=true);
end der_speedOfSound_pTxi;
redeclare replaceable function extends der_partialPressure_pTxin
algorithm
  der_p_i := TILMedia.Internals.Gas.ObjectFunctions.der_partialPressure_pTxin(p,T,xi,compNo, gasPointer,der_p,der_T,der_xi);
  annotation(Inline=false, LateInline=true);
end der_partialPressure_pTxin;
redeclare replaceable function extends der_gaseousMassFraction_pTxi
algorithm
  der_xi_gas := TILMedia.Internals.Gas.ObjectFunctions.der_gaseousMassFraction_pTxi(p,T,xi,gasPointer,der_p,der_T,der_xi);
  annotation(Inline=false, LateInline=true);
end der_gaseousMassFraction_pTxi;
redeclare replaceable function extends der_relativeHumidity_pTxi
algorithm
  der_phi := TILMedia.Internals.Gas.ObjectFunctions.der_relativeHumidity_pTxi(p,T,xi,gasPointer,der_p,der_T,der_xi);
  annotation(Inline=false, LateInline=true);
end der_relativeHumidity_pTxi;
redeclare replaceable function extends der_saturationHumidityRatio_pTxi
algorithm
  der_humRatio_s := TILMedia.Internals.Gas.ObjectFunctions.der_saturationHumidityRatio_pTxi(p,T,xi,gasPointer,der_p,der_T,der_xi);
  annotation(Inline=false, LateInline=true);
end der_saturationHumidityRatio_pTxi;
redeclare replaceable function extends der_prandtlNumber_pTxi
algorithm
  der_Pr := TILMedia.Internals.Gas.ObjectFunctions.der_prandtlNumber_pTxi(p,T,xi,gasPointer,der_p,der_T,der_xi);
  annotation(Inline=false, LateInline=true);
end der_prandtlNumber_pTxi;
redeclare replaceable function extends der_thermalConductivity_pTxi
algorithm
  der_lambda := TILMedia.Internals.Gas.ObjectFunctions.der_thermalConductivity_pTxi(p,T,xi,gasPointer,der_p,der_T,der_xi);
  annotation(Inline=false, LateInline=true);
end der_thermalConductivity_pTxi;
redeclare replaceable function extends der_dynamicViscosity_pTxi
algorithm
  der_eta := TILMedia.Internals.Gas.ObjectFunctions.der_dynamicViscosity_pTxi(p,T,xi,gasPointer,der_p,der_T,der_xi);
  annotation(Inline=false, LateInline=true);
end der_dynamicViscosity_pTxi;
redeclare replaceable function extends der_saturationPartialPressure_T
algorithm
  der_p_s := TILMedia.Internals.Gas.ObjectFunctions.der_saturationPartialPressure_T(T,gasPointer,der_T);
  annotation(Inline=false, LateInline=true);
end der_saturationPartialPressure_T;
redeclare replaceable function extends der_specificEnthalpyOfVaporisation_T
algorithm
  der_delta_hv := TILMedia.Internals.Gas.ObjectFunctions.der_specificEnthalpyOfVaporisation_T(T,gasPointer,der_T);
  annotation(Inline=false, LateInline=true);
end der_specificEnthalpyOfVaporisation_T;
redeclare replaceable function extends der_specificEnthalpyOfDesublimation_T
algorithm
  der_delta_hd := TILMedia.Internals.Gas.ObjectFunctions.der_specificEnthalpyOfDesublimation_T(T,gasPointer,der_T);
  annotation(Inline=false, LateInline=true);
end der_specificEnthalpyOfDesublimation_T;
redeclare replaceable function extends der_specificEnthalpyOfPureGas_Tn
algorithm
  der_h_i := der_T*TILMedia.Gas.ObjectFunctions.specificIsobaricHeatCapacityOfPureGas_Tn(
      T,
      compNo,
      gasPointer);
  annotation(Inline=false, LateInline=true);
end der_specificEnthalpyOfPureGas_Tn;
redeclare replaceable function extends der_specificIsobaricHeatCapacityOfPureGas_Tn
algorithm
  der_cp_i := TILMedia.Internals.Gas.ObjectFunctions.der_specificIsobaricHeatCapacityOfPureGas_Tn(T,compNo, gasPointer,der_T);
  annotation(Inline=false, LateInline=true);
end der_specificIsobaricHeatCapacityOfPureGas_Tn;
redeclare replaceable function extends der_humidityRatio_xi
algorithm
  der_humRatio := TILMedia.Internals.Gas.ObjectFunctions.der_humidityRatio_xi(xi,gasPointer,der_xi);
  annotation(Inline=false, LateInline=true);
end der_humidityRatio_xi;

    redeclare replaceable function
    extends der_saturationMassFraction_pTxidg
  algorithm
    der_xi_s := TILMedia.Internals.Gas.ObjectFunctions.der_saturationMassFraction_pTxidg(p,T,xi_dryGas,gasPointer,der_p,der_T,der_xi_dryGas);
  annotation(Inline=false, LateInline=true);
end der_saturationMassFraction_pTxidg;
    
end ObjectFunctions;
