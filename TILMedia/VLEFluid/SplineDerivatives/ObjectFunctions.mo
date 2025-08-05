within TILMedia.VLEFluid.SplineDerivatives;
package ObjectFunctions
  "Package for calculation of VLEFluid properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.VLEFluid.ObjectFunctions;

  redeclare replaceable function dewPressure_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewPressure_Txi;
  algorithm
    p_dew := TILMedia.Internals.VLEFluid.SplineDerivatives.ObjectFunctions.dewPressure_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.SplineDerivatives.ObjectFunctions.der_dewPressure_Txi);
  end dewPressure_Txi;
  redeclare replaceable function bubblePressure_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubblePressure_Txi;
  algorithm
    p_bubble := TILMedia.Internals.VLEFluid.SplineDerivatives.ObjectFunctions.bubblePressure_Txi(T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.SplineDerivatives.ObjectFunctions.der_bubblePressure_Txi);
  end bubblePressure_Txi;
  redeclare replaceable function dewTemperature_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewTemperature_pxi;
  algorithm
    T_dew := TILMedia.Internals.VLEFluid.SplineDerivatives.ObjectFunctions.dewTemperature_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.SplineDerivatives.ObjectFunctions.der_dewTemperature_pxi);
  end dewTemperature_pxi;
  redeclare replaceable function bubbleTemperature_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleTemperature_pxi;
  algorithm
    T_bubble := TILMedia.Internals.VLEFluid.SplineDerivatives.ObjectFunctions.bubbleTemperature_pxi(p,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true, derivative(noDerivative=vleFluidPointer) = TILMedia.VLEFluid.SplineDerivatives.ObjectFunctions.der_bubbleTemperature_pxi);
  end bubbleTemperature_pxi;

  redeclare replaceable function der_dewPressure_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.der_dewPressure_Txi;
    algorithm
    der_p_dew := TILMedia.Internals.VLEFluid.SplineDerivatives.ObjectFunctions.der_dewPressure_Txi(T,xi,vleFluidPointer,der_T,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_dewPressure_Txi;
  redeclare replaceable function der_bubblePressure_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.der_bubblePressure_Txi;
    algorithm
    der_p_bubble := TILMedia.Internals.VLEFluid.SplineDerivatives.ObjectFunctions.der_bubblePressure_Txi(T,xi,vleFluidPointer,der_T,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_bubblePressure_Txi;
  redeclare replaceable function der_dewTemperature_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.der_dewTemperature_pxi;
    algorithm
    der_T_dew := TILMedia.Internals.VLEFluid.SplineDerivatives.ObjectFunctions.der_dewTemperature_pxi(p,xi,vleFluidPointer,der_p,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_dewTemperature_pxi;
  redeclare replaceable function der_bubbleTemperature_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.der_bubbleTemperature_pxi;
    algorithm
    der_T_bubble := TILMedia.Internals.VLEFluid.SplineDerivatives.ObjectFunctions.der_bubbleTemperature_pxi(p,xi,vleFluidPointer,der_p,der_xi);
    annotation(Inline=false, LateInline=true);
  end der_bubbleTemperature_pxi;
end ObjectFunctions;
