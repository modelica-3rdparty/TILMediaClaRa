within TILMedia.VLEFluid.MixtureCompatible;
package ObjectFunctions
  "Package for calculation of VLEFluid properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.VLEFluid.ObjectFunctions;
  redeclare replaceable function specificEnthalpy_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEnthalpy_dTxi;
  algorithm
    h := TILMedia.Internals.VLEFluid.MixtureCompatible.ObjectFunctions.specificEnthalpy_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end specificEnthalpy_dTxi;
  redeclare replaceable function pressure_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.pressure_dTxi;
  algorithm
    p := TILMedia.Internals.VLEFluid.MixtureCompatible.ObjectFunctions.pressure_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true,inverse(d=TILMedia.VLEFluid.MixtureCompatible.ObjectFunctions.density_pTxi(p,T,xi,vleFluidPointer)));
  end pressure_dTxi;
  redeclare replaceable function specificEntropy_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEntropy_dTxi;
  algorithm
    s := TILMedia.Internals.VLEFluid.MixtureCompatible.ObjectFunctions.specificEntropy_dTxi(d,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end specificEntropy_dTxi;
  redeclare replaceable function specificEntropy_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEntropy_phxi;
  algorithm
    s := TILMedia.Internals.VLEFluid.MixtureCompatible.ObjectFunctions.specificEntropy_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true,inverse(h=TILMedia.VLEFluid.MixtureCompatible.ObjectFunctions.specificEnthalpy_psxi(p,s,xi,vleFluidPointer)));
  end specificEntropy_phxi;
  redeclare replaceable function temperature_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.temperature_phxi;
  algorithm
    T := TILMedia.Internals.VLEFluid.MixtureCompatible.ObjectFunctions.temperature_phxi(p,h,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true,inverse(h=TILMedia.VLEFluid.MixtureCompatible.ObjectFunctions.specificEnthalpy_pTxi(p,T,xi,vleFluidPointer)));
  end temperature_phxi;
  redeclare replaceable function density_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.density_psxi;
  algorithm
    d := TILMedia.Internals.VLEFluid.MixtureCompatible.ObjectFunctions.density_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true);
  end density_psxi;
  redeclare replaceable function specificEnthalpy_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEnthalpy_psxi;
  algorithm
    h := TILMedia.Internals.VLEFluid.MixtureCompatible.ObjectFunctions.specificEnthalpy_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true,inverse(s=TILMedia.VLEFluid.MixtureCompatible.ObjectFunctions.specificEntropy_phxi(p,h,xi,vleFluidPointer)));
  end specificEnthalpy_psxi;
  redeclare replaceable function temperature_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.temperature_psxi;
  algorithm
    T := TILMedia.Internals.VLEFluid.MixtureCompatible.ObjectFunctions.temperature_psxi(p,s,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true,inverse(s=TILMedia.VLEFluid.MixtureCompatible.ObjectFunctions.specificEntropy_pTxi(p,T,xi,vleFluidPointer)));
  end temperature_psxi;
  redeclare replaceable function density_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.density_pTxi;
  algorithm
    d := TILMedia.Internals.VLEFluid.MixtureCompatible.ObjectFunctions.density_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true,inverse(p=TILMedia.VLEFluid.MixtureCompatible.ObjectFunctions.pressure_dTxi(d,T,xi,vleFluidPointer)));
  end density_pTxi;
  redeclare replaceable function specificEnthalpy_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEnthalpy_pTxi;
  algorithm
    h := TILMedia.Internals.VLEFluid.MixtureCompatible.ObjectFunctions.specificEnthalpy_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true,inverse(T=TILMedia.VLEFluid.MixtureCompatible.ObjectFunctions.temperature_phxi(p,h,xi,vleFluidPointer)));
  end specificEnthalpy_pTxi;
  redeclare replaceable function specificEntropy_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEntropy_pTxi;
  algorithm
    s := TILMedia.Internals.VLEFluid.MixtureCompatible.ObjectFunctions.specificEntropy_pTxi(p,T,xi,vleFluidPointer);
    annotation(Inline=false, LateInline=true,inverse(T=TILMedia.VLEFluid.MixtureCompatible.ObjectFunctions.temperature_psxi(p,s,xi,vleFluidPointer)));
  end specificEntropy_pTxi;
end ObjectFunctions;
