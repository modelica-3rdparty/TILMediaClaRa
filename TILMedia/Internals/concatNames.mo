within TILMedia.Internals;
function concatNames
 input String names[:];
 output String concatName;
algorithm
  concatName := "";
  if (size(names, 1)>0) then
  concatName := names[1];
  end if;

    for i in 2:size(names, 1) loop
      concatName := concatName + "|" + names[i];
    end for;

  // Conversion from TSMedia to TILMedia:
  concatName := Modelica.Utilities.Strings.replace(concatName,"TSMedia","TILMedia",1,true,false);

end concatNames;
