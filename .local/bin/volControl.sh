#!/usr/bin/env sh

###############################################
### This is based on @tfemby's script
### Thanks to @tfemby for the initial version
### -iz
###############################################


function get_volume {
    # pactl get-sink-volume @DEFAULT_SINK@ | awk {'print $5'} | sed 's/.$//'
    sleep 0.5
    sndioctl -n output.level | sed 's/\.//' | sed 's/.$//'
}

function is_mute {
    # pactl get-sink-mute @DEFAULT_SINK@ | awk {'print $2'}
    sleep 0.5
    sndioctl -n output.mute
}

function send_notification {
    iconLow="audio-volume-low-symbolic"
    iconMedium="audio-volume-medium-symbolic"
    iconHigh="audio-volume-high-symbolic"
    iconMute="audio-volume-muted-symbolic"

    currentVolume=$(get_volume)

    case $1 in
        volume)
            if [ "$currentVolume" -lt 36 ]; then
                icon="$iconLow"
            elif [ "$currentVolume" -gt 35 ]  &&  [ "$currentVolume" -lt 71 ]; then
                icon="$iconMedium"
            else
                icon="$iconHigh"
            fi

            dunstify -t 1400 -i "$icon" -u normal -h string:x-dunst-stack-tag:Audio -h int:value:"$currentVolume" \
                "Volume: $currentVolume%"
        ;;
        mute)
            muteStatus=$(is_mute)

            if [[ "$muteStatus" == 1 ]]; then
                dunstify -t 1400 -i  $iconMute -u normal -h string:x-dunst-stack-tag:Audio "Mute"
            else
                dunstify -t 1400 -i $iconHigh -u normal -h string:x-dunst-stack-tag:Audio \
                    -h int:value:"$currentVolume" "Un-Muted"
            fi
        ;;
    esac
}


case $1 in
    up)
        # pactl set-sink-volume @DEFAULT_SINK@ +1000
        sndioctl output.level=+0.05
        send_notification "volume"
    ;;
    down)
        # pactl set-sink-volume @DEFAULT_SINK@ -1000
        sndioctl output.level=-0.05
        send_notification "volume"
    ;;
    mute)
        # pactl set-sink-mute @DEFAULT_SINK@ toggle
        sndioctl output.mute=!
        send_notification "mute"
    ;;
    volume)
        # For use in tint2
        printf '%s' "$(get_volume)%"
    ;;
esac
