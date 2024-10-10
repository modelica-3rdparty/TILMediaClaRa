within TILMedia.Internals.VLEFluidConfigurations.PureComponentVLEFluid.SplineInterpolation;
package VLEFluidObjectFunctions
  extends TILMedia.VLEFluidObjectFunctions;

  redeclare replaceable function dewTemperature_pxi =
      TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.dewTemperature_pxi;
  redeclare replaceable function bubbleTemperature_pxi =
      TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.bubbleTemperature_pxi;
  redeclare replaceable function dewPressure_Txi =
      TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.dewPressure_Txi;
  redeclare replaceable function bubblePressure_Txi =
      TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.bubblePressure_Txi;

end VLEFluidObjectFunctions;
