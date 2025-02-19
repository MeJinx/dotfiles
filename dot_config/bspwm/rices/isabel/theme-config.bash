#############################
#		Isabel Theme		#
#############################
# Copyright (C) 2021-2025 gh0stzk <z0mbi3.zk@protonmail.com>
# https://github.com/gh0stzk/dotfiles

# (Onedark) colorscheme
bg="#14171c"
fg="#abb2bf"

black="#181b21"
red="#be5046"
green="#81ae5f"
yellow="#d19a66"
blue="#4889be"
magenta="#7560d3"
cyan="#49919a"
white="#abb2bf"
blackb="#5c6370"
redb="#e06c75"
greenb="#98c379"
yellowb="#e5c07b"
blueb="#61afef"
magentab="#8677cf"
cyanb="#56b6c2"
whiteb="#b8bfe5"

accent_color="$black"
arch_icon="#0f94d2"

# Bspwm options
BORDER_WIDTH="0"		# Bspwm border
TOP_PADDING="1"
BOTTOM_PADDING="40"
LEFT_PADDING="1"
RIGHT_PADDING="1"
NORMAL_BC="#b8bfe5"		# Normal border color
FOCUSED_BC="#7560d3"	# Focused border color

# Terminal font & size
term_font_size="10"
term_font_name="JetBrainsMono Nerd Font"

# Picom options
P_FADE="true"			# Fade true|false
P_SHADOWS="true"		# Shadows true|false
SHADOW_C="#000000"		# Shadow color
P_CORNER_R="6"			# Corner radius (0 = disabled)
P_BLUR="false"			# Blur true|false
P_ANIMATIONS="@"		# (@ = enable) (# = disable)
P_TERM_OPACITY="1.0"	# Terminal transparency. Range: 0.1 - 1.0 (1.0 = disabled)

# Dunst
dunst_offset='(0, 10)'
dunst_origin='top-center'
dunst_transparency='0'
dunst_corner_radius='6'
dunst_font='Inconsolata Semi Condensed Bold 9'
dunst_border='0'
dunst_frame_color="$magentab"
dunst_icon_theme="Zafiro-Purple"
# Dunst animations
dunst_close_preset="fly-out"
dunst_close_direction="up"
dunst_open_preset="fly-in"
dunst_open_direction="up"

# Jgmenu colors
jg_bg="$bg"
jg_fg="$fg"
jg_sel_bg="$black"
jg_sel_fg="$whiteb"
jg_sep="$blackb"

# Rofi menu font and colors
rofi_font="Terminess Nerd Font Mono Bold 10"
rofi_background="$bg"
rofi_bg_alt="$black"
rofi_background_alt="${bg}E0"
rofi_fg="$fg"
rofi_selected="$magentab"
rofi_active="$green"
rofi_urgent="$redb"

# Screenlocker
sl_bg="${bg:1}"
sl_fg="${fg:1}"
sl_ring="${bg:1}"
sl_wrong="${red:1}"
sl_date="${fg:1}"
sl_verify="${green:1}"

# Gtk theme
gtk_theme="OneDark-zk"
gtk_icons="Zafiro-Purple"
gtk_cursor="Qogirr-Dark"
geany_theme="z0mbi3-OneDark"

# Wallpaper engine
# Available engines:
# - Theme	(Set a random wallpaper from rice directory)
# - CustomDir	(Set a random wallpaper from the directory you specified)
# - CustomImage	(Sets a specific image as wallpaper)
# - CustomAnimated (Set an animated wallpaper. "mp4, mkv, gif")
ENGINE="CustomAnimated"
CUSTOM_DIR="/path/to/dir"
CUSTOM_WALL="/path/to/image"
CUSTOM_ANIMATED="/home/tdy/视频/少女与白鸽（亮）.mp4"
