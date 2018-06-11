from i3pystatus import Status
from i3pystatus import get_module


status = Status()

terminal = "alacritty"

# Displays clock like this:
# Tue 30 Jul 11:59:46 PM KW31
#                          ^-- calendar week

@get_module
def show_date(self):
    self.output['format'] = '%a %-d %b'

status.register("clock",
        format="%H:%M",
        on_leftclick=show_date)



status.register("battery",
        format='{percentage: .0f}% {remaining:%E%hh:%Mm} {status}',
        alert=True,
        alert_percentage=5,
        status={
        "DIS":  "",
        "CHR":  "",
        "FULL": "",
    })

status.register("text",
        text="",
        on_leftclick = "pavucontrol")

status.register("network",
        interface="wlp3s0",
        hints={"markup": "pango"},
        on_leftclick="ip addr show dev {interface} | xmessage -file -" 
    )

status.run()
