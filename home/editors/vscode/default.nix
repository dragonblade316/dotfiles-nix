{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    extentions = with pkgs.vscaode-extensions; [
      rust-lang.rust-analyzer
    ];
  }
}
