function huffDecoded = huffDecodeFre(binaries, fre, huff)
  % Huffmen Decoding
  huffDecoded = [];
  fre_binary  = [];
  for i = binaries
    fre_binary(length(fre_binary)+1) = i;
    for j = 1:length(fre)
        if (isequal(huff{1,j},  fre_binary))
          huffDecoded(length(huffDecoded)+1) = fre(j);
          fre_binary = [];
          break;
        end
    end
  end
end

fres = [0.1 0.2 0.3];
[encodedFre, fres, huffTable] = huffEncodeFre(fres);
assert(huffDecodeFre(encodedFre, fres, huffTable), fres')
