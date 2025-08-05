within TILMedia.VLEFluid;
package ObjectFunctions
  "Package for calculation of VLEFluid properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctions;
  redeclare replaceable function extends specificEnthalpy_dTxi
    algorithm
    h := TILMedia.Internals.VLEFluid.ObjectFunctions.specificEnthalpy_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.ObjectFunctions.der_specificEnthalpy_dTxi);
  end specificEnthalpy_dTxi;
  redeclare replaceable function extends pressure_dTxi
    algorithm
    p := TILMedia.Internals.VLEFluid.ObjectFunctions.pressure_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.ObjectFunctions.der_pressure_dTxi,inverse(d=TILMedia.VLEFluid.ObjectFunctions.density_pTxi(p,T,xi,vleFluidPointer)));
  end pressure_dTxi;
  redeclare replaceable function extends specificEntropy_dTxi
    algorithm
    s := TILMedia.Internals.VLEFluid.ObjectFunctions.specificEntropy_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.ObjectFunctions.der_specificEntropy_dTxi);
  end specificEntropy_dTxi;
  redeclare replaceable function extends moleFraction_dTxin
    algorithm
    x := TILMedia.Internals.VLEFluid.ObjectFunctions.moleFraction_dTxin(d,T,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end moleFraction_dTxin;
  redeclare replaceable function extends steamMassFraction_dTxi
    algorithm
    q := TILMedia.Internals.VLEFluid.ObjectFunctions.steamMassFraction_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end steamMassFraction_dTxi;
  redeclare replaceable function extends specificIsobaricHeatCapacity_dTxi
    algorithm
    cp := TILMedia.Internals.VLEFluid.ObjectFunctions.specificIsobaricHeatCapacity_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end specificIsobaricHeatCapacity_dTxi;
  redeclare replaceable function extends specificIsochoricHeatCapacity_dTxi
    algorithm
    cv := TILMedia.Internals.VLEFluid.ObjectFunctions.specificIsochoricHeatCapacity_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end specificIsochoricHeatCapacity_dTxi;
  redeclare replaceable function extends isobaricThermalExpansionCoefficient_dTxi
    algorithm
    beta := TILMedia.Internals.VLEFluid.ObjectFunctions.isobaricThermalExpansionCoefficient_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end isobaricThermalExpansionCoefficient_dTxi;
  redeclare replaceable function extends isothermalCompressibility_dTxi
    algorithm
    kappa := TILMedia.Internals.VLEFluid.ObjectFunctions.isothermalCompressibility_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end isothermalCompressibility_dTxi;
  redeclare replaceable function extends speedOfSound_dTxi
    algorithm
    w := TILMedia.Internals.VLEFluid.ObjectFunctions.speedOfSound_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end speedOfSound_dTxi;
  redeclare replaceable function extends densityDerivativeWRTspecificEnthalpy_dTxi
    algorithm
    drhodh_pxi := TILMedia.Internals.VLEFluid.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTspecificEnthalpy_dTxi;
  redeclare replaceable function extends densityDerivativeWRTpressure_dTxi
    algorithm
    drhodp_hxi := TILMedia.Internals.VLEFluid.ObjectFunctions.densityDerivativeWRTpressure_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTpressure_dTxi;
  redeclare replaceable function extends densityDerivativeWRTmassFraction_dTxin
    algorithm
    drhodxi_ph := TILMedia.Internals.VLEFluid.ObjectFunctions.densityDerivativeWRTmassFraction_dTxin(d,T,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTmassFraction_dTxin;
  redeclare replaceable function extends heatCapacityRatio_dTxi
    algorithm
    gamma := TILMedia.Internals.VLEFluid.ObjectFunctions.heatCapacityRatio_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end heatCapacityRatio_dTxi;
  redeclare replaceable function extends prandtlNumber_dTxi
    algorithm
    Pr := TILMedia.Internals.VLEFluid.ObjectFunctions.prandtlNumber_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end prandtlNumber_dTxi;
  redeclare replaceable function extends thermalConductivity_dTxi
    algorithm
    lambda := TILMedia.Internals.VLEFluid.ObjectFunctions.thermalConductivity_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end thermalConductivity_dTxi;
  redeclare replaceable function extends dynamicViscosity_dTxi
    algorithm
    eta := TILMedia.Internals.VLEFluid.ObjectFunctions.dynamicViscosity_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dynamicViscosity_dTxi;
  redeclare replaceable function extends surfaceTension_dTxi
    algorithm
    sigma := TILMedia.Internals.VLEFluid.ObjectFunctions.surfaceTension_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end surfaceTension_dTxi;
  redeclare replaceable function extends liquidDensity_dTxi
    algorithm
    d_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidDensity_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidDensity_dTxi;
  redeclare replaceable function extends vapourDensity_dTxi
    algorithm
    d_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourDensity_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourDensity_dTxi;
  redeclare replaceable function extends liquidSpecificEnthalpy_dTxi
    algorithm
    h_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidSpecificEnthalpy_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEnthalpy_dTxi;
  redeclare replaceable function extends vapourSpecificEnthalpy_dTxi
    algorithm
    h_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourSpecificEnthalpy_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEnthalpy_dTxi;
  redeclare replaceable function extends liquidPressure_dTxi
    algorithm
    p_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidPressure_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidPressure_dTxi;
  redeclare replaceable function extends vapourPressure_dTxi
    algorithm
    p_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourPressure_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourPressure_dTxi;
  redeclare replaceable function extends liquidSpecificEntropy_dTxi
    algorithm
    s_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidSpecificEntropy_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEntropy_dTxi;
  redeclare replaceable function extends vapourSpecificEntropy_dTxi
    algorithm
    s_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourSpecificEntropy_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEntropy_dTxi;
  redeclare replaceable function extends liquidMassFraction_dTxin
    algorithm
    xi_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidMassFraction_dTxin(d,T,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidMassFraction_dTxin;
  redeclare replaceable function extends vapourMassFraction_dTxin
    algorithm
    xi_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourMassFraction_dTxin(d,T,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourMassFraction_dTxin;
  redeclare replaceable function extends liquidSpecificHeatCapacity_dTxi
    algorithm
    cp_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidSpecificHeatCapacity_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidSpecificHeatCapacity_dTxi;
  redeclare replaceable function extends vapourSpecificHeatCapacity_dTxi
    algorithm
    cp_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourSpecificHeatCapacity_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourSpecificHeatCapacity_dTxi;
  redeclare replaceable function extends liquidIsobaricThermalExpansionCoefficient_dTxi
    algorithm
    beta_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidIsobaricThermalExpansionCoefficient_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidIsobaricThermalExpansionCoefficient_dTxi;
  redeclare replaceable function extends vapourIsobaricThermalExpansionCoefficient_dTxi
    algorithm
    beta_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourIsobaricThermalExpansionCoefficient_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourIsobaricThermalExpansionCoefficient_dTxi;
  redeclare replaceable function extends liquidIsothermalCompressibility_dTxi
    algorithm
    kappa_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidIsothermalCompressibility_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidIsothermalCompressibility_dTxi;
  redeclare replaceable function extends vapourIsothermalCompressibility_dTxi
    algorithm
    kappa_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourIsothermalCompressibility_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourIsothermalCompressibility_dTxi;
  redeclare replaceable function extends density_phxi
    algorithm
    d := TILMedia.Internals.VLEFluid.ObjectFunctions.density_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.ObjectFunctions.der_density_phxi);
  end density_phxi;
  redeclare replaceable function extends specificEntropy_phxi
    algorithm
    s := TILMedia.Internals.VLEFluid.ObjectFunctions.specificEntropy_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.ObjectFunctions.der_specificEntropy_phxi,inverse(h=TILMedia.VLEFluid.ObjectFunctions.specificEnthalpy_psxi(p,s,xi,vleFluidPointer)));
  end specificEntropy_phxi;
  redeclare replaceable function extends temperature_phxi
    algorithm
    T := TILMedia.Internals.VLEFluid.ObjectFunctions.temperature_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.ObjectFunctions.der_temperature_phxi,inverse(h=TILMedia.VLEFluid.ObjectFunctions.specificEnthalpy_pTxi(p,T,xi,vleFluidPointer)));
  end temperature_phxi;
  redeclare replaceable function extends moleFraction_phxin
    algorithm
    x := TILMedia.Internals.VLEFluid.ObjectFunctions.moleFraction_phxin(p,h,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end moleFraction_phxin;
  redeclare replaceable function extends steamMassFraction_phxi
    algorithm
    q := TILMedia.Internals.VLEFluid.ObjectFunctions.steamMassFraction_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end steamMassFraction_phxi;
  redeclare replaceable function extends specificIsobaricHeatCapacity_phxi
    algorithm
    cp := TILMedia.Internals.VLEFluid.ObjectFunctions.specificIsobaricHeatCapacity_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end specificIsobaricHeatCapacity_phxi;
  redeclare replaceable function extends specificIsochoricHeatCapacity_phxi
    algorithm
    cv := TILMedia.Internals.VLEFluid.ObjectFunctions.specificIsochoricHeatCapacity_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end specificIsochoricHeatCapacity_phxi;
  redeclare replaceable function extends isobaricThermalExpansionCoefficient_phxi
    algorithm
    beta := TILMedia.Internals.VLEFluid.ObjectFunctions.isobaricThermalExpansionCoefficient_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end isobaricThermalExpansionCoefficient_phxi;
  redeclare replaceable function extends isothermalCompressibility_phxi
    algorithm
    kappa := TILMedia.Internals.VLEFluid.ObjectFunctions.isothermalCompressibility_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end isothermalCompressibility_phxi;
  redeclare replaceable function extends speedOfSound_phxi
    algorithm
    w := TILMedia.Internals.VLEFluid.ObjectFunctions.speedOfSound_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end speedOfSound_phxi;
  redeclare replaceable function extends densityDerivativeWRTspecificEnthalpy_phxi
    algorithm
    drhodh_pxi := TILMedia.Internals.VLEFluid.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTspecificEnthalpy_phxi;
  redeclare replaceable function extends densityDerivativeWRTpressure_phxi
    algorithm
    drhodp_hxi := TILMedia.Internals.VLEFluid.ObjectFunctions.densityDerivativeWRTpressure_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTpressure_phxi;
  redeclare replaceable function extends densityDerivativeWRTmassFraction_phxin
    algorithm
    drhodxi_ph := TILMedia.Internals.VLEFluid.ObjectFunctions.densityDerivativeWRTmassFraction_phxin(p,h,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTmassFraction_phxin;
  redeclare replaceable function extends heatCapacityRatio_phxi
    algorithm
    gamma := TILMedia.Internals.VLEFluid.ObjectFunctions.heatCapacityRatio_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end heatCapacityRatio_phxi;
  redeclare replaceable function extends prandtlNumber_phxi
    algorithm
    Pr := TILMedia.Internals.VLEFluid.ObjectFunctions.prandtlNumber_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end prandtlNumber_phxi;
  redeclare replaceable function extends thermalConductivity_phxi
    algorithm
    lambda := TILMedia.Internals.VLEFluid.ObjectFunctions.thermalConductivity_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end thermalConductivity_phxi;
  redeclare replaceable function extends dynamicViscosity_phxi
    algorithm
    eta := TILMedia.Internals.VLEFluid.ObjectFunctions.dynamicViscosity_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dynamicViscosity_phxi;
  redeclare replaceable function extends surfaceTension_phxi
    algorithm
    sigma := TILMedia.Internals.VLEFluid.ObjectFunctions.surfaceTension_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end surfaceTension_phxi;
  redeclare replaceable function extends liquidDensity_phxi
    algorithm
    d_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidDensity_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidDensity_phxi;
  redeclare replaceable function extends vapourDensity_phxi
    algorithm
    d_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourDensity_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourDensity_phxi;
  redeclare replaceable function extends liquidSpecificEnthalpy_phxi
    algorithm
    h_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidSpecificEnthalpy_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEnthalpy_phxi;
  redeclare replaceable function extends vapourSpecificEnthalpy_phxi
    algorithm
    h_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourSpecificEnthalpy_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEnthalpy_phxi;
  redeclare replaceable function extends liquidSpecificEntropy_phxi
    algorithm
    s_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidSpecificEntropy_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEntropy_phxi;
  redeclare replaceable function extends vapourSpecificEntropy_phxi
    algorithm
    s_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourSpecificEntropy_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEntropy_phxi;
  redeclare replaceable function extends liquidTemperature_phxi
    algorithm
    T_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidTemperature_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidTemperature_phxi;
  redeclare replaceable function extends vapourTemperature_phxi
    algorithm
    T_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourTemperature_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourTemperature_phxi;
  redeclare replaceable function extends liquidMassFraction_phxin
    algorithm
    xi_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidMassFraction_phxin(p,h,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidMassFraction_phxin;
  redeclare replaceable function extends vapourMassFraction_phxin
    algorithm
    xi_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourMassFraction_phxin(p,h,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourMassFraction_phxin;
  redeclare replaceable function extends liquidSpecificHeatCapacity_phxi
    algorithm
    cp_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidSpecificHeatCapacity_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidSpecificHeatCapacity_phxi;
  redeclare replaceable function extends vapourSpecificHeatCapacity_phxi
    algorithm
    cp_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourSpecificHeatCapacity_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourSpecificHeatCapacity_phxi;
  redeclare replaceable function extends liquidIsobaricThermalExpansionCoefficient_phxi
    algorithm
    beta_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidIsobaricThermalExpansionCoefficient_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidIsobaricThermalExpansionCoefficient_phxi;
  redeclare replaceable function extends vapourIsobaricThermalExpansionCoefficient_phxi
    algorithm
    beta_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourIsobaricThermalExpansionCoefficient_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourIsobaricThermalExpansionCoefficient_phxi;
  redeclare replaceable function extends liquidIsothermalCompressibility_phxi
    algorithm
    kappa_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidIsothermalCompressibility_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidIsothermalCompressibility_phxi;
  redeclare replaceable function extends vapourIsothermalCompressibility_phxi
    algorithm
    kappa_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourIsothermalCompressibility_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourIsothermalCompressibility_phxi;
  redeclare replaceable function extends density_psxi
    algorithm
    d := TILMedia.Internals.VLEFluid.ObjectFunctions.density_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.ObjectFunctions.der_density_psxi);
  end density_psxi;
  redeclare replaceable function extends specificEnthalpy_psxi
    algorithm
    h := TILMedia.Internals.VLEFluid.ObjectFunctions.specificEnthalpy_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.ObjectFunctions.der_specificEnthalpy_psxi,inverse(s=TILMedia.VLEFluid.ObjectFunctions.specificEntropy_phxi(p,h,xi,vleFluidPointer)));
  end specificEnthalpy_psxi;
  redeclare replaceable function extends temperature_psxi
    algorithm
    T := TILMedia.Internals.VLEFluid.ObjectFunctions.temperature_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.ObjectFunctions.der_temperature_psxi,inverse(s=TILMedia.VLEFluid.ObjectFunctions.specificEntropy_pTxi(p,T,xi,vleFluidPointer)));
  end temperature_psxi;
  redeclare replaceable function extends moleFraction_psxin
    algorithm
    x := TILMedia.Internals.VLEFluid.ObjectFunctions.moleFraction_psxin(p,s,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end moleFraction_psxin;
  redeclare replaceable function extends steamMassFraction_psxi
    algorithm
    q := TILMedia.Internals.VLEFluid.ObjectFunctions.steamMassFraction_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end steamMassFraction_psxi;
  redeclare replaceable function extends specificIsobaricHeatCapacity_psxi
    algorithm
    cp := TILMedia.Internals.VLEFluid.ObjectFunctions.specificIsobaricHeatCapacity_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end specificIsobaricHeatCapacity_psxi;
  redeclare replaceable function extends specificIsochoricHeatCapacity_psxi
    algorithm
    cv := TILMedia.Internals.VLEFluid.ObjectFunctions.specificIsochoricHeatCapacity_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end specificIsochoricHeatCapacity_psxi;
  redeclare replaceable function extends isobaricThermalExpansionCoefficient_psxi
    algorithm
    beta := TILMedia.Internals.VLEFluid.ObjectFunctions.isobaricThermalExpansionCoefficient_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end isobaricThermalExpansionCoefficient_psxi;
  redeclare replaceable function extends isothermalCompressibility_psxi
    algorithm
    kappa := TILMedia.Internals.VLEFluid.ObjectFunctions.isothermalCompressibility_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end isothermalCompressibility_psxi;
  redeclare replaceable function extends speedOfSound_psxi
    algorithm
    w := TILMedia.Internals.VLEFluid.ObjectFunctions.speedOfSound_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end speedOfSound_psxi;
  redeclare replaceable function extends densityDerivativeWRTspecificEnthalpy_psxi
    algorithm
    drhodh_pxi := TILMedia.Internals.VLEFluid.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTspecificEnthalpy_psxi;
  redeclare replaceable function extends densityDerivativeWRTpressure_psxi
    algorithm
    drhodp_hxi := TILMedia.Internals.VLEFluid.ObjectFunctions.densityDerivativeWRTpressure_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTpressure_psxi;
  redeclare replaceable function extends densityDerivativeWRTmassFraction_psxin
    algorithm
    drhodxi_ph := TILMedia.Internals.VLEFluid.ObjectFunctions.densityDerivativeWRTmassFraction_psxin(p,s,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTmassFraction_psxin;
  redeclare replaceable function extends heatCapacityRatio_psxi
    algorithm
    gamma := TILMedia.Internals.VLEFluid.ObjectFunctions.heatCapacityRatio_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end heatCapacityRatio_psxi;
  redeclare replaceable function extends prandtlNumber_psxi
    algorithm
    Pr := TILMedia.Internals.VLEFluid.ObjectFunctions.prandtlNumber_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end prandtlNumber_psxi;
  redeclare replaceable function extends thermalConductivity_psxi
    algorithm
    lambda := TILMedia.Internals.VLEFluid.ObjectFunctions.thermalConductivity_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end thermalConductivity_psxi;
  redeclare replaceable function extends dynamicViscosity_psxi
    algorithm
    eta := TILMedia.Internals.VLEFluid.ObjectFunctions.dynamicViscosity_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dynamicViscosity_psxi;
  redeclare replaceable function extends surfaceTension_psxi
    algorithm
    sigma := TILMedia.Internals.VLEFluid.ObjectFunctions.surfaceTension_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end surfaceTension_psxi;
  redeclare replaceable function extends liquidDensity_psxi
    algorithm
    d_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidDensity_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidDensity_psxi;
  redeclare replaceable function extends vapourDensity_psxi
    algorithm
    d_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourDensity_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourDensity_psxi;
  redeclare replaceable function extends liquidSpecificEnthalpy_psxi
    algorithm
    h_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidSpecificEnthalpy_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEnthalpy_psxi;
  redeclare replaceable function extends vapourSpecificEnthalpy_psxi
    algorithm
    h_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourSpecificEnthalpy_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEnthalpy_psxi;
  redeclare replaceable function extends liquidSpecificEntropy_psxi
    algorithm
    s_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidSpecificEntropy_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEntropy_psxi;
  redeclare replaceable function extends vapourSpecificEntropy_psxi
    algorithm
    s_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourSpecificEntropy_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEntropy_psxi;
  redeclare replaceable function extends liquidTemperature_psxi
    algorithm
    T_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidTemperature_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidTemperature_psxi;
  redeclare replaceable function extends vapourTemperature_psxi
    algorithm
    T_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourTemperature_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourTemperature_psxi;
  redeclare replaceable function extends liquidMassFraction_psxin
    algorithm
    xi_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidMassFraction_psxin(p,s,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidMassFraction_psxin;
  redeclare replaceable function extends vapourMassFraction_psxin
    algorithm
    xi_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourMassFraction_psxin(p,s,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourMassFraction_psxin;
  redeclare replaceable function extends liquidSpecificHeatCapacity_psxi
    algorithm
    cp_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidSpecificHeatCapacity_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidSpecificHeatCapacity_psxi;
  redeclare replaceable function extends vapourSpecificHeatCapacity_psxi
    algorithm
    cp_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourSpecificHeatCapacity_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourSpecificHeatCapacity_psxi;
  redeclare replaceable function extends liquidIsobaricThermalExpansionCoefficient_psxi
    algorithm
    beta_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidIsobaricThermalExpansionCoefficient_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidIsobaricThermalExpansionCoefficient_psxi;
  redeclare replaceable function extends vapourIsobaricThermalExpansionCoefficient_psxi
    algorithm
    beta_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourIsobaricThermalExpansionCoefficient_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourIsobaricThermalExpansionCoefficient_psxi;
  redeclare replaceable function extends liquidIsothermalCompressibility_psxi
    algorithm
    kappa_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidIsothermalCompressibility_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidIsothermalCompressibility_psxi;
  redeclare replaceable function extends vapourIsothermalCompressibility_psxi
    algorithm
    kappa_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourIsothermalCompressibility_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourIsothermalCompressibility_psxi;
  redeclare replaceable function extends density_pTxi
    algorithm
    d := TILMedia.Internals.VLEFluid.ObjectFunctions.density_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.ObjectFunctions.der_density_pTxi,inverse(p=TILMedia.VLEFluid.ObjectFunctions.pressure_dTxi(d,T,xi,vleFluidPointer)));
  end density_pTxi;
  redeclare replaceable function extends specificEnthalpy_pTxi
    algorithm
    h := TILMedia.Internals.VLEFluid.ObjectFunctions.specificEnthalpy_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.ObjectFunctions.der_specificEnthalpy_pTxi,inverse(T=TILMedia.VLEFluid.ObjectFunctions.temperature_phxi(p,h,xi,vleFluidPointer)));
  end specificEnthalpy_pTxi;
  redeclare replaceable function extends specificEntropy_pTxi
    algorithm
    s := TILMedia.Internals.VLEFluid.ObjectFunctions.specificEntropy_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.ObjectFunctions.der_specificEntropy_pTxi,inverse(T=TILMedia.VLEFluid.ObjectFunctions.temperature_psxi(p,s,xi,vleFluidPointer)));
  end specificEntropy_pTxi;
  redeclare replaceable function extends moleFraction_pTxin
    algorithm
    x := TILMedia.Internals.VLEFluid.ObjectFunctions.moleFraction_pTxin(p,T,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end moleFraction_pTxin;
  redeclare replaceable function extends steamMassFraction_pTxi
    algorithm
    q := TILMedia.Internals.VLEFluid.ObjectFunctions.steamMassFraction_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end steamMassFraction_pTxi;
  redeclare replaceable function extends specificIsobaricHeatCapacity_pTxi
    algorithm
    cp := TILMedia.Internals.VLEFluid.ObjectFunctions.specificIsobaricHeatCapacity_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end specificIsobaricHeatCapacity_pTxi;
  redeclare replaceable function extends specificIsochoricHeatCapacity_pTxi
    algorithm
    cv := TILMedia.Internals.VLEFluid.ObjectFunctions.specificIsochoricHeatCapacity_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end specificIsochoricHeatCapacity_pTxi;
  redeclare replaceable function extends isobaricThermalExpansionCoefficient_pTxi
    algorithm
    beta := TILMedia.Internals.VLEFluid.ObjectFunctions.isobaricThermalExpansionCoefficient_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end isobaricThermalExpansionCoefficient_pTxi;
  redeclare replaceable function extends isothermalCompressibility_pTxi
    algorithm
    kappa := TILMedia.Internals.VLEFluid.ObjectFunctions.isothermalCompressibility_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end isothermalCompressibility_pTxi;
  redeclare replaceable function extends speedOfSound_pTxi
    algorithm
    w := TILMedia.Internals.VLEFluid.ObjectFunctions.speedOfSound_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end speedOfSound_pTxi;
  redeclare replaceable function extends densityDerivativeWRTspecificEnthalpy_pTxi
    algorithm
    drhodh_pxi := TILMedia.Internals.VLEFluid.ObjectFunctions.densityDerivativeWRTspecificEnthalpy_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTspecificEnthalpy_pTxi;
  redeclare replaceable function extends densityDerivativeWRTpressure_pTxi
    algorithm
    drhodp_hxi := TILMedia.Internals.VLEFluid.ObjectFunctions.densityDerivativeWRTpressure_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTpressure_pTxi;
  redeclare replaceable function extends densityDerivativeWRTmassFraction_pTxin
    algorithm
    drhodxi_ph := TILMedia.Internals.VLEFluid.ObjectFunctions.densityDerivativeWRTmassFraction_pTxin(p,T,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end densityDerivativeWRTmassFraction_pTxin;
  redeclare replaceable function extends heatCapacityRatio_pTxi
    algorithm
    gamma := TILMedia.Internals.VLEFluid.ObjectFunctions.heatCapacityRatio_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end heatCapacityRatio_pTxi;
  redeclare replaceable function extends prandtlNumber_pTxi
    algorithm
    Pr := TILMedia.Internals.VLEFluid.ObjectFunctions.prandtlNumber_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end prandtlNumber_pTxi;
  redeclare replaceable function extends thermalConductivity_pTxi
    algorithm
    lambda := TILMedia.Internals.VLEFluid.ObjectFunctions.thermalConductivity_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end thermalConductivity_pTxi;
  redeclare replaceable function extends dynamicViscosity_pTxi
    algorithm
    eta := TILMedia.Internals.VLEFluid.ObjectFunctions.dynamicViscosity_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dynamicViscosity_pTxi;
  redeclare replaceable function extends surfaceTension_pTxi
    algorithm
    sigma := TILMedia.Internals.VLEFluid.ObjectFunctions.surfaceTension_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end surfaceTension_pTxi;
  redeclare replaceable function extends liquidDensity_pTxi
    algorithm
    d_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidDensity_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidDensity_pTxi;
  redeclare replaceable function extends vapourDensity_pTxi
    algorithm
    d_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourDensity_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourDensity_pTxi;
  redeclare replaceable function extends liquidSpecificEnthalpy_pTxi
    algorithm
    h_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidSpecificEnthalpy_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEnthalpy_pTxi;
  redeclare replaceable function extends vapourSpecificEnthalpy_pTxi
    algorithm
    h_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourSpecificEnthalpy_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEnthalpy_pTxi;
  redeclare replaceable function extends liquidSpecificEntropy_pTxi
    algorithm
    s_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidSpecificEntropy_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidSpecificEntropy_pTxi;
  redeclare replaceable function extends vapourSpecificEntropy_pTxi
    algorithm
    s_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourSpecificEntropy_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourSpecificEntropy_pTxi;
  redeclare replaceable function extends liquidTemperature_pTxi
    algorithm
    T_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidTemperature_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidTemperature_pTxi;
  redeclare replaceable function extends vapourTemperature_pTxi
    algorithm
    T_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourTemperature_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourTemperature_pTxi;
  redeclare replaceable function extends liquidMassFraction_pTxin
    algorithm
    xi_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidMassFraction_pTxin(p,T,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidMassFraction_pTxin;
  redeclare replaceable function extends vapourMassFraction_pTxin
    algorithm
    xi_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourMassFraction_pTxin(p,T,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourMassFraction_pTxin;
  redeclare replaceable function extends liquidSpecificHeatCapacity_pTxi
    algorithm
    cp_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidSpecificHeatCapacity_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidSpecificHeatCapacity_pTxi;
  redeclare replaceable function extends vapourSpecificHeatCapacity_pTxi
    algorithm
    cp_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourSpecificHeatCapacity_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourSpecificHeatCapacity_pTxi;
  redeclare replaceable function extends liquidIsobaricThermalExpansionCoefficient_pTxi
    algorithm
    beta_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidIsobaricThermalExpansionCoefficient_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidIsobaricThermalExpansionCoefficient_pTxi;
  redeclare replaceable function extends vapourIsobaricThermalExpansionCoefficient_pTxi
    algorithm
    beta_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourIsobaricThermalExpansionCoefficient_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourIsobaricThermalExpansionCoefficient_pTxi;
  redeclare replaceable function extends liquidIsothermalCompressibility_pTxi
    algorithm
    kappa_l := TILMedia.Internals.VLEFluid.ObjectFunctions.liquidIsothermalCompressibility_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end liquidIsothermalCompressibility_pTxi;
  redeclare replaceable function extends vapourIsothermalCompressibility_pTxi
    algorithm
    kappa_v := TILMedia.Internals.VLEFluid.ObjectFunctions.vapourIsothermalCompressibility_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end vapourIsothermalCompressibility_pTxi;
  redeclare replaceable function extends dewDensity_Txi
    algorithm
    d_dew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewDensity_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewDensity_Txi;
  redeclare replaceable function extends bubbleDensity_Txi
    algorithm
    d_bubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubbleDensity_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubbleDensity_Txi;
  redeclare replaceable function extends dewSpecificEnthalpy_Txi
    algorithm
    h_dew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewSpecificEnthalpy_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewSpecificEnthalpy_Txi;
  redeclare replaceable function extends bubbleSpecificEnthalpy_Txi
    algorithm
    h_bubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubbleSpecificEnthalpy_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubbleSpecificEnthalpy_Txi;
  redeclare replaceable function extends dewPressure_Txi
    algorithm
    p_dew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewPressure_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewPressure_Txi;
  redeclare replaceable function extends bubblePressure_Txi
    algorithm
    p_bubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubblePressure_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubblePressure_Txi;
  redeclare replaceable function extends dewSpecificEntropy_Txi
    algorithm
    s_dew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewSpecificEntropy_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewSpecificEntropy_Txi;
  redeclare replaceable function extends bubbleSpecificEntropy_Txi
    algorithm
    s_bubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubbleSpecificEntropy_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubbleSpecificEntropy_Txi;
  redeclare replaceable function extends dewLiquidMassFraction_Txin
    algorithm
    xi_ldew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewLiquidMassFraction_Txin(T,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewLiquidMassFraction_Txin;
  redeclare replaceable function extends bubbleVapourMassFraction_Txin
    algorithm
    xi_vbubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubbleVapourMassFraction_Txin(T,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubbleVapourMassFraction_Txin;
  redeclare replaceable function extends dewSpecificIsobaricHeatCapacity_Txi
    algorithm
    cp_dew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewSpecificIsobaricHeatCapacity_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewSpecificIsobaricHeatCapacity_Txi;
  redeclare replaceable function extends bubbleSpecificIsobaricHeatCapacity_Txi
    algorithm
    cp_bubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubbleSpecificIsobaricHeatCapacity_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubbleSpecificIsobaricHeatCapacity_Txi;
  redeclare replaceable function extends dewIsobaricThermalExpansionCoefficient_Txi
    algorithm
    beta_dew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewIsobaricThermalExpansionCoefficient_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewIsobaricThermalExpansionCoefficient_Txi;
  redeclare replaceable function extends bubbleIsobaricThermalExpansionCoefficient_Txi
    algorithm
    beta_bubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubbleIsobaricThermalExpansionCoefficient_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubbleIsobaricThermalExpansionCoefficient_Txi;
  redeclare replaceable function extends dewIsothermalCompressibility_Txi
    algorithm
    kappa_dew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewIsothermalCompressibility_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewIsothermalCompressibility_Txi;
  redeclare replaceable function extends bubbleIsothermalCompressibility_Txi
    algorithm
    kappa_bubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubbleIsothermalCompressibility_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubbleIsothermalCompressibility_Txi;
  redeclare replaceable function extends dewDensity_pxi
    algorithm
    d_dew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewDensity_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewDensity_pxi;
  redeclare replaceable function extends bubbleDensity_pxi
    algorithm
    d_bubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubbleDensity_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubbleDensity_pxi;
  redeclare replaceable function extends dewSpecificEnthalpy_pxi
    algorithm
    h_dew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewSpecificEnthalpy_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewSpecificEnthalpy_pxi;
  redeclare replaceable function extends bubbleSpecificEnthalpy_pxi
    algorithm
    h_bubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubbleSpecificEnthalpy_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubbleSpecificEnthalpy_pxi;
  redeclare replaceable function extends dewSpecificEntropy_pxi
    algorithm
    s_dew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewSpecificEntropy_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewSpecificEntropy_pxi;
  redeclare replaceable function extends bubbleSpecificEntropy_pxi
    algorithm
    s_bubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubbleSpecificEntropy_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubbleSpecificEntropy_pxi;
  redeclare replaceable function extends dewTemperature_pxi
    algorithm
    T_dew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewTemperature_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewTemperature_pxi;
  redeclare replaceable function extends bubbleTemperature_pxi
    algorithm
    T_bubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubbleTemperature_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubbleTemperature_pxi;
  redeclare replaceable function extends dewLiquidMassFraction_pxin
    algorithm
    xi_ldew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewLiquidMassFraction_pxin(p,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewLiquidMassFraction_pxin;
  redeclare replaceable function extends bubbleVapourMassFraction_pxin
    algorithm
    xi_vbubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubbleVapourMassFraction_pxin(p,xi,compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubbleVapourMassFraction_pxin;
  redeclare replaceable function extends dewSpecificIsobaricHeatCapacity_pxi
    algorithm
    cp_dew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewSpecificIsobaricHeatCapacity_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewSpecificIsobaricHeatCapacity_pxi;
  redeclare replaceable function extends bubbleSpecificIsobaricHeatCapacity_pxi
    algorithm
    cp_bubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubbleSpecificIsobaricHeatCapacity_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubbleSpecificIsobaricHeatCapacity_pxi;
  redeclare replaceable function extends dewIsobaricThermalExpansionCoefficient_pxi
    algorithm
    beta_dew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewIsobaricThermalExpansionCoefficient_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewIsobaricThermalExpansionCoefficient_pxi;
  redeclare replaceable function extends bubbleIsobaricThermalExpansionCoefficient_pxi
    algorithm
    beta_bubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubbleIsobaricThermalExpansionCoefficient_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubbleIsobaricThermalExpansionCoefficient_pxi;
  redeclare replaceable function extends dewIsothermalCompressibility_pxi
    algorithm
    kappa_dew := TILMedia.Internals.VLEFluid.ObjectFunctions.dewIsothermalCompressibility_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end dewIsothermalCompressibility_pxi;
  redeclare replaceable function extends bubbleIsothermalCompressibility_pxi
    algorithm
    kappa_bubble := TILMedia.Internals.VLEFluid.ObjectFunctions.bubbleIsothermalCompressibility_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end bubbleIsothermalCompressibility_pxi;
  redeclare replaceable function extends averageMolarMass_xi
    algorithm
    M := TILMedia.Internals.VLEFluid.ObjectFunctions.averageMolarMass_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end averageMolarMass_xi;
  redeclare replaceable function extends criticalDensity_xi
    algorithm
    dc := TILMedia.Internals.VLEFluid.ObjectFunctions.criticalDensity_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end criticalDensity_xi;
  redeclare replaceable function extends criticalSpecificEnthalpy_xi
    algorithm
    hc := TILMedia.Internals.VLEFluid.ObjectFunctions.criticalSpecificEnthalpy_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end criticalSpecificEnthalpy_xi;
  redeclare replaceable function extends criticalPressure_xi
    algorithm
    pc := TILMedia.Internals.VLEFluid.ObjectFunctions.criticalPressure_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end criticalPressure_xi;
  redeclare replaceable function extends criticalSpecificEntropy_xi
    algorithm
    sc := TILMedia.Internals.VLEFluid.ObjectFunctions.criticalSpecificEntropy_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end criticalSpecificEntropy_xi;
  redeclare replaceable function extends criticalTemperature_xi
    algorithm
    Tc := TILMedia.Internals.VLEFluid.ObjectFunctions.criticalTemperature_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end criticalTemperature_xi;
  redeclare replaceable function extends criticalSpecificIsobaricHeatCapacity_xi
    algorithm
    cpc := TILMedia.Internals.VLEFluid.ObjectFunctions.criticalSpecificIsobaricHeatCapacity_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end criticalSpecificIsobaricHeatCapacity_xi;
  redeclare replaceable function extends criticalIsobaricThermalExpansionCoefficient_xi
    algorithm
    betac := TILMedia.Internals.VLEFluid.ObjectFunctions.criticalIsobaricThermalExpansionCoefficient_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end criticalIsobaricThermalExpansionCoefficient_xi;
  redeclare replaceable function extends criticalIsothermalCompressibility_xi
    algorithm
    kappac := TILMedia.Internals.VLEFluid.ObjectFunctions.criticalIsothermalCompressibility_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end criticalIsothermalCompressibility_xi;
  redeclare replaceable function extends criticalThermalConductivity_xi
    algorithm
    lambdac := TILMedia.Internals.VLEFluid.ObjectFunctions.criticalThermalConductivity_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end criticalThermalConductivity_xi;
  redeclare replaceable function extends criticalDynamicViscosity_xi
    algorithm
    etac := TILMedia.Internals.VLEFluid.ObjectFunctions.criticalDynamicViscosity_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end criticalDynamicViscosity_xi;
  redeclare replaceable function extends criticalSurfaceTension_xi
    algorithm
    sigmac := TILMedia.Internals.VLEFluid.ObjectFunctions.criticalSurfaceTension_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end criticalSurfaceTension_xi;
  redeclare replaceable function extends cricondenbarTemperature_xi
    algorithm
    T_ccb := TILMedia.Internals.VLEFluid.ObjectFunctions.cricondenbarTemperature_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end cricondenbarTemperature_xi;
  redeclare replaceable function extends cricondenthermTemperature_xi
    algorithm
    T_cct := TILMedia.Internals.VLEFluid.ObjectFunctions.cricondenthermTemperature_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end cricondenthermTemperature_xi;
  redeclare replaceable function extends cricondenbarPressure_xi
    algorithm
    p_ccb := TILMedia.Internals.VLEFluid.ObjectFunctions.cricondenbarPressure_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end cricondenbarPressure_xi;
  redeclare replaceable function extends cricondenthermPressure_xi
    algorithm
    p_cct := TILMedia.Internals.VLEFluid.ObjectFunctions.cricondenthermPressure_xi(xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end cricondenthermPressure_xi;
  redeclare replaceable function extends molarMass_n
    algorithm
    M_i := TILMedia.Internals.VLEFluid.ObjectFunctions.molarMass_n(compNo, vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end molarMass_n;
  redeclare replaceable function extends der_specificEnthalpy_dTxi
    algorithm
    der_h := TILMedia.Internals.VLEFluid.ObjectFunctions.der_specificEnthalpy_dTxi(d,T,xi,vleFluidPointer,der_d,der_T,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_specificEnthalpy_dTxi;
  redeclare replaceable function extends der_pressure_dTxi
    algorithm
    der_p := TILMedia.Internals.VLEFluid.ObjectFunctions.der_pressure_dTxi(d,T,xi,vleFluidPointer,der_d,der_T,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_pressure_dTxi;
  redeclare replaceable function extends der_specificEntropy_dTxi
    algorithm
    der_s := TILMedia.Internals.VLEFluid.ObjectFunctions.der_specificEntropy_dTxi(d,T,xi,vleFluidPointer,der_d,der_T,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_specificEntropy_dTxi;
  redeclare replaceable function extends der_density_phxi
    algorithm
    der_d := TILMedia.Internals.VLEFluid.ObjectFunctions.der_density_phxi(p,h,xi,vleFluidPointer,der_p,der_h,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_density_phxi;
  redeclare replaceable function extends der_specificEntropy_phxi
    algorithm
    der_s := TILMedia.Internals.VLEFluid.ObjectFunctions.der_specificEntropy_phxi(p,h,xi,vleFluidPointer,der_p,der_h,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_specificEntropy_phxi;
  redeclare replaceable function extends der_temperature_phxi
    algorithm
    der_T := TILMedia.Internals.VLEFluid.ObjectFunctions.der_temperature_phxi(p,h,xi,vleFluidPointer,der_p,der_h,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_temperature_phxi;
  redeclare replaceable function extends der_density_psxi
    algorithm
    der_d := TILMedia.Internals.VLEFluid.ObjectFunctions.der_density_psxi(p,s,xi,vleFluidPointer,der_p,der_s,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_density_psxi;
  redeclare replaceable function extends der_specificEnthalpy_psxi
    algorithm
    der_h := TILMedia.Internals.VLEFluid.ObjectFunctions.der_specificEnthalpy_psxi(p,s,xi,vleFluidPointer,der_p,der_s,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_specificEnthalpy_psxi;
  redeclare replaceable function extends der_temperature_psxi
    algorithm
    der_T := TILMedia.Internals.VLEFluid.ObjectFunctions.der_temperature_psxi(p,s,xi,vleFluidPointer,der_p,der_s,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_temperature_psxi;
  redeclare replaceable function extends der_density_pTxi
    algorithm
    der_d := TILMedia.Internals.VLEFluid.ObjectFunctions.der_density_pTxi(p,T,xi,vleFluidPointer,der_p,der_T,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_density_pTxi;
  redeclare replaceable function extends der_specificEnthalpy_pTxi
    algorithm
    der_h := TILMedia.Internals.VLEFluid.ObjectFunctions.der_specificEnthalpy_pTxi(p,T,xi,vleFluidPointer,der_p,der_T,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_specificEnthalpy_pTxi;
  redeclare replaceable function extends der_specificEntropy_pTxi
    algorithm
    der_s := TILMedia.Internals.VLEFluid.ObjectFunctions.der_specificEntropy_pTxi(p,T,xi,vleFluidPointer,der_p,der_T,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_specificEntropy_pTxi;
end ObjectFunctions;
