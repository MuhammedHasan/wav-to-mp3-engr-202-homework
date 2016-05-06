function newFre = filterAndQuantize(fre)
  for i = 2:length(fre);
    if(abs(abs(fre(i)) - abs(fre(i-1))) < 0.05)
      fre(i) = fre(i-1);
    end
  end
  newFre = fre;
end

assert(filterAndQuantize([0.1 0.01 0.001 0.002 0.003]), [0.1 0.01 0.01 0.01 0.01])
