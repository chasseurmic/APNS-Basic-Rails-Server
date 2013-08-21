# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
APNS::Application.config.secret_key_base = 'fc9553cab955fcaf8b82e003fa8b939a57fc7bc927af5fc9bb4e35bda405ce42cbd69da22a2f3b80f4b56d3e94114c815fd7f9ea3adb590825fd7798f3afe8d9'
