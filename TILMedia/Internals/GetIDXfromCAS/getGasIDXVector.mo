within TILMedia.Internals.GetIDXfromCAS;
function getGasIDXVector
  "Function getGasIDXVector(gasType, listOfSubstances) returns a vector with the the position of the gases of gastypes in the given listOfSubstances."

  input TILMedia.Gas.Types.BaseGas gasType;
  input TILMedia.Internals.GetIDXfromCAS.ListOfSubstances listOfSubstances;
  output Integer gasIDXVector[size(gasType.gasNames,1)];

protected
  Integer fullIDXVector[size(listOfSubstances.list,1)];
algorithm
  fullIDXVector := zeros(size(listOfSubstances.list, 1));
  gasIDXVector := zeros(gasType.nc);
  for i in 1:size(listOfSubstances.list, 1) loop
    fullIDXVector[i] := TILMedia.Internals.GetIDXfromCAS.getIDXfromCAS(
      listOfSubstances.list[i],
      gasType,
      getInstanceName(),
      TILMedia.Internals.GetIDXfromCAS.assertionLevel.nomessage);
    if fullIDXVector[i] > 0 then
      gasIDXVector[fullIDXVector[i]] := i;
    end if;
  end for;

  annotation (Documentation(info="<html>
<h4>Syntax</h4>
<p><code>parameter Integer</code> <code>gasIDXVector</code> =<code> getGasIDXVector</code>( <code>gasType, listOfSubtances);</code></p>
<h4>Description</h4>
<p>The position of the gases of a gas mixture in the given listOfSubstances is returned as a vector.</p>
<p>The listOfSubstances you can find in TILMedia.Internals.GetIDXfromCAS.ListOfSubstances.</p>
</html>"));
end getGasIDXVector;
