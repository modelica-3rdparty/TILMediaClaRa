within TILMedia.Internals.GetIDXfromCAS.Substances;
record Substance
  extends TILMedia.Internals.ClassTypes.Record;
  String name = ""  "e.g. methane";
  String formula = ""  "e.g. CH4";
  String CAS =  "" "e.g. 74-82-8";

 annotation (Icon(coordinateSystem(preserveAspectRatio=false), graphics={
       Line(points={{-134,8}}, color={28,108,200})}),           Diagram(coordinateSystem(preserveAspectRatio=false)));

end Substance;
