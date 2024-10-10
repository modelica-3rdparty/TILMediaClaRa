within TILMedia.Internals;
record PropertyRecordExtended "Extended property record"
  extends TILMedia.Internals.PropertyRecord;
  Real gamma=0 "Heat capacity ratio aka isentropic expansion factor";
  SI.Velocity w=0 "Speed of sound";
end PropertyRecordExtended;
