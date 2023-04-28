f = [0 5];
t = [0 5];
fs = 150;
[t,x] = generateChirp(f,t,fs);
spectrogram(x,'power','yaxis');
saveas(gcf, "chirp-spectrogram.jpg");