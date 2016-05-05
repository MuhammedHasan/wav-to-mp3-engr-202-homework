function pmf = pmfOfFre(fre)
  % pmf calculation for fre
  counts = [fre(1) 1];
  for i = fre(2:length(fre));
    if sum(counts(:,1) == i)
      indexOfFre = find(counts(:,1)==i);
      counts(indexOfFre, 2) = counts(indexOfFre, 2) + 1;
    else
      counts = [counts;i 1];
    end
  end

  pmf(:,1) = counts(:,1);
  pmf(:,2) = counts(:,2)/sum(counts(:,2));
end

assert(pmfOfFre([1.11 1.22]),[1.11 0.5; 1.22 0.5])
assert(pmfOfFre([1.11 1.11 1.11 1.11 1.22]),[1.11 0.8; 1.22 0.2])
