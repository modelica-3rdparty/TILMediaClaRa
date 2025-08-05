within TILMedia.UsersGuide;
class SubstanceRecord "Substance Record"
  extends TILMedia.Internals.ClassTypes.Information;

    annotation(DocumentationClass=true,
     Documentation(info="<html>
<p>Every substance model contains a substance record as replaceable parameter for the object-oriented calculation of thermo-physical properties. The substance record contains the following parameters: </p>
<ul>
<li>fixedMixingRatio - Boolean = true, if mixing ratio fixed during simulation. </li>
<li>nc_propertyCalculation - Integer with number of components which are calculated. </li>
<li>\"substanceNames\" - gasNames, liquidNames, etc. Array which lists the substance names. </li>
<li>mixingRatio_propertyCalculation - Array with the mixing ratio of all substances. </li>
<li>condensingIndex - Only for gas mixtures: Integer with the index of the component that can condense.</li>
</ul>
<p>To access the properties of an additional substance, it is recommended to create a new substance record. A new substance record is easily created by duplicating the substance record of an existing medium (e.g. \"TILMedia.VLEFluid.Types.TILMedia_R134a\"). To assign the new substance, the <code>vleFluidNames</code> parameter has to be changed to the new substance name (e.g. \"TILMedia.TILMedia_R1233ZD\"), included in the <a href=\"modelica://TILMedia.UsersGuide.SubstanceNames\">list of available substances</a>. In the record, the parameters listed above have to be specified, using the modifier (brackets behind the base class) of the new substance record. An example of a user-defined substance record is shown below: </p>
<p>Pure substance example:
</p><p><code><span style=\"color: #0000ff;\">record</span> TILMedia_R1233ZDE <span style=\"color: #006400;\">\"TILMedia.R1233ZDE\"</span></code>
<br><code>  <span style=\"color: #0000ff;\">extends </span><span style=\"color: #ff0000;\">TILMedia.VLEFluid.Types.BaseVLEFluid</span>(</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>fixedMixingRatio=true,</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>nc_propertyCalculation=1,</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>vleFluidNames={\"TILMedia.R1233ZDE\"},</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>mixingRatio_propertyCalculation={1});</code>
<br><code><span style=\"color: #0000ff;\">end </span>TILMedia_R1233ZDE;</code></p>
<p>Mixture example:
</p><p><code><span style=\"color: #0000ff;\">record</span> TILMediaXTR_MyGasMixture <span style=\"color: #006400;\">\"MyGasMixture\"</span></code>
<br><code>  <span style=\"color: #0000ff;\">extends </span><span style=\"color: #ff0000;\">TILMedia.Gas.Types.BaseGas</span>(</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>fixedMixingRatio=false,</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>nc_propertyCalculation=4,</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>gasNames={\"TILMediaXTR.Water\", \"TILMediaXTR.Oxygen\", \"TILMediaXTR.Nitrogen\", \"TILMediaXTR.Carbon_Dioxide\"},</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>condensingIndex=1,</code>
<br><code>    <span style=\"color: #0000ff;\">final </span>mixingRatio_propertyCalculation={0.001,0.25,0.75,0.001});</code>
<br><code><span style=\"color: #0000ff;\">end </span>TILMediaXTR_MyGasMixture;</code></p>
<p>The defined <code>mixingRatio_propertyCalculation</code> describes the default mass fractions of all components. It is possible to give other and also time varying mass fractions xi for mixtures during a simulation. This array xi contains only the independent number of mass fractions, therefore it equals the number of components <code>nc</code> minus one. </p>
<p>All available substance names are listed in the user's guide: <a href=\"modelica://TILMedia.UsersGuide.SubstanceNames\">Substance Names</a>.</p>
</html>"));
end SubstanceRecord;
