within TILMedia.Liquid;
model Liquid "Incompressible liquid model for object and member function based evaluation"
  extends TILMedia.BaseClasses.PartialLiquid(
    liquidPointer=TILMedia.Internals.TILMediaExternalObject(
        "Liquid",
        liquidType.concatLiquidName,
        TILMedia.Internals.calcComputeFlags(
          computeTransportProperties,
          false,
          true,
          false,
          false),
        liquidType.mixingRatio_propertyCalculation[1:end - 1]/sum(liquidType.mixingRatio_propertyCalculation),
        liquidType.nc,
        0,
        getInstanceName()),
  redeclare replaceable function s_phxi =
      TILMedia.Liquid.ObjectFunctions.specificEntropy_phxi,
  redeclare replaceable function s_pTxi =
      TILMedia.Liquid.ObjectFunctions.specificEntropy_pTxi,
  redeclare replaceable function d_Txi =
      TILMedia.Liquid.ObjectFunctions.density_Txi,
  redeclare replaceable function h_Txi =
      TILMedia.Liquid.ObjectFunctions.specificEnthalpy_Txi,
  redeclare replaceable function cp_Txi =
      TILMedia.Liquid.ObjectFunctions.specificIsobaricHeatCapacity_Txi,
  redeclare replaceable function beta_Txi =
      TILMedia.Liquid.ObjectFunctions.isobaricThermalExpansionCoefficient_Txi,
  redeclare replaceable function Pr_Txi =
      TILMedia.Liquid.ObjectFunctions.prandtlNumber_Txi,
  redeclare replaceable function lambda_Txi =
      TILMedia.Liquid.ObjectFunctions.thermalConductivity_Txi,
  redeclare replaceable function eta_Txi =
      TILMedia.Liquid.ObjectFunctions.dynamicViscosity_Txi,
  redeclare replaceable function d_hxi =
      TILMedia.Liquid.ObjectFunctions.density_hxi,
  redeclare replaceable function T_hxi =
      TILMedia.Liquid.ObjectFunctions.temperature_hxi,
  redeclare replaceable function cp_hxi =
      TILMedia.Liquid.ObjectFunctions.specificIsobaricHeatCapacity_hxi,
  redeclare replaceable function beta_hxi =
      TILMedia.Liquid.ObjectFunctions.isobaricThermalExpansionCoefficient_hxi,
  redeclare replaceable function Pr_hxi =
      TILMedia.Liquid.ObjectFunctions.prandtlNumber_hxi,
  redeclare replaceable function lambda_hxi =
      TILMedia.Liquid.ObjectFunctions.thermalConductivity_hxi,
  redeclare replaceable function eta_hxi =
      TILMedia.Liquid.ObjectFunctions.dynamicViscosity_hxi);
  annotation (defaultComponentName="liquid", Protection(access=Access.packageDuplicate));
end Liquid;
