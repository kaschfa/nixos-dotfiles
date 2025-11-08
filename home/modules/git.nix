{ ... }:
{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name  = "Fabian Kaschner";
        email = "kaschner.fab@gmail.com";
      };
      init.defaultBranch = "main";
      pull.rebase = true;        # optional but imo way better default
    };
  };
}
