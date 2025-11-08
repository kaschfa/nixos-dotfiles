{ pkgs, ... }:

{
  # Modern Mesa/Vulkan stack (replaces old hardware.opengl.* options)
  hardware.graphics = {
    enable = true;       # Mesa + Vulkan userspace
    enable32Bit = true;  # 32-bit userspace (Steam/Proton, older games)
    # Optional extras (uncomment as needed):
    # extraPackages = with pkgs; [
    #   rocmPackages.clr.icd   # OpenCL via ROCm (AMD)
    #   amdvlk                 # AMD's proprietary Vulkan ICD (if you want to compare vs RADV)
    # ];
  };

  # DRM driver hint (still useful for firmware/DRM selection)
  services.xserver.videoDrivers = [ "amdgpu" ];

  # Prefer RADV (Mesa) Vulkan. Only needed if you also install AMDVLK.
  environment.variables.AMD_VULKAN_ICD = "RADV";

  # Handy GPU debug tools (keep or drop as you like)
  environment.systemPackages = with pkgs; [
    vulkan-tools      # vkcube, vulkaninfo
    libva-utils       # vainfo
    mesa-demos        # glxinfo, etc.
  ];
}
