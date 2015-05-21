function result = crosscor(ref,sound)
threshold = 300;
result = false;

ref = ref/max(abs(ref));
sound = sound/max(abs(sound));

cross = max(real(xcorr(ref,sound)));
if cross > threshold
    result = true;
end
end