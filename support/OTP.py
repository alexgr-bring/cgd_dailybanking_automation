import base64
import pyotp

def generate_otp(otp_secret, mobile_phone):
    secret = otp_secret + mobile_phone
    bytes_secret = bytes(secret, "utf8")
    base64_secret = base64.b32encode(bytes_secret)
    totp = pyotp.TOTP(base64_secret, interval=600).now()
    return totp
