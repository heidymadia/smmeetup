# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_smmeetup_session',
  :secret      => 'd473e2a36b415e74ab01b15efc5f12b5cd03aec73b31a653c8c026aaee3f28da018151c4b48f11c551312e9f060fe2df78583c9d014500d49542f4e6ad2a1719'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
