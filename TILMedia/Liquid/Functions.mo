within TILMedia.Liquid;
package Functions
  "Package for calculation of liquid properties with a functional call"
  extends TILMedia.BaseClasses.PartialLiquidFunctions;
  redeclare replaceable function
    extends specificEntropy_phxi
  algorithm
    s := TILMedia.Internals.Liquid.Functions.specificEntropy_phxi(p,h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end specificEntropy_phxi;
  redeclare replaceable function
    extends specificEntropy_pTxi
  algorithm
    s := TILMedia.Internals.Liquid.Functions.specificEntropy_pTxi(p,T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end specificEntropy_pTxi;
  redeclare replaceable function
    extends density_Txi
  algorithm
    d := TILMedia.Internals.Liquid.Functions.density_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end density_Txi;
  redeclare replaceable function
    extends specificEnthalpy_Txi
  algorithm
    h := TILMedia.Internals.Liquid.Functions.specificEnthalpy_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end specificEnthalpy_Txi;
  redeclare replaceable function
    extends specificIsobaricHeatCapacity_Txi
  algorithm
    cp := TILMedia.Internals.Liquid.Functions.specificIsobaricHeatCapacity_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end specificIsobaricHeatCapacity_Txi;
  redeclare replaceable function
    extends isobaricThermalExpansionCoefficient_Txi
  algorithm
    beta := TILMedia.Internals.Liquid.Functions.isobaricThermalExpansionCoefficient_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end isobaricThermalExpansionCoefficient_Txi;
  redeclare replaceable function
    extends prandtlNumber_Txi
  algorithm
    Pr := TILMedia.Internals.Liquid.Functions.prandtlNumber_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end prandtlNumber_Txi;
  redeclare replaceable function
    extends thermalConductivity_Txi
  algorithm
    lambda := TILMedia.Internals.Liquid.Functions.thermalConductivity_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end thermalConductivity_Txi;
  redeclare replaceable function
    extends dynamicViscosity_Txi
  algorithm
    eta := TILMedia.Internals.Liquid.Functions.dynamicViscosity_Txi(T,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end dynamicViscosity_Txi;
  redeclare replaceable function
    extends density_hxi
  algorithm
    d := TILMedia.Internals.Liquid.Functions.density_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end density_hxi;
  redeclare replaceable function
    extends temperature_hxi
  algorithm
    T := TILMedia.Internals.Liquid.Functions.temperature_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end temperature_hxi;
  redeclare replaceable function
    extends specificIsobaricHeatCapacity_hxi
  algorithm
    cp := TILMedia.Internals.Liquid.Functions.specificIsobaricHeatCapacity_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end specificIsobaricHeatCapacity_hxi;
  redeclare replaceable function
    extends isobaricThermalExpansionCoefficient_hxi
  algorithm
    beta := TILMedia.Internals.Liquid.Functions.isobaricThermalExpansionCoefficient_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end isobaricThermalExpansionCoefficient_hxi;
  redeclare replaceable function
    extends prandtlNumber_hxi
  algorithm
    Pr := TILMedia.Internals.Liquid.Functions.prandtlNumber_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end prandtlNumber_hxi;
  redeclare replaceable function
    extends thermalConductivity_hxi
  algorithm
    lambda := TILMedia.Internals.Liquid.Functions.thermalConductivity_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end thermalConductivity_hxi;
  redeclare replaceable function
    extends dynamicViscosity_hxi
  algorithm
    eta := TILMedia.Internals.Liquid.Functions.dynamicViscosity_hxi(h,xi,liquidType.concatLiquidName, liquidType.nc+TILMedia.Internals.redirectModelicaFormatMessage());
    annotation (Inline=false, LateInline=true);
  end dynamicViscosity_hxi;
end Functions;
