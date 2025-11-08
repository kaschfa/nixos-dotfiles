{ pkgs, ... }:

{
  # Minimal global toolchain so tools like nvim-treesitter can compile parsers.
  environment.systemPackages = with pkgs; [
    gcc            # 'cc' for compiling parsers
    gnumake        # used by many build scripts incl. treesitter recipes
    pkg-config     # common helper for native deps
    cmake          # handy (many projects use it)
    ninja          # fast builds; some plugins prefer it

    # Optional but useful when working with bindings / C headers:
    clang
    llvmPackages.libclang
  ];
}
