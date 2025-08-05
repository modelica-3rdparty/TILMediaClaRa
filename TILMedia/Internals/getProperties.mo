within TILMedia.Internals;
function getProperties
  input Real d,  h,  p,  s,  T,  cp, beta;
  input Real Pr,  lambda,  eta,  sigma;
  output TILMedia.Internals.PropertyRecord properties;
algorithm
  properties.d := d;
  properties.h := h;
  properties.p := p;
  properties.s := s;
  properties.T := T;
  properties.cp := cp;
  properties.beta := beta;
  properties.transp := TILMedia.Internals.TransportPropertyRecord(
    Pr=Pr,
    lambda=lambda,
    eta=eta,
    sigma=sigma);
end getProperties;
