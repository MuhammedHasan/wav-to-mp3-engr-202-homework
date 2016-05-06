function [huffEncoded, fres, huffTable] = huffEncodeFre(fre)
  [fres, huff] = huffmanOfFre(fre);
  indexOfFres = [];
  for i = 1:length(fre)
    indexOfFres(i) = find(fres==fre(i));
  end
  huffEncoded = [huff{1,indexOfFres}];
  huffTable = huff;
end

[encodedFre, fres, huffTable] = huffEncodeFre([1.1 1.1 1.2 1.3]);
assert(encodedFre, [1   1   0   0   0   1]);
assert(length(fres), 3);
assert(length(huffTable), 3);
