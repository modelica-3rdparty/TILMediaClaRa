within TILMedia.Internals.GetIDXfromCAS;
function getIDXfromCAS
  "Function getIDXfromCAS(CAS, gasType, modelName) returns the Index IDX of  the substance identified w/ the given CAS number"
  input String CAS "CAS Number of the substance (as String)";
  //input TIL3_AddOn_HydrogenEnergySystems.TILMediaAddOn.Internals.CASstring CAS;
  input TILMedia.GasTypes.BaseGas gasType;
  input String modelName;
  input TILMedia.Internals.GetIDXfromCAS.assertionLevel assertionLevel=TILMedia.Internals.GetIDXfromCAS.assertionLevel.warning
    "given warning level, if component not exists: warning and noMessage results in output = -1";

  output Integer idx;

protected
  Integer lengthOfGasNamesArray;
  String  msg;

algorithm
  lengthOfGasNamesArray := size(gasType.gasNames, 1);

  idx := -1;
  for i in 1:lengthOfGasNamesArray loop
    if Modelica.Utilities.Strings.find(gasType.gasNames[i], CAS) > 0 then
      idx := i;
    end if;
  end for;

  if Modelica.Utilities.Strings.find(CAS, "Water") > 0 then
    // if the index of water is searched
    if Modelica.Utilities.Strings.find(gasType.gasNames[1], "TILMedia.MoistAir") > 0 or Modelica.Utilities.Strings.find(
         gasType.gasNames[1], "TILMediaXTR.MoistAir") > 0 then
      // for TILMedia.MoistAir the previous approach does not work
      idx := gasType.condensingIndex;
    end if;
  end if;

  if idx == -1 then
    msg := TILMedia.Internals.GetIDXfromCAS.errorMsgMissingSubstance(
      CAS,
      gasType,
      modelName);
    if assertionLevel == TILMedia.Internals.GetIDXfromCAS.assertionLevel.error then
      assert(idx > 0, msg);
    elseif assertionLevel == TILMedia.Internals.GetIDXfromCAS.assertionLevel.warning then
      assert(
        idx > 0,
        msg,
        level=AssertionLevel.warning);
      idx := -1;
    else
      // no error, no warning
      idx := -1;
    end if;
  end if;

  annotation (Documentation(info="<html>
<p><b>Syntax</b></p>
<p><code>parameter Integer</code> <code>idx</code> =<code> getIDXfromCAS</code>( <code>CAS, gasType, modelName,assertionLevel);</code></p>
<p><b>Description</b></p>
<p>Within a gas mixture the properties of that substance, which is specified by the given <code>CAS,</code>can be addressed by its <code>idx. </code>Currently, CAS is not the actual CAS number but a string that specifies the components name.<code> </code>For example, the partial pressure is then<code> p_i[idx]</code>. As an example for hydrogen, oxygen and water one could write</p>
<p><code>parameter Integer idx_H2 = getIDXfromCAS(TIL3_AddOn_HydrogenEnergySystems.Internals.Substances.H2.name, gasType, modelName);</code></p>
<p><code>parameter Integer idx_O2 = getIDXfromCAS(TIL3_AddOn_HydrogenEnergySystems.Internals.Substances.O2.name, gasType, modelName);</code></p>
<p><code>parameter Integer idx_H2O = getIDXfromCAS(TIL3_AddOn_HydrogenEnergySystems.Internals.Substances.H2O.name, gasType, modelName);</code></p>
<p><b>Error Handling</b></p>
<p>If the gasType does not contain the required substance different ways of error handling can be chosen via the input <code><a href=\"modelica://Diffusion_170624.Internals.Enumerations.assertionLevel\">assertionLevel</a>: </code></p>
<table cellspacing=\"2\" cellpadding=\"0\" border=\"0\"><tr>
<td><p><span style=\"font-family: Courier;\">assertionLevel = error</span>:</p></td>
<td></td>
<td><p>an error message is written to the Logs-window pointing the user to the model specified by modelName. It is convenient to use the built-in function getInstanceName() to set the modelName.</p></td>
</tr>
<tr>
<td><p><span style=\"font-family: Courier;\">assertionLevel = warning:</span></p></td>
<td></td>
<td><p>a warning message is written to the Logs-window and the value -1 is return as result of the function.</p></td>
</tr>
<tr>
<td><p><span style=\"font-family: Courier;\">assertionLevel = nomessage:</span></p></td>
<td></td>
<td><p>(disabled option) no warning is given. -1 is returned as result. Not recommended, since accessing concentration array with index -1 crashes the simulation.</p></td>
</tr>
</table>
</html>"));
end getIDXfromCAS;
