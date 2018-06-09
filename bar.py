from i3pystatus import Status

status = Status()

terminal = "alacritty"

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week
status.register("text",
        text="",
        on_rightclick = "%s -e htop" %(terminal),
        )

status.register("battery",
    format="{status} {remaining:%E%hh:%Mm}",
    alert=True,
    alert_percentage=5,
    status={
        "DIS":  "Discharging",
        "CHR":  "Charging",
        "FULL": "100%",
    })

status.register("clock",
        format="%H:%M",)

status.register("clock",
        format="%a  %-d %b ",
        )

status.register("text",
        text="",
        on_leftclick = "pavucontrol")

status.run()
