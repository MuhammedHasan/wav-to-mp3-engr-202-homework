% Write file there
fileName='wavs/8k8bitpcm.wav';
[y, fs]=wavread(fileName);

time = (1:length(y(1:300))) / fs;

plot(time, y(1:300))
pause

[encodedFre, fres, huffTable] = huffEncodeFre(y(1:300)');


ry = huffDecodeFre(encodedFre, fres, huffTable)

time = (1:length(ry)) / fs;

plot(time, ry)
pause
