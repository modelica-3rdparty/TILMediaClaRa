within TILMedia.VLEFluid;
model VLEFluid "Compressible fluid model for object and member function based evaluation"
  extends TILMedia.BaseClasses.PartialVLEFluid(
    vleFluidPointer=TILMedia.Internals.TILMediaExternalObject(
        "VLEFluid",
        vleFluidType.concatVLEFluidName,
        TILMedia.Internals.calcComputeFlags(
          computeTransportProperties,
          interpolateTransportProperties,
          computeSurfaceTension,
          deactivateTwoPhaseRegion,
          deactivateDensityDerivatives),
        vleFluidType.mixingRatio_propertyCalculation[1:end - 1]/sum(
          vleFluidType.mixingRatio_propertyCalculation),
        vleFluidType.nc,
        0,
        getInstanceName()),
  redeclare replaceable function h_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.specificEnthalpy_dTxi,
  redeclare replaceable function p_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.pressure_dTxi,
  redeclare replaceable function s_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.specificEntropy_dTxi,
  redeclare replaceable function q_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.steamMassFraction_dTxi,
  redeclare replaceable function cp_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.specificIsobaricHeatCapacity_dTxi,
  redeclare replaceable function cv_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.specificIsochoricHeatCapacity_dTxi,
  redeclare replaceable function beta_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.isobaricThermalExpansionCoefficient_dTxi,
  redeclare replaceable function kappa_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.isothermalCompressibility_dTxi,
  redeclare replaceable function w_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.speedOfSound_dTxi,
  redeclare replaceable function drhodh_pxi_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_dTxi,
  redeclare replaceable function drhodp_hxi_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.densityDerivativeWRTpressure_dTxi,
  redeclare replaceable function gamma_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.heatCapacityRatio_dTxi,
  redeclare replaceable function Pr_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.prandtlNumber_dTxi,
  redeclare replaceable function lambda_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.thermalConductivity_dTxi,
  redeclare replaceable function eta_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.dynamicViscosity_dTxi,
  redeclare replaceable function sigma_dTxi =
      TILMedia.VLEFluid.ObjectFunctions.surfaceTension_dTxi,
  redeclare replaceable function d_phxi =
      TILMedia.VLEFluid.ObjectFunctions.density_phxi,
  redeclare replaceable function s_phxi =
      TILMedia.VLEFluid.ObjectFunctions.specificEntropy_phxi,
  redeclare replaceable function T_phxi =
      TILMedia.VLEFluid.ObjectFunctions.temperature_phxi,
  redeclare replaceable function q_phxi =
      TILMedia.VLEFluid.ObjectFunctions.steamMassFraction_phxi,
  redeclare replaceable function cp_phxi =
      TILMedia.VLEFluid.ObjectFunctions.specificIsobaricHeatCapacity_phxi,
  redeclare replaceable function cv_phxi =
      TILMedia.VLEFluid.ObjectFunctions.specificIsochoricHeatCapacity_phxi,
  redeclare replaceable function beta_phxi =
      TILMedia.VLEFluid.ObjectFunctions.isobaricThermalExpansionCoefficient_phxi,
  redeclare replaceable function kappa_phxi =
      TILMedia.VLEFluid.ObjectFunctions.isothermalCompressibility_phxi,
  redeclare replaceable function w_phxi =
      TILMedia.VLEFluid.ObjectFunctions.speedOfSound_phxi,
  redeclare replaceable function drhodh_pxi_phxi =
      TILMedia.VLEFluid.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_phxi,
  redeclare replaceable function drhodp_hxi_phxi =
      TILMedia.VLEFluid.ObjectFunctions.densityDerivativeWRTpressure_phxi,
  redeclare replaceable function gamma_phxi =
      TILMedia.VLEFluid.ObjectFunctions.heatCapacityRatio_phxi,
  redeclare replaceable function Pr_phxi =
      TILMedia.VLEFluid.ObjectFunctions.prandtlNumber_phxi,
  redeclare replaceable function lambda_phxi =
      TILMedia.VLEFluid.ObjectFunctions.thermalConductivity_phxi,
  redeclare replaceable function eta_phxi =
      TILMedia.VLEFluid.ObjectFunctions.dynamicViscosity_phxi,
  redeclare replaceable function sigma_phxi =
      TILMedia.VLEFluid.ObjectFunctions.surfaceTension_phxi,
  redeclare replaceable function d_psxi =
      TILMedia.VLEFluid.ObjectFunctions.density_psxi,
  redeclare replaceable function h_psxi =
      TILMedia.VLEFluid.ObjectFunctions.specificEnthalpy_psxi,
  redeclare replaceable function T_psxi =
      TILMedia.VLEFluid.ObjectFunctions.temperature_psxi,
  redeclare replaceable function q_psxi =
      TILMedia.VLEFluid.ObjectFunctions.steamMassFraction_psxi,
  redeclare replaceable function cp_psxi =
      TILMedia.VLEFluid.ObjectFunctions.specificIsobaricHeatCapacity_psxi,
  redeclare replaceable function cv_psxi =
      TILMedia.VLEFluid.ObjectFunctions.specificIsochoricHeatCapacity_psxi,
  redeclare replaceable function beta_psxi =
      TILMedia.VLEFluid.ObjectFunctions.isobaricThermalExpansionCoefficient_psxi,
  redeclare replaceable function kappa_psxi =
      TILMedia.VLEFluid.ObjectFunctions.isothermalCompressibility_psxi,
  redeclare replaceable function w_psxi =
      TILMedia.VLEFluid.ObjectFunctions.speedOfSound_psxi,
  redeclare replaceable function drhodh_pxi_psxi =
      TILMedia.VLEFluid.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_psxi,
  redeclare replaceable function drhodp_hxi_psxi =
      TILMedia.VLEFluid.ObjectFunctions.densityDerivativeWRTpressure_psxi,
  redeclare replaceable function gamma_psxi =
      TILMedia.VLEFluid.ObjectFunctions.heatCapacityRatio_psxi,
  redeclare replaceable function Pr_psxi =
      TILMedia.VLEFluid.ObjectFunctions.prandtlNumber_psxi,
  redeclare replaceable function lambda_psxi =
      TILMedia.VLEFluid.ObjectFunctions.thermalConductivity_psxi,
  redeclare replaceable function eta_psxi =
      TILMedia.VLEFluid.ObjectFunctions.dynamicViscosity_psxi,
  redeclare replaceable function sigma_psxi =
      TILMedia.VLEFluid.ObjectFunctions.surfaceTension_psxi,
  redeclare replaceable function d_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.density_pTxi,
  redeclare replaceable function h_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.specificEnthalpy_pTxi,
  redeclare replaceable function s_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.specificEntropy_pTxi,
  redeclare replaceable function q_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.steamMassFraction_pTxi,
  redeclare replaceable function cp_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.specificIsobaricHeatCapacity_pTxi,
  redeclare replaceable function cv_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.specificIsochoricHeatCapacity_pTxi,
  redeclare replaceable function beta_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.isobaricThermalExpansionCoefficient_pTxi,
  redeclare replaceable function kappa_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.isothermalCompressibility_pTxi,
  redeclare replaceable function w_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.speedOfSound_pTxi,
  redeclare replaceable function drhodh_pxi_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_pTxi,
  redeclare replaceable function drhodp_hxi_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.densityDerivativeWRTpressure_pTxi,
  redeclare replaceable function gamma_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.heatCapacityRatio_pTxi,
  redeclare replaceable function Pr_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.prandtlNumber_pTxi,
  redeclare replaceable function lambda_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.thermalConductivity_pTxi,
  redeclare replaceable function eta_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.dynamicViscosity_pTxi,
  redeclare replaceable function sigma_pTxi =
      TILMedia.VLEFluid.ObjectFunctions.surfaceTension_pTxi,
  redeclare replaceable function d_dew_Txi =
      TILMedia.VLEFluid.ObjectFunctions.dewDensity_Txi,
  redeclare replaceable function d_bubble_Txi =
      TILMedia.VLEFluid.ObjectFunctions.bubbleDensity_Txi,
  redeclare replaceable function h_dew_Txi =
      TILMedia.VLEFluid.ObjectFunctions.dewSpecificEnthalpy_Txi,
  redeclare replaceable function h_bubble_Txi =
      TILMedia.VLEFluid.ObjectFunctions.bubbleSpecificEnthalpy_Txi,
  redeclare replaceable function p_dew_Txi =
      TILMedia.VLEFluid.ObjectFunctions.dewPressure_Txi,
  redeclare replaceable function p_bubble_Txi =
      TILMedia.VLEFluid.ObjectFunctions.bubblePressure_Txi,
  redeclare replaceable function s_dew_Txi =
      TILMedia.VLEFluid.ObjectFunctions.dewSpecificEntropy_Txi,
  redeclare replaceable function s_bubble_Txi =
      TILMedia.VLEFluid.ObjectFunctions.bubbleSpecificEntropy_Txi,
  redeclare replaceable function cp_dew_Txi =
      TILMedia.VLEFluid.ObjectFunctions.dewSpecificIsobaricHeatCapacity_Txi,
  redeclare replaceable function cp_bubble_Txi =
      TILMedia.VLEFluid.ObjectFunctions.bubbleSpecificIsobaricHeatCapacity_Txi,
  redeclare replaceable function beta_dew_Txi =
      TILMedia.VLEFluid.ObjectFunctions.dewIsobaricThermalExpansionCoefficient_Txi,
  redeclare replaceable function beta_bubble_Txi =
      TILMedia.VLEFluid.ObjectFunctions.bubbleIsobaricThermalExpansionCoefficient_Txi,
  redeclare replaceable function kappa_dew_Txi =
      TILMedia.VLEFluid.ObjectFunctions.dewIsothermalCompressibility_Txi,
  redeclare replaceable function kappa_bubble_Txi =
      TILMedia.VLEFluid.ObjectFunctions.bubbleIsothermalCompressibility_Txi,
  redeclare replaceable function d_dew_pxi =
      TILMedia.VLEFluid.ObjectFunctions.dewDensity_pxi,
  redeclare replaceable function d_bubble_pxi =
      TILMedia.VLEFluid.ObjectFunctions.bubbleDensity_pxi,
  redeclare replaceable function h_dew_pxi =
      TILMedia.VLEFluid.ObjectFunctions.dewSpecificEnthalpy_pxi,
  redeclare replaceable function h_bubble_pxi =
      TILMedia.VLEFluid.ObjectFunctions.bubbleSpecificEnthalpy_pxi,
  redeclare replaceable function s_dew_pxi =
      TILMedia.VLEFluid.ObjectFunctions.dewSpecificEntropy_pxi,
  redeclare replaceable function s_bubble_pxi =
      TILMedia.VLEFluid.ObjectFunctions.bubbleSpecificEntropy_pxi,
  redeclare replaceable function T_dew_pxi =
      TILMedia.VLEFluid.ObjectFunctions.dewTemperature_pxi,
  redeclare replaceable function T_bubble_pxi =
      TILMedia.VLEFluid.ObjectFunctions.bubbleTemperature_pxi,
  redeclare replaceable function cp_dew_pxi =
      TILMedia.VLEFluid.ObjectFunctions.dewSpecificIsobaricHeatCapacity_pxi,
  redeclare replaceable function cp_bubble_pxi =
      TILMedia.VLEFluid.ObjectFunctions.bubbleSpecificIsobaricHeatCapacity_pxi,
  redeclare replaceable function beta_dew_pxi =
      TILMedia.VLEFluid.ObjectFunctions.dewIsobaricThermalExpansionCoefficient_pxi,
  redeclare replaceable function beta_bubble_pxi =
      TILMedia.VLEFluid.ObjectFunctions.bubbleIsobaricThermalExpansionCoefficient_pxi,
  redeclare replaceable function kappa_dew_pxi =
      TILMedia.VLEFluid.ObjectFunctions.dewIsothermalCompressibility_pxi,
  redeclare replaceable function kappa_bubble_pxi =
      TILMedia.VLEFluid.ObjectFunctions.bubbleIsothermalCompressibility_pxi,
  redeclare replaceable function dc_xi =
      TILMedia.VLEFluid.ObjectFunctions.criticalDensity_xi,
  redeclare replaceable function hc_xi =
      TILMedia.VLEFluid.ObjectFunctions.criticalSpecificEnthalpy_xi,
  redeclare replaceable function pc_xi =
      TILMedia.VLEFluid.ObjectFunctions.criticalPressure_xi,
  redeclare replaceable function sc_xi =
      TILMedia.VLEFluid.ObjectFunctions.criticalSpecificEntropy_xi,
  redeclare replaceable function Tc_xi =
      TILMedia.VLEFluid.ObjectFunctions.criticalTemperature_xi,
  redeclare replaceable function M_i_n =
      TILMedia.VLEFluid.ObjectFunctions.molarMass_n);
equation
  assert(vleFluidType.nc == 1,
    "This TILMedia VLEFluid interface cannot handle variable concentrations");
  annotation (defaultComponentName="vleFluid", Protection(access=Access.packageDuplicate));
end VLEFluid;
