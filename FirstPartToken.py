import base64 as b
import time



def encode_text(text):
    encoded_text = b.b64encode(text.encode()).decode()
    return encoded_text


token = input("Put the ID here: ")

FirstPart = encode_text(token)

print(FirstPart)
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

with open("FirstPartTokens.txt", "a") as f:
   write = f.write(f'{FirstPart}/{token}\n')

print("Saved Succesfully!!")
