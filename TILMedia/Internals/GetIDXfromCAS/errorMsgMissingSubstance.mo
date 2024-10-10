within TILMedia.Internals.GetIDXfromCAS;
function errorMsgMissingSubstance
  input String substanceName;
  input TILMedia.GasTypes.BaseGas gasType;
  input String modelName;

  output String msg;

protected
  Integer i;
  Integer lengthGasNameArray;

algorithm
  msg :="
  The model " + modelName + " requires a gasType that consists of 
    ";
   msg :=msg + substanceName;

   msg :=  msg + "
  ";
   msg := msg + "But the chosen gasType consists only of 
    ";

  lengthGasNameArray := size(gasType.gasNames,1);
  for i in 1:lengthGasNameArray loop
      msg := msg + gasType.gasNames[i] + "
    ";
  end for;

  msg := msg +  "
  ";

end errorMsgMissingSubstance;
