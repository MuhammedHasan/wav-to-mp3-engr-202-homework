function huffEncoded = huffEncodeFre(fre)
  [fres,huff] = huffmanOfFre(fre);
  indexOfFres = [];
  for i = 1:length(fre)
    indexOfFres(i) = find(fres==fre(i));
  end
  huffEncoded = [huff{1,indexOfFres}];
end

assert(huffEncodeFre([1.1 1.1 1.2 1.3]), [1   1   0   0   0   1]);
