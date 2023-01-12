from datetime import datetime


def generate_time_string():
    return datetime.now().strftime("%d%m%y%H%M%S")

# ex output: 120123091120
