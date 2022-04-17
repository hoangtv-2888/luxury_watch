Devise.setup do |config|
  config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 12
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 6..128
  config.email_regexp = /\A[^@\s]+@[^@\s]+\z/
  config.reset_password_within = 6.hours
  config.scoped_views = true
  config.sign_out_via = :delete
  config.lock_strategy = :failed_attempts
  config.unlock_keys = [ :email ]
  config.unlock_strategy = :both
  config.maximum_attempts = 5
  config.last_attempt_warning = true

  OmniAuth.config.allowed_request_methods = [:post, :get]
  OmniAuth.config.silence_get_warning = true

  config.omniauth :google_oauth2, ENV["GOOGLE_APP_ID"], ENV["GOOGLE_APP_SECRET"], {
    scope: "userinfo.profile,userinfo.email",
    access_type: "offline",
    approval_prompt: "force"
  }
end
