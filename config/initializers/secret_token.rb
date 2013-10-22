# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
Twomonths::Application.config.secret_token = ENV['SECRET_TOKEN'] || '268967f94d036a10a7821393db7693d0ab44762a7fbf7048ca3bd4e4'
Twomonths::Application.config.secret_key_base = '268967f94d036a10a7821393db7693d0ab44762a7fbf7048ca3bd4e4'
