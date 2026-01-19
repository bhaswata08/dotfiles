# config.nu
#
# Installed by:
# version = "0.108.0"
#
# This file is used to override default Nushell settings, define
# (or import) custom commands, or run any other startup tasks.
# See https://www.nushell.sh/book/configuration.html
#
# Nushell sets "sensible defaults" for most configuration settings, 
# so your `config.nu` only needs to override these defaults if desired.
#
# You can open this file in your default editor using:
#     config nu
#
# You can also pretty-print and page through the documentation for configuration
# options using:
#     config nu --doc | nu-highlight | less -R
$env.config.show_banner = false
$env.config.buffer_editor = "nvim"
$env.FLAKE = "/home/bhaswata/hydenix"
mkdir ($nu.data-dir | path join "vendor/autoload")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")
$env.config.edit_mode = 'vi'
$env.config.cursor_shape = {
    vi_insert: block  # or 'line'
    vi_normal: underscore
}
source ./zoxide.nu
source ./aliases.nu
source ./carapace.nu

# $env.config = ($env.config | {
#   highlight_resolved_externals: true
# })
$env.config = {
  highlight_resolved_externals: true
}
