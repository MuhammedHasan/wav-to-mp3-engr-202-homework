% Write file there
fileName='wavs/8k8bitpcm.wav';
[y, fs]=wavread(fileName);

time=(1:length(y))/fs;
% plot(time, y);

disp(length(huffEncodeFre(y(1:10))))
