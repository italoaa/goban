{
  description = "Goban Emacs configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    emacs-overlay.url = "github:nix-community/emacs-overlay";
    emacs-overlay.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { nixpkgs, emacs-overlay, ... }:
    let
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];
    in {
      packages = nixpkgs.lib.genAttrs systems (system:
        let
          pkgs = import nixpkgs {
            inherit system;
            overlays = [ emacs-overlay.overlays.default ];
            config.allowUnfreePredicate = pkg:
              builtins.elem (nixpkgs.lib.getName pkg) [
                "copilot-language-server"
              ];
          };

          fonts = [
            pkgs.aporetic
            pkgs.iosevka-comfy.comfy-duo
            pkgs.noto-fonts-cjk-sans
          ];
        in {
          default = pkgs.writeShellApplication {
            name = "goban";

            runtimeInputs = [
              pkgs.emacs-unstable
              pkgs.copilot-language-server
              pkgs.enchant2
              pkgs.hunspell
              pkgs.hunspellDicts.en_US
              pkgs.hunspellDicts.en_GB-ise
              pkgs.pkg-config
            ];

            text = ''
              export PKG_CONFIG_PATH="${pkgs.enchant2.dev}/lib/pkgconfig"

              if [ "$(uname)" = Darwin ]; then
                mkdir -p "$HOME/Library/Fonts"
                ${nixpkgs.lib.concatMapStringsSep "\n" (font: ''
                  cp -rf ${font}/share/fonts/truetype/* "$HOME/Library/Fonts/" 2>/dev/null || true
                '') fonts}
              else
                mkdir -p "$HOME/.local/share/fonts"
                ${nixpkgs.lib.concatMapStringsSep "\n" (font: ''
                  cp -rf ${font}/share/fonts/truetype/* "$HOME/.local/share/fonts/" 2>/dev/null || true
                '') fonts}
                fc-cache -f "$HOME/.local/share/fonts"
              fi

              if [ ! -e "$HOME/.emacs.d/init.el" ]; then
                mkdir -p "$HOME/.emacs.d"
                cp -r ${./.}/. "$HOME/.emacs.d/"
              fi

              exec emacs "$@"
            '';
          };
        });
    };
}
