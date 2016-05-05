function [fres,huff] = huffmanOfFre(fre)
  % huffmandict in communications octave package used
  pkg load communications;
  freProb = pmfOfFre(fre);
  fres = freProb(:,1);
  huff = huffmandict(freProb(:,1)', freProb(:,2)');
end
