{ pkgs, ... }:

{
  # We use PipeWire for audio (PulseAudio disabled)
  services.pulseaudio.enable = false;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;   # Steam / older games
    pulse.enable = true;        # PulseAudio compat layer
    jack.enable = true;         # If you ever use JACK apps
    wireplumber.enable = true;  # Session manager (recommended)
  };

  # QoL: real-time scheduling for audio (recommended with PipeWire)
  security.rtkit.enable = true;
}
