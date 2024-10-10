within TILMedia;
package UsersGuide "User's Guide"
  extends TILMedia.Internals.ClassTypes.Information;


  annotation(DocumentationClass=true,
     Documentation(info="<html><p>

TILMedia Suite provides methods of calculation, which express thermo-physical properties of incompressible liquids, ideal gases as well as real fluids containing a vapor liquid equilibrium.
In each fluid category (Gas, Liquid and VLEFluids) mixtures may be created.
The mathematical equations of substance properties are optimized for stable and fast dynamic simulations of systems.
You may select substance data from different sources for your calculation:
<br>
</p>

  <br>
<b> Gas substances</b>
  <br>
    <ul> 
      <li> NASA Glenn Coefficients - \"NASA\": 2024 mediums</li>
      <li> TLK Implementation - \"TILMedia\": 8 mediums</li>
      <li> TLK Implementation - \"TILMediaXTR\": 12 mediums</li>
      <li> VDI-Guideline 4670 - \"VDI4670\": 9 mediums</li>
      <li> VDI Heat Atlas - \"VDIWA2006\": 275 mediums</li>
    </ul>

  <br>
<b> Liquid substances</b>
  <br>
    <ul> 
      <li> Baack 2020 - \"Baack2020\": 6 mediums</li>
      <li> Branan's Rules of Thumb - \"BranansRulesOfThumb\": 87 mediums</li>
      <li> International Institute of Refrigeration (IIR), Secondary Working Fluids (SWF) - \"IIR_SWF\": 8 mediums</li>
      <li> TLK Implementation - \"TILMedia\": 64 mediums</li>
      <li> TLK Implementation - \"TILMediaXTR\": 12 mediums</li>
      <li> VDI Heat Atlas - \"VDIWA2006\": 272 mediums</li>
    </ul>

  <br>
<b> Liquid Mixture substances</b>
  <br>
    <ul> 
      <li> Baack 2020 - \"Baack2020\": 2 mediums</li>
      <li> Branan's Rules of Thumb - \"BranansRulesOfThumb\": 9 mediums</li>
      <li> International Institute of Refrigeration (IIR), Secondary Working Fluids (SWF) - \"IIR_SWF\": 13 mediums</li>
      <li> TLK Implementation - \"TILMedia\": 18 mediums</li>
    </ul>

  <br>
<b> VLEFluid substances</b>
  <br>
    <ul> 
      <li> External library CoolProp - \"CoolProp\": 123 mediums</li>
      <li> External library Refprop - \"Refprop\": 279 mediums</li>
      <li> TLK Implementation - \"TILMedia\": 81 mediums</li>
      <li> TLK Implementation - \"TILMediaRT\": 6 mediums</li>
      <li> TLK Implementation - \"TILMediaXTR\": 12 mediums</li>
      <li> VDI Heat Atlas - \"VDIWA2006\": 275 mediums</li>
    </ul>


<br>
All available substances are listed in the User's Guide: <a href=\"modelica://TILMedia.UsersGuide.SubstanceNames\">Substance Names</a>.
On demand it is also possible to get interpolated property data, which are faster than TILMedia and REFPROP data.
<br>
<br>
</html>"));
end UsersGuide;
