within TILMedia.Internals.VLEFluid.MixtureCompatible;
package ObjectFunctions
  "Package for calculation of VLEFLuid properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.Internals.VLEFluid.ObjectFunctions;
  redeclare replaceable pure function specificEnthalpy_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEnthalpy_dTxi;
    external"C" h = TILMedia_VLEFluidObjectFunctions_specificEnthalpy_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_specificEnthalpy_dTxi(double,double,double*,void*);",
        Library="TILMedia190ClaRa");
  end specificEnthalpy_dTxi;
  redeclare replaceable pure function pressure_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.pressure_dTxi;
    external"C" p = TILMedia_VLEFluidObjectFunctions_pressure_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_pressure_dTxi(double,double,double*,void*);",
        Library="TILMedia190ClaRa");
  end pressure_dTxi;
  redeclare replaceable pure function specificEntropy_dTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEntropy_dTxi;
    external"C" s = TILMedia_VLEFluidObjectFunctions_specificEntropy_dTxi(
      d,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_specificEntropy_dTxi(double,double,double*,void*);",
        Library="TILMedia190ClaRa");
  end specificEntropy_dTxi;
  redeclare replaceable pure function specificEntropy_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEntropy_phxi;
    external"C" s = TILMedia_VLEFluidObjectFunctions_specificEntropy_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_specificEntropy_phxi(double,double,double*,void*);",
        Library="TILMedia190ClaRa");
  end specificEntropy_phxi;
  redeclare replaceable pure function temperature_phxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.temperature_phxi;
    external"C" T = TILMedia_VLEFluidObjectFunctions_temperature_phxi(
      p,
      h,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_temperature_phxi(double,double,double*,void*);",
        Library="TILMedia190ClaRa");
  end temperature_phxi;
  redeclare replaceable pure function density_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.density_psxi;
    external"C" d = TILMedia_VLEFluidObjectFunctions_density_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_density_psxi(double,double,double*,void*);",
        Library="TILMedia190ClaRa");
  end density_psxi;
  redeclare replaceable pure function specificEnthalpy_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEnthalpy_psxi;
    external"C" h = TILMedia_VLEFluidObjectFunctions_specificEnthalpy_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_specificEnthalpy_psxi(double,double,double*,void*);",
        Library="TILMedia190ClaRa");
  end specificEnthalpy_psxi;
  redeclare replaceable pure function temperature_psxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.temperature_psxi;
    external"C" T = TILMedia_VLEFluidObjectFunctions_temperature_psxi(
      p,
      s,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_temperature_psxi(double,double,double*,void*);",
        Library="TILMedia190ClaRa");
  end temperature_psxi;
  redeclare replaceable pure function density_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.density_pTxi;
    external"C" d = TILMedia_VLEFluidObjectFunctions_density_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_density_pTxi(double,double,double*,void*);",
        Library="TILMedia190ClaRa");
  end density_pTxi;
  redeclare replaceable pure function specificEnthalpy_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEnthalpy_pTxi;
    external"C" h = TILMedia_VLEFluidObjectFunctions_specificEnthalpy_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_specificEnthalpy_pTxi(double,double,double*,void*);",
        Library="TILMedia190ClaRa");
  end specificEnthalpy_pTxi;
  redeclare replaceable pure function specificEntropy_pTxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.specificEntropy_pTxi;
    external"C" s = TILMedia_VLEFluidObjectFunctions_specificEntropy_pTxi(
      p,
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluidObjectFunctions_specificEntropy_pTxi(double,double,double*,void*);",
        Library="TILMedia190ClaRa");
  end specificEntropy_pTxi;
end ObjectFunctions;
