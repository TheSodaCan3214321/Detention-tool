import subprocess
import time

def get_wifi_passwords():
    profiles_data = subprocess.check_output(['netsh', 'wlan', 'show', 'profiles']).decode('utf-8', errors="backslashreplace").split('\n')
    profiles = [line.split(":")[1][1:-1] for line in profiles_data if "All User Profile" in line]

    wifi_passwords = {}

    for profile in profiles:
        profile_info = subprocess.check_output(['netsh', 'wlan', 'show', 'profile', profile, 'key=clear']).decode('utf-8', errors="backslashreplace").split('\n')
        password_line = [line for line in profile_info if "Key Content" in line]

        if password_line:
            password = password_line[0].split(":")[1][1:-1]
        else:
            password = None

        wifi_passwords[profile] = password

    return wifi_passwords

if __name__ == "__main__":
    passwords = get_wifi_passwords()
    for profile, password in passwords.items():
        print(f"Profile: {profile}, Password: {password}")

print(" ")
print("Saving it to the file....")
print("[====            ]25%")
time.sleep(1)
print("[========        ]50%")
time.sleep(1)
print("[============    ]75%")
time.sleep(1)
print("[================]100%")
time.sleep(1)


with open("Wifi Profiles.txt", "a")as f:
    write = f.write(f"{profile}/{password}\n")

print("Saved succesfully!")