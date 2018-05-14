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

status.register("clock",
        format="%X",)

status.register("clock",
        format="%a  %-d %b ",
        )

status.register("text",
        text="",
        on_leftclick = "pavucontrol")

status.run()
