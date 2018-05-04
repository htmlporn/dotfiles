from i3pystatus import Status

status = Status()

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week



status.register("clock",
    format="%a %-d %b %X",
    on_leftclick = "alacritty -m curl wttr.in"
   )

status.register("text",
    text = "",
    color = "#ececec",
    # open terminal window running htop
    on_leftclick = "alacritty",
   )

status.register("text",
    text = "",
    color = "#31AEE8",
    # open terminal window running htop
    on_leftclick = "telegram-desktop",
   )






status.run()
