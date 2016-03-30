% Write file there
fileName='8k16bitpcm.wav';
[y, fs]=wavread(fileName);

time=(1:length(y))/fs;
plot(time, y);
