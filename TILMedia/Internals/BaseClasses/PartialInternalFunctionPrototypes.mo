within TILMedia.Internals.BaseClasses;
package PartialInternalFunctionPrototypes
  extends TILMedia.Internals.ClassTypes.ModelPackage;

  partial function meanDensity_phAhB
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunction;
    input Real p;
    input SI.MassFraction[:] xi
      "Mass fractions of the first nc-1 components";
    input Real h_A;
    input Real h_B;
    input TILMedia.Internals.TILMediaExternalObject
      cache_A "Pointer to external medium mem||y";
    input TILMedia.Internals.TILMediaExternalObject
      cache_B "Pointer to external medium mem||y";
    output Real rhobar;
    output Real drhobar_dp;
    output Real drhobar_dh1;
    output Real drhobar_dh2;
    output Real onePhase;
  end meanDensity_phAhB;
end PartialInternalFunctionPrototypes;
