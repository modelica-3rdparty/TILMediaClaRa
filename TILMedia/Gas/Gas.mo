within TILMedia.Gas;
model Gas "Gas vapor model for object and member function based evaluation"
  extends TILMedia.BaseClasses.PartialGas(
    gasPointer=TILMedia.Internals.TILMediaExternalObject(
        "Gas",
        gasType.concatGasName,
        TILMedia.Internals.calcComputeFlags(
          computeTransportProperties,
          false,
          true,
          false,
          false),
        gasType.mixingRatio_propertyCalculation[1:end - 1]/sum(gasType.mixingRatio_propertyCalculation),
        gasType.nc,
        gasType.condensingIndex,
        getInstanceName()),
  redeclare replaceable function d_phxi =
      TILMedia.Gas.ObjectFunctions.density_phxi,
  redeclare replaceable function s_phxi =
      TILMedia.Gas.ObjectFunctions.specificEntropy_phxi,
  redeclare replaceable function T_phxi =
      TILMedia.Gas.ObjectFunctions.temperature_phxi,
  redeclare replaceable function cp_phxi =
      TILMedia.Gas.ObjectFunctions.specificIsobaricHeatCapacity_phxi,
  redeclare replaceable function cv_phxi =
      TILMedia.Gas.ObjectFunctions.specificIsochoricHeatCapacity_phxi,
  redeclare replaceable function beta_phxi =
      TILMedia.Gas.ObjectFunctions.isobaricThermalExpansionCoefficient_phxi,
  redeclare replaceable function kappa_phxi =
      TILMedia.Gas.ObjectFunctions.isothermalCompressibility_phxi,
  redeclare replaceable function w_phxi =
      TILMedia.Gas.ObjectFunctions.speedOfSound_phxi,
  redeclare replaceable function drhodh_pxi_phxi =
      TILMedia.Gas.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_phxi,
  redeclare replaceable function drhodp_hxi_phxi =
      TILMedia.Gas.ObjectFunctions.densityDerivativeWRTpressure_phxi,
  redeclare replaceable function drhodxi_ph_phxin =
      TILMedia.Gas.ObjectFunctions.densityDerivativeWRTmassFraction_phxin,
  redeclare replaceable function p_i_phxin =
      TILMedia.Gas.ObjectFunctions.partialPressure_phxin,
  redeclare replaceable function xi_gas_phxi =
      TILMedia.Gas.ObjectFunctions.gaseousMassFraction_phxi,
  redeclare replaceable function phi_phxi =
      TILMedia.Gas.ObjectFunctions.relativeHumidity_phxi,
  redeclare replaceable function xi_s_phxi =
      TILMedia.Gas.ObjectFunctions.saturationMassFraction_phxi,
  redeclare replaceable function humRatio_s_phxi =
      TILMedia.Gas.ObjectFunctions.saturationHumidityRatio_phxi,
  redeclare replaceable function h1px_phxi =
      TILMedia.Gas.ObjectFunctions.specificEnthalpy1px_phxi,
  redeclare replaceable function Pr_phxi =
      TILMedia.Gas.ObjectFunctions.prandtlNumber_phxi,
  redeclare replaceable function lambda_phxi =
      TILMedia.Gas.ObjectFunctions.thermalConductivity_phxi,
  redeclare replaceable function eta_phxi =
      TILMedia.Gas.ObjectFunctions.dynamicViscosity_phxi,
  redeclare replaceable function T_dew_phxi =
      TILMedia.Gas.ObjectFunctions.dewTemperature_phxi,
  redeclare replaceable function T_wetBulb_phxi =
      TILMedia.Gas.ObjectFunctions.wetBulbTemperature_phxi,
  redeclare replaceable function T_iceBulb_phxi =
      TILMedia.Gas.ObjectFunctions.iceBulbTemperature_phxi,
  redeclare replaceable function d_psxi =
      TILMedia.Gas.ObjectFunctions.density_psxi,
  redeclare replaceable function h_psxi =
      TILMedia.Gas.ObjectFunctions.specificEnthalpy_psxi,
  redeclare replaceable function T_psxi =
      TILMedia.Gas.ObjectFunctions.temperature_psxi,
  redeclare replaceable function cp_psxi =
      TILMedia.Gas.ObjectFunctions.specificIsobaricHeatCapacity_psxi,
  redeclare replaceable function cv_psxi =
      TILMedia.Gas.ObjectFunctions.specificIsochoricHeatCapacity_psxi,
  redeclare replaceable function beta_psxi =
      TILMedia.Gas.ObjectFunctions.isobaricThermalExpansionCoefficient_psxi,
  redeclare replaceable function kappa_psxi =
      TILMedia.Gas.ObjectFunctions.isothermalCompressibility_psxi,
  redeclare replaceable function w_psxi =
      TILMedia.Gas.ObjectFunctions.speedOfSound_psxi,
  redeclare replaceable function drhodh_pxi_psxi =
      TILMedia.Gas.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_psxi,
  redeclare replaceable function drhodp_hxi_psxi =
      TILMedia.Gas.ObjectFunctions.densityDerivativeWRTpressure_psxi,
  redeclare replaceable function drhodxi_ph_psxin =
      TILMedia.Gas.ObjectFunctions.densityDerivativeWRTmassFraction_psxin,
  redeclare replaceable function p_i_psxin =
      TILMedia.Gas.ObjectFunctions.partialPressure_psxin,
  redeclare replaceable function xi_gas_psxi =
      TILMedia.Gas.ObjectFunctions.gaseousMassFraction_psxi,
  redeclare replaceable function phi_psxi =
      TILMedia.Gas.ObjectFunctions.relativeHumidity_psxi,
  redeclare replaceable function xi_s_psxi =
      TILMedia.Gas.ObjectFunctions.saturationMassFraction_psxi,
  redeclare replaceable function humRatio_s_psxi =
      TILMedia.Gas.ObjectFunctions.saturationHumidityRatio_psxi,
  redeclare replaceable function h1px_psxi =
      TILMedia.Gas.ObjectFunctions.specificEnthalpy1px_psxi,
  redeclare replaceable function Pr_psxi =
      TILMedia.Gas.ObjectFunctions.prandtlNumber_psxi,
  redeclare replaceable function lambda_psxi =
      TILMedia.Gas.ObjectFunctions.thermalConductivity_psxi,
  redeclare replaceable function eta_psxi =
      TILMedia.Gas.ObjectFunctions.dynamicViscosity_psxi,
  redeclare replaceable function T_dew_psxi =
      TILMedia.Gas.ObjectFunctions.dewTemperature_psxi,
  redeclare replaceable function T_wetBulb_psxi =
      TILMedia.Gas.ObjectFunctions.wetBulbTemperature_psxi,
  redeclare replaceable function T_iceBulb_psxi =
      TILMedia.Gas.ObjectFunctions.iceBulbTemperature_psxi,
  redeclare replaceable function d_pTxi =
      TILMedia.Gas.ObjectFunctions.density_pTxi,
  redeclare replaceable function h_pTxi =
      TILMedia.Gas.ObjectFunctions.specificEnthalpy_pTxi,
  redeclare replaceable function s_pTxi =
      TILMedia.Gas.ObjectFunctions.specificEntropy_pTxi,
  redeclare replaceable function cp_pTxi =
      TILMedia.Gas.ObjectFunctions.specificIsobaricHeatCapacity_pTxi,
  redeclare replaceable function cv_pTxi =
      TILMedia.Gas.ObjectFunctions.specificIsochoricHeatCapacity_pTxi,
  redeclare replaceable function beta_pTxi =
      TILMedia.Gas.ObjectFunctions.isobaricThermalExpansionCoefficient_pTxi,
  redeclare replaceable function kappa_pTxi =
      TILMedia.Gas.ObjectFunctions.isothermalCompressibility_pTxi,
  redeclare replaceable function w_pTxi =
      TILMedia.Gas.ObjectFunctions.speedOfSound_pTxi,
  redeclare replaceable function drhodh_pxi_pTxi =
      TILMedia.Gas.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_pTxi,
  redeclare replaceable function drhodp_hxi_pTxi =
      TILMedia.Gas.ObjectFunctions.densityDerivativeWRTpressure_pTxi,
  redeclare replaceable function drhodxi_ph_pTxin =
      TILMedia.Gas.ObjectFunctions.densityDerivativeWRTmassFraction_pTxin,
  redeclare replaceable function p_i_pTxin =
      TILMedia.Gas.ObjectFunctions.partialPressure_pTxin,
  redeclare replaceable function xi_gas_pTxi =
      TILMedia.Gas.ObjectFunctions.gaseousMassFraction_pTxi,
  redeclare replaceable function phi_pTxi =
      TILMedia.Gas.ObjectFunctions.relativeHumidity_pTxi,
  redeclare replaceable function xi_s_pTxi =
      TILMedia.Gas.ObjectFunctions.saturationMassFraction_pTxi,
  redeclare replaceable function humRatio_s_pTxi =
      TILMedia.Gas.ObjectFunctions.saturationHumidityRatio_pTxi,
  redeclare replaceable function h1px_pTxi =
      TILMedia.Gas.ObjectFunctions.specificEnthalpy1px_pTxi,
  redeclare replaceable function Pr_pTxi =
      TILMedia.Gas.ObjectFunctions.prandtlNumber_pTxi,
  redeclare replaceable function lambda_pTxi =
      TILMedia.Gas.ObjectFunctions.thermalConductivity_pTxi,
  redeclare replaceable function eta_pTxi =
      TILMedia.Gas.ObjectFunctions.dynamicViscosity_pTxi,
  redeclare replaceable function T_dew_pTxi =
      TILMedia.Gas.ObjectFunctions.dewTemperature_pTxi,
  redeclare replaceable function T_wetBulb_pTxi =
      TILMedia.Gas.ObjectFunctions.wetBulbTemperature_pTxi,
  redeclare replaceable function T_iceBulb_pTxi =
      TILMedia.Gas.ObjectFunctions.iceBulbTemperature_pTxi,
  redeclare replaceable function p_s_T =
      TILMedia.Gas.ObjectFunctions.saturationPartialPressure_T,
  redeclare replaceable function delta_hv_T =
      TILMedia.Gas.ObjectFunctions.specificEnthalpyOfVaporisation_T,
  redeclare replaceable function delta_hd_T =
      TILMedia.Gas.ObjectFunctions.specificEnthalpyOfDesublimation_T,
  redeclare replaceable function h_i_Tn =
      TILMedia.Gas.ObjectFunctions.specificEnthalpyOfPureGas_Tn,
  redeclare replaceable function cp_i_Tn =
      TILMedia.Gas.ObjectFunctions.specificIsobaricHeatCapacityOfPureGas_Tn,
  redeclare replaceable function M_xi =
      TILMedia.Gas.ObjectFunctions.averageMolarMass_xi,
  redeclare replaceable function humRatio_xi =
      TILMedia.Gas.ObjectFunctions.humidityRatio_xi,
  redeclare replaceable function M_i_n =
      TILMedia.Gas.ObjectFunctions.molarMass_n,
  redeclare replaceable function hF_i_n =
      TILMedia.Gas.ObjectFunctions.specificEnthalpyOfFormation_n,
  redeclare replaceable function T_freeze =
      TILMedia.Gas.ObjectFunctions.freezingPoint,
  redeclare replaceable function xi_s_pTxidg =
      TILMedia.Gas.ObjectFunctions.saturationMassFraction_pTxidg (gasPointer=gasPointer));
  annotation (defaultComponentName="gas", Protection(access=Access.packageDuplicate));
end Gas;
