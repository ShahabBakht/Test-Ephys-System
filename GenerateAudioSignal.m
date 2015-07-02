function GenerateAudioSignal(type,param)
switch type
    case 'sine'
        f = param.freq;
        t = param.StartTime:1/param.SampleRate:param.EndTime;
        sig = 5*sin(2*pi*f*t);
    case 'white_noise'
        t = param.StartTime:1/param.SampleRate:param.EndTime;
        sig = randn(1,length(t));
end

sound(sig,param.SampleRate);

end
