% Write file there
fileName='wavs/8k8bitpcm.wav';
[y, fs]=wavread(fileName);

time = (1:length(y(1:5000))) / fs;
interval = 1:5000;

plot(time,y(interval));
pause

plot(time, filterAndQuantize(y(interval)));
pause

[encodedFre, fres, huffTable] = huffEncodeFre(y(interval)');

ry = huffDecodeFre(encodedFre, fres, huffTable)

plot(time,ry);
pause
