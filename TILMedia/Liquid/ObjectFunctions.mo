within TILMedia.Liquid;
package ObjectFunctions
  "Package for calculation of liquid properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.BaseClasses.PartialLiquidObjectFunctions;
  redeclare replaceable function extends specificEntropy_phxi
    algorithm
    s := TILMedia.Internals.Liquid.ObjectFunctions.specificEntropy_phxi(p,h,xi,liquidPointer);
    annotation(Inline=false, LateInline=true);
  end specificEntropy_phxi;
  redeclare replaceable function extends specificEntropy_pTxi
    algorithm
    s := TILMedia.Internals.Liquid.ObjectFunctions.specificEntropy_pTxi(p,T,xi,liquidPointer);
    annotation(Inline=false, LateInline=true);
  end specificEntropy_pTxi;
  redeclare replaceable function extends density_Txi
    algorithm
    d := TILMedia.Internals.Liquid.ObjectFunctions.density_Txi(T,xi,liquidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=liquidPointer) = TILMedia.Liquid.ObjectFunctions.der_density_Txi);
  end density_Txi;
  redeclare replaceable function extends specificEnthalpy_Txi
    algorithm
    h := TILMedia.Internals.Liquid.ObjectFunctions.specificEnthalpy_Txi(T,xi,liquidPointer);
    annotation(inverse(T=TILMedia.Liquid.ObjectFunctions.temperature_hxi(h,xi,liquidPointer)),Inline=false, LateInline=true, derivative(noDerivative=liquidPointer) = TILMedia.Liquid.ObjectFunctions.der_specificEnthalpy_Txi);
  end specificEnthalpy_Txi;
  redeclare replaceable function extends specificIsobaricHeatCapacity_Txi
    algorithm
    cp := TILMedia.Internals.Liquid.ObjectFunctions.specificIsobaricHeatCapacity_Txi(T,xi,liquidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=liquidPointer) = TILMedia.Liquid.ObjectFunctions.der_specificIsobaricHeatCapacity_Txi);
  end specificIsobaricHeatCapacity_Txi;
  redeclare replaceable function extends isobaricThermalExpansionCoefficient_Txi
    algorithm
    beta := TILMedia.Internals.Liquid.ObjectFunctions.isobaricThermalExpansionCoefficient_Txi(T,xi,liquidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=liquidPointer) = TILMedia.Liquid.ObjectFunctions.der_isobaricThermalExpansionCoefficient_Txi);
  end isobaricThermalExpansionCoefficient_Txi;
  redeclare replaceable function extends prandtlNumber_Txi
    algorithm
    Pr := TILMedia.Internals.Liquid.ObjectFunctions.prandtlNumber_Txi(T,xi,liquidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=liquidPointer) = TILMedia.Liquid.ObjectFunctions.der_prandtlNumber_Txi);
  end prandtlNumber_Txi;
  redeclare replaceable function extends thermalConductivity_Txi
    algorithm
    lambda := TILMedia.Internals.Liquid.ObjectFunctions.thermalConductivity_Txi(T,xi,liquidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=liquidPointer) = TILMedia.Liquid.ObjectFunctions.der_thermalConductivity_Txi);
  end thermalConductivity_Txi;
  redeclare replaceable function extends dynamicViscosity_Txi
    algorithm
    eta := TILMedia.Internals.Liquid.ObjectFunctions.dynamicViscosity_Txi(T,xi,liquidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=liquidPointer) = TILMedia.Liquid.ObjectFunctions.der_dynamicViscosity_Txi);
  end dynamicViscosity_Txi;
  redeclare replaceable function extends density_hxi
    algorithm
    d := TILMedia.Internals.Liquid.ObjectFunctions.density_hxi(h,xi,liquidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=liquidPointer) = TILMedia.Liquid.ObjectFunctions.der_density_hxi);
  end density_hxi;
  redeclare replaceable function extends temperature_hxi
    algorithm
    T := TILMedia.Internals.Liquid.ObjectFunctions.temperature_hxi(h,xi,liquidPointer);
    annotation(inverse(h=TILMedia.Liquid.ObjectFunctions.specificEnthalpy_Txi(T,xi,liquidPointer)),Inline=false, LateInline=true, derivative(noDerivative=liquidPointer) = TILMedia.Liquid.ObjectFunctions.der_temperature_hxi);
  end temperature_hxi;
  redeclare replaceable function extends specificIsobaricHeatCapacity_hxi
    algorithm
    cp := TILMedia.Internals.Liquid.ObjectFunctions.specificIsobaricHeatCapacity_hxi(h,xi,liquidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=liquidPointer) = TILMedia.Liquid.ObjectFunctions.der_specificIsobaricHeatCapacity_hxi);
  end specificIsobaricHeatCapacity_hxi;
  redeclare replaceable function extends isobaricThermalExpansionCoefficient_hxi
    algorithm
    beta := TILMedia.Internals.Liquid.ObjectFunctions.isobaricThermalExpansionCoefficient_hxi(h,xi,liquidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=liquidPointer) = TILMedia.Liquid.ObjectFunctions.der_isobaricThermalExpansionCoefficient_hxi);
  end isobaricThermalExpansionCoefficient_hxi;
  redeclare replaceable function extends prandtlNumber_hxi
    algorithm
    Pr := TILMedia.Internals.Liquid.ObjectFunctions.prandtlNumber_hxi(h,xi,liquidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=liquidPointer) = TILMedia.Liquid.ObjectFunctions.der_prandtlNumber_hxi);
  end prandtlNumber_hxi;
  redeclare replaceable function extends thermalConductivity_hxi
    algorithm
    lambda := TILMedia.Internals.Liquid.ObjectFunctions.thermalConductivity_hxi(h,xi,liquidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=liquidPointer) = TILMedia.Liquid.ObjectFunctions.der_thermalConductivity_hxi);
  end thermalConductivity_hxi;
  redeclare replaceable function extends dynamicViscosity_hxi
    algorithm
    eta := TILMedia.Internals.Liquid.ObjectFunctions.dynamicViscosity_hxi(h,xi,liquidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=liquidPointer) = TILMedia.Liquid.ObjectFunctions.der_dynamicViscosity_hxi);
  end dynamicViscosity_hxi;
  redeclare replaceable function extends der_density_Txi
    algorithm
    der_d := TILMedia.Internals.Liquid.ObjectFunctions.der_density_Txi(T,xi,liquidPointer,der_T,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_density_Txi;
  redeclare replaceable function extends der_specificEnthalpy_Txi
    algorithm
    der_h := TILMedia.Internals.Liquid.ObjectFunctions.der_specificEnthalpy_Txi(T,xi,liquidPointer,der_T,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_specificEnthalpy_Txi;
  redeclare replaceable function extends der_specificIsobaricHeatCapacity_Txi
    algorithm
    der_cp := TILMedia.Internals.Liquid.ObjectFunctions.der_specificIsobaricHeatCapacity_Txi(T,xi,liquidPointer,der_T,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_specificIsobaricHeatCapacity_Txi;
  redeclare replaceable function extends der_isobaricThermalExpansionCoefficient_Txi
    algorithm
    der_beta := TILMedia.Internals.Liquid.ObjectFunctions.der_isobaricThermalExpansionCoefficient_Txi(T,xi,liquidPointer,der_T,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_isobaricThermalExpansionCoefficient_Txi;
  redeclare replaceable function extends der_prandtlNumber_Txi
    algorithm
    der_Pr := TILMedia.Internals.Liquid.ObjectFunctions.der_prandtlNumber_Txi(T,xi,liquidPointer,der_T,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_prandtlNumber_Txi;
  redeclare replaceable function extends der_thermalConductivity_Txi
    algorithm
    der_lambda := TILMedia.Internals.Liquid.ObjectFunctions.der_thermalConductivity_Txi(T,xi,liquidPointer,der_T,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_thermalConductivity_Txi;
  redeclare replaceable function extends der_dynamicViscosity_Txi
    algorithm
    der_eta := TILMedia.Internals.Liquid.ObjectFunctions.der_dynamicViscosity_Txi(T,xi,liquidPointer,der_T,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_dynamicViscosity_Txi;
  redeclare replaceable function extends der_density_hxi
    algorithm
    der_d := TILMedia.Internals.Liquid.ObjectFunctions.der_density_hxi(h,xi,liquidPointer,der_h,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_density_hxi;
  redeclare replaceable function extends der_temperature_hxi
    algorithm
    der_T := TILMedia.Internals.Liquid.ObjectFunctions.der_temperature_hxi(h,xi,liquidPointer,der_h,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_temperature_hxi;
  redeclare replaceable function extends der_specificIsobaricHeatCapacity_hxi
    algorithm
    der_cp := TILMedia.Internals.Liquid.ObjectFunctions.der_specificIsobaricHeatCapacity_hxi(h,xi,liquidPointer,der_h,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_specificIsobaricHeatCapacity_hxi;
  redeclare replaceable function extends der_isobaricThermalExpansionCoefficient_hxi
    algorithm
    der_beta := TILMedia.Internals.Liquid.ObjectFunctions.der_isobaricThermalExpansionCoefficient_hxi(h,xi,liquidPointer,der_h,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_isobaricThermalExpansionCoefficient_hxi;
  redeclare replaceable function extends der_prandtlNumber_hxi
    algorithm
    der_Pr := TILMedia.Internals.Liquid.ObjectFunctions.der_prandtlNumber_hxi(h,xi,liquidPointer,der_h,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_prandtlNumber_hxi;
  redeclare replaceable function extends der_thermalConductivity_hxi
    algorithm
    der_lambda := TILMedia.Internals.Liquid.ObjectFunctions.der_thermalConductivity_hxi(h,xi,liquidPointer,der_h,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_thermalConductivity_hxi;
  redeclare replaceable function extends der_dynamicViscosity_hxi
    algorithm
    der_eta := TILMedia.Internals.Liquid.ObjectFunctions.der_dynamicViscosity_hxi(h,xi,liquidPointer,der_h,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_dynamicViscosity_hxi;
end ObjectFunctions;
