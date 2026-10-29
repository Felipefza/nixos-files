jdkslajdlsajdlksajl
# Define a user account. Don't forget to set a password with ‘passwd’.
users.users."celestly" = {
  isNormalUser = true;
  description = "Celestly";
  extraGroups = [ "networkmanager" "wheel" ];
  
  # Packages Global
  packages = with pkgs; [
    #KDE APPS
    kdePackages.spectacle
    
    # APPS
    vlc
    steam
    
    # Utilities
    fastfetch
  ];
};

# List packages installed in system profile.
# You can use https://search.nixos.org/ to find more packages (and options).
environment.systemPackages = with pkgs; [
  # Utilities
  neovim
  wget
  git
  ghostty
  gh
  gnumake
  unzip
  ripgrep
  fd
  tree-sitter
  wl-clipboard
  tmux
  impression

  # Programing Languages
  cargo
  go
  luarocks
  ruby
  php
  nodejs_26
  julia
  python314

  # Compilers
  gcc

];

