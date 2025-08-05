within TILMedia.BaseClasses;
package PartialLiquidObjectFunctions
  "Package for calculation of liquid properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.Internals.ClassTypes.ModelPackage;
  replaceable partial function specificEntropy_phxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.specificEntropy_phxi;
  replaceable partial function specificEntropy_pTxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.specificEntropy_pTxi;
  replaceable partial function density_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.density_Txi;
  replaceable partial function specificEnthalpy_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.specificEnthalpy_Txi;
  replaceable partial function specificIsobaricHeatCapacity_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.specificIsobaricHeatCapacity_Txi;
  replaceable partial function isobaricThermalExpansionCoefficient_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.isobaricThermalExpansionCoefficient_Txi;
  replaceable partial function prandtlNumber_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.prandtlNumber_Txi;
  replaceable partial function thermalConductivity_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.thermalConductivity_Txi;
  replaceable partial function dynamicViscosity_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.dynamicViscosity_Txi;
  replaceable partial function density_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.density_hxi;
  replaceable partial function temperature_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.temperature_hxi;
  replaceable partial function specificIsobaricHeatCapacity_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.specificIsobaricHeatCapacity_hxi;
  replaceable partial function isobaricThermalExpansionCoefficient_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.isobaricThermalExpansionCoefficient_hxi;
  replaceable partial function prandtlNumber_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.prandtlNumber_hxi;
  replaceable partial function thermalConductivity_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.thermalConductivity_hxi;
  replaceable partial function dynamicViscosity_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.dynamicViscosity_hxi;
  replaceable partial function der_specificEntropy_phxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_specificEntropy_phxi;
  replaceable partial function der_specificEntropy_pTxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_specificEntropy_pTxi;
  replaceable partial function der_density_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_density_Txi;
  replaceable partial function der_specificEnthalpy_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_specificEnthalpy_Txi;
  replaceable partial function der_specificIsobaricHeatCapacity_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_specificIsobaricHeatCapacity_Txi;
  replaceable partial function der_isobaricThermalExpansionCoefficient_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_isobaricThermalExpansionCoefficient_Txi;
  replaceable partial function der_prandtlNumber_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_prandtlNumber_Txi;
  replaceable partial function der_thermalConductivity_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_thermalConductivity_Txi;
  replaceable partial function der_dynamicViscosity_Txi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_dynamicViscosity_Txi;
  replaceable partial function der_density_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_density_hxi;
  replaceable partial function der_temperature_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_temperature_hxi;
  replaceable partial function der_specificIsobaricHeatCapacity_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_specificIsobaricHeatCapacity_hxi;
  replaceable partial function der_isobaricThermalExpansionCoefficient_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_isobaricThermalExpansionCoefficient_hxi;
  replaceable partial function der_prandtlNumber_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_prandtlNumber_hxi;
  replaceable partial function der_thermalConductivity_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_thermalConductivity_hxi;
  replaceable partial function der_dynamicViscosity_hxi =
      TILMedia.BaseClasses.PartialLiquidObjectFunctionPrototypes.der_dynamicViscosity_hxi;
end PartialLiquidObjectFunctions;
