within TILMedia.Internals.GetIDXfromCAS;
record ListOfSubstances
    extends TILMedia.Internals.ClassTypes.Record;
  String list[:] = {TILMedia.Internals.GetIDXfromCAS.Substances.NH3.name,
      TILMedia.Internals.GetIDXfromCAS.Substances.Ar.name,
      TILMedia.Internals.GetIDXfromCAS.Substances.H2O.name,
      TILMedia.Internals.GetIDXfromCAS.Substances.H2.name,
      TILMedia.Internals.GetIDXfromCAS.Substances.paraH2.name,
      TILMedia.Internals.GetIDXfromCAS.Substances.orthoH2.name,
      TILMedia.Internals.GetIDXfromCAS.Substances.O2.name,
      TILMedia.Internals.GetIDXfromCAS.Substances.N2.name,
      TILMedia.Internals.GetIDXfromCAS.Substances.CH3OH.name,
      TILMedia.Internals.GetIDXfromCAS.Substances.CH4.name,
      TILMedia.Internals.GetIDXfromCAS.Substances.CO.name,
      TILMedia.Internals.GetIDXfromCAS.Substances.CO2.name,
      TILMedia.Internals.GetIDXfromCAS.Substances.SO2.name};

  annotation (Icon(coordinateSystem(preserveAspectRatio=false)), Diagram(coordinateSystem(preserveAspectRatio=false)));
end ListOfSubstances;
