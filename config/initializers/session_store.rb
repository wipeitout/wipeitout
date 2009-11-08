# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wipeitout_session',
  :secret      => '689ec2d9d5f3970ff62241fb3c928f85d2e43bab423f31efbb4265210eee09bae76a4b68f4130f1b2c79c09196cf5f3fe4b8ade0df8358fb879fad6a4b0178f4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
