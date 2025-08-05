within TILMedia.Internals.VLEFluid.SplineDerivatives;
package ObjectFunctions
  "Package for calculation of VLEFLuid properties with a functional call, referencing existing external objects for highspeed evaluation"
  extends TILMedia.Internals.VLEFluid.ObjectFunctions;

  redeclare replaceable pure function dewPressure_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewPressure_Txi;
    external"C" p_dew = TILMedia_VLEFluid_Cached_dewPressure_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluid_Cached_dewPressure_Txi(double,double*,void*);",
        Library="TILMedia190ClaRa");
  end dewPressure_Txi;
  redeclare replaceable pure function bubblePressure_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubblePressure_Txi;
    external"C" p_bubble = TILMedia_VLEFluid_Cached_bubblePressure_Txi(
      T,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluid_Cached_bubblePressure_Txi(double,double*,void*);",
        Library="TILMedia190ClaRa");
  end bubblePressure_Txi;
  redeclare replaceable pure function dewTemperature_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.dewTemperature_pxi;
    external"C" T_dew = TILMedia_VLEFluid_Cached_dewTemperature_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluid_Cached_dewTemperature_pxi(double,double*,void*);",
        Library="TILMedia190ClaRa");
  end dewTemperature_pxi;
  redeclare replaceable pure function bubbleTemperature_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.bubbleTemperature_pxi;
    external"C" T_bubble = TILMedia_VLEFluid_Cached_bubbleTemperature_pxi(
      p,
      xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluid_Cached_bubbleTemperature_pxi(double,double*,void*);",
        Library="TILMedia190ClaRa");
  end bubbleTemperature_pxi;
  redeclare replaceable pure function der_dewPressure_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.der_dewPressure_Txi;
    external"C" der_p_dew = TILMedia_VLEFluid_Cached_der_dewPressure_Txi(
      T,
      xi,
      der_T,
      der_xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluid_Cached_der_dewPressure_Txi(double,double*,double,double*,void*);",
        Library="TILMedia190ClaRa");
  end der_dewPressure_Txi;
  redeclare replaceable pure function der_bubblePressure_Txi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.der_bubblePressure_Txi;
    external"C" der_p_bubble = TILMedia_VLEFluid_Cached_der_bubblePressure_Txi(
      T,
      xi,
      der_T,
      der_xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluid_Cached_der_bubblePressure_Txi(double,double*,double,double*,void*);",
        Library="TILMedia190ClaRa");
  end der_bubblePressure_Txi;
  redeclare replaceable pure function der_dewTemperature_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.der_dewTemperature_pxi;
    external"C" der_T_dew = TILMedia_VLEFluid_Cached_der_dewTemperature_pxi(
      p,
      xi,
      der_p,
      der_xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluid_Cached_der_dewTemperature_pxi(double,double*,double,double*,void*);",
        Library="TILMedia190ClaRa");
  end der_dewTemperature_pxi;
  redeclare replaceable pure function der_bubbleTemperature_pxi
    extends TILMedia.BaseClasses.PartialVLEFluidObjectFunctionPrototypes.der_bubbleTemperature_pxi;
    external"C" der_T_bubble = TILMedia_VLEFluid_Cached_der_bubbleTemperature_pxi(
      p,
      xi,
      der_p,
      der_xi,
      vleFluidPointer) annotation(
        __iti_dllNoExport=true,
        Include=
          "double TILMedia_VLEFluid_Cached_der_bubbleTemperature_pxi(double,double*,double,double*,void*);",
        Library="TILMedia190ClaRa");
  end der_bubbleTemperature_pxi;
end ObjectFunctions;
