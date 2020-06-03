[colors]
background = ${xrdb:background}
background-alt = #

foreground = ${xrdb:foreground}
foreground-alt = #555

primary = #ffb52a
secondary = #e60053
alert = #bd2c40

[bar/mybar]
;monitor = ${env:MONITOR:HDMI-1}
width = 100%
height = 28
;offset-x = 1%
;offset-y = 1%
radius = 0.0
fixed-center = true

background = ${colors.background}
foreground = ${colors.foreground}

line-size = 2
line-color = #fff

border-size = 0
border-color = #00000000

padding-left = 0
padding-right = 1

module-margin-left = 1
module-margin-right = 1


font-0 =  Perfect DOS VGA 437:style=Regular:pixelsize=10;0
font-1 = Font Awesome 5 Free,Font Awesome 5 Free Solid:style=Solid:pixelsize=9;0

modules-left = i3
modules-center = mpd
modules-right = pulseaudio xbacklight cpu wlan battery date

tray-position = right
tray-padding = 2
;tray-background = #0063ff

wm-restack = i3
;override-redirect = true

;scroll-up = bspwm-desknext
;scroll-down = bspwm-deskprev

;scroll-up = i3wm-wsnext
;scroll-down = i3wm-wsprev

cursor-click = pointer
cursor-scroll = ns-resize

;-----------------------------------------------------------------------------------------
[module/filesystem]
type = internal/fs
interval = 25

mount-0 = /

label-mounted = %{F#0a81f5}%mountpoint%%{F-}: %percentage_used%%
label-unmounted = %mountpoint% not mounted
label-unmounted-foreground = ${colors.foreground-alt}
;-----------------------------------------------------------------------------------------
[module/i3]
type = internal/i3
format = <label-state> <label-mode> 
index-sort = true
wrapping-scroll = false

; Only show workspaces on the same output as the bar
pin-workspaces = true

; This will split the workspace name on ':'
; Default: false
strip-wsnumbers = true

; Create click handler used to focus workspace
; Default: true
enable-click = true

; Create scroll handlers used to cycle workspaces
; Default: true
enable-scroll = true

; Use fuzzy (partial) matching on labels when assigning
; icons to workspaces
; Example: code;♚ will apply the icon to all workspaces
; containing 'code' in the label
; Default: false
fuzzy-match = true

label-mode-padding = 0
label-mode-foreground = #f00

; focused = Active workspace on focused monitor
label-focused = %icon%
label-focused-background = ${colors.background}
label-focused-foreground = ${colors.foreground}
label-focused-underline= ${colors.foreground}
label-focused-padding = 1

; unfocused = Inactive workspace on any monitor
label-unfocused = %icon%
label-unfocused-foreground = #777
label-unfocused-padding = 1

; visible = Active workspace on unfocused monitor
label-visible = %icon%
label-visible-background = ${self.label-focused-background}
label-visible-underline = ${self.label-focused-underline}
label-visible-padding = ${self.label-focused-padding}

; urgent = Workspace with urgency hint set
label-urgent = %icon%
label-urgent-foreground = #ff0000
label-urgent-padding = 1

; ws-icon-[0-9]+ = label;icon
; NOTE: The label needs to match the name of the i3 workspace
ws-icon-0 = 1;
ws-icon-1 = 2;   
ws-icon-2 = 3;
ws-icon-3 = 4;
ws-icon-4 = 5; 
ws-icon-5 = 8;
ws-icon-6 = 9; 
ws-icon-7 = 0; 


ws-icon-default = 
; NOTE: You cannot skip icons, e.g. to get a ws-icon-6
; you must also define a ws-icon-5.
; NOTE: Icon will be available as the %icon% token inside label-*
;-----------------------------------------------------------------------------------------
[module/mpd]
type = internal/mpd

host = 127.0.0.1
port = 6601

interval = 2

format-playing = ${self.format-online}
format-paused = ${self.format-online}
format-stopped = ${self.format-online}

label-offline =mpd is offline
format-offline = <label-offline>

label-song = %title:0:40:..%

;label-time = %elapsed% / %total%

format-font = 2
format-online =<icon-prev> <toggle> <icon-next>  <label-song>

icon-play =
icon-pause =
icon-prev =
icon-next =
;-----------------------------------------------------------------------------------------
[module/xbacklight]
type = internal/xbacklight

format = <label>
label = %percentage%%
format-underline = ${xrdb:color1}
;-----------------------------------------------------------------------------------------
[module/backlight-acpi]
inherit = module/xbacklight
type = internal/backlight
card = intel_backlight
;-----------------------------------------------------------------------------------------
[module/cpu]
type = internal/cpu
interval = 2
format-prefix-foreground = ${colors.foreground-alt}
format-underline = ${xrdb:color3}
label= %percentage%%
;-----------------------------------------------------------------------------------------
[module/memory]
type = internal/memory
interval = 2
format-prefix = " "
format-prefix-foreground = ${colors.foreground-alt}
format-underline = #4bffdc
label =  %percentage_used%%
;-----------------------------------------------------------------------------------------
[module/wlan]
type = internal/network
interface = wlp2s0
interval = 4

format-connected =<label-connected>
format-connected-underline = ${xrdb:color6}

label-connected = %downspeed%

format-disconnected = <label-disconnected>
format-disconnected-underline = ${self.format-connected-underline}
label-disconnected = 
;-----------------------------------------------------------------------------------------
[module/eth]
type = internal/network
interface = enp1s0
interval = 3.0

format-connected-underline = #55aa55
format-connected-prefix = ""
format-connected-prefix-foreground = ${colors.foreground-alt}
label-connected = %local_ip%

format-disconnected =
;format-disconnected = <label-disconnected>
;format-disconnected-underline = ${self.format-connected-underline}
;label-disconnected = %ifname% disconnected
;label-disconnected-foreground = ${colors.foreground-alt}
;-----------------------------------------------------------------------------------------
[module/date]
type = internal/date
interval = 5

date =
date-alt = " %a, %d %b "

time = %H:%M
time-alt = %H:%M

format-underline = ${xrdb:color4}

label =%date%%time%
;-----------------------------------------------------------------------------------------
[module/pulseaudio]
type = internal/pulseaudio

sink = alsa_output.pci-0000_12_00.3.analog-stereo

use-ui-max = true

interval = 5

format-volume = <ramp-volume> <label-volume>

;format-muted = <label-muted>

;label-volume = %percentage%%

label-muted =  muted
label-muted-foreground = #777

ramp-volume-0 = 
ramp-volume-1 = 
ramp-volume-2 = 

format-volume-underline = ${xrdb:color2}

; Right and Middle click (unreleased)
click-right = pavucontrol &
; click-middle = 

;[module/pulseaudio]
;type = internal/pulseaudio

;format-volume = <label-volume>
;label-volume =  %percentage%%
;format-underline = true

;label-muted =  0
;label-muted-foreground = #666

[module/battery]
type = internal/battery

; This is useful in case the battery never reports 100% charge
full-at = 99

battery = BAT1
adapter = ACDC

poll-interval = 5

time-format = %H:%M

format-charging = <label-charging>

format-discharging = <ramp-capacity> <label-discharging>

label-charging =  %percentage%%

label-discharging = %percentage%%

label-full =  %percentage%%

ramp-capacity-0 =
ramp-capacity-1 =
ramp-capacity-2 =
ramp-capacity-3 =
ramp-capacity-4 =

bar-capacity-width = 10

animation-charging-framerate = 750
format-discharging-underline = ${xrdb:color5}
format-full-underline = ${xrdb:color5}
format-charging-underline = ${xrdb:color5}



[module/temperature]
type = internal/temperature
thermal-zone = 0
warn-temperature = 60

format = <ramp> <label>
format-underline = #f50a4d
format-warn = <ramp> <label-warn>
format-warn-underline = ${self.format-underline}

label = %temperature-c%
label-warn = %temperature-c%
label-warn-foreground = ${colors.secondary}

ramp-0 = 
ramp-1 = 
ramp-2 = 
ramp-foreground = ${colors.foreground-alt}

[module/powermenu]
type = custom/menu

expand-right = true

format-spacing = 1

label-open = 
label-open-foreground = ${colors.secondary}
label-close =  cancel
label-close-foreground = ${colors.secondary}
label-separator = |
label-separator-foreground = ${colors.foreground-alt}

menu-0-0 = reboot
menu-0-0-exec = menu-open-1
menu-0-1 = power off
menu-0-1-exec = menu-open-2

menu-1-0 = cancel
menu-1-0-exec = menu-open-0
menu-1-1 = reboot
menu-1-1-exec = sudo reboot

menu-2-0 = power off
menu-2-0-exec = sudo poweroff
menu-2-1 = cancel
menu-2-1-exec = menu-open-0

[settings]
screenchange-reload = true
;compositing-background = xor
;compositing-background = screen
;compositing-foreground = source
;compositing-border = over
;pseudo-transparency = false

[global/wm]
margin-top = 5
margin-bottom = 5

; vim:ft=dosini
