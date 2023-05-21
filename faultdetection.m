% Parameters
sampling_freq = 4000; % Sampling frequency (Hz)
duration = 1; % Duration of the signal (seconds)
time = 0:1/sampling_freq:duration-1/sampling_freq; % Time vector

% Generate clean sinusoidal signal
frequency = 50; % Frequency of the sinusoid (Hz)
amplitude = 1; % Amplitude of the sinusoid
signal_clean = amplitude * sin(2*pi*frequency*time);

% Generate disturbance by adding random noise
noise_amplitude = 0.5; % Amplitude of the random noise
disturbance_time = 1000; % Time index when the disturbance occurs

% Create signal with initial zeros and disturbance after disturbance_time
signal_disturbed = zeros(size(time));
signal_disturbed(disturbance_time:end) = signal_clean(disturbance_time:end) + noise_amplitude*randn(size(time(disturbance_time:end)));

% Plot the signals
plot(time, signal_disturbed)
xlabel('Time (s)')
ylabel('Amplitude')
title('Signal with Electric Wave Disturbance')
