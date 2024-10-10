within TILMedia.Internals.VLEFluidConfigurations.PureComponentVLEFluid.SplineInterpolation;
model VLEFluid
  extends TILMedia.VLEFluid(
    redeclare replaceable function T_dew_pxi =
        TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.dewTemperature_pxi (vleFluidPointer=
            vleFluidPointer),
    redeclare replaceable function T_bubble_pxi =
        TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.bubbleTemperature_pxi (vleFluidPointer=
            vleFluidPointer),
    redeclare replaceable function p_dew_Txi =
        TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.dewPressure_Txi (vleFluidPointer=
            vleFluidPointer),
    redeclare replaceable function p_bubble_Txi =
        TILMedia.Internals.VLEFluidObjectFunctions.PureComponentDerivatives.bubblePressure_Txi (vleFluidPointer=
            vleFluidPointer));
end VLEFluid;
