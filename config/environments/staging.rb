Edools::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = true

  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.serve_static_assets = false

  # Compress JavaScripts and CSS
  config.assets.compress = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = true

  # Generate digests for assets URLs
  config.assets.digest = true

  config.middleware.use "CustomDomainCookie", ".edools.info"

  # Defaults to nil and saved in location specified by config.assets.prefix
  # config.assets.manifest = YOUR_PATH

  # Specifies the header that your server uses for sending files
  # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for apache
  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect' # for nginx

  # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
  # config.force_ssl = true

  # See everything in the log (default is :info)
  # config.log_level = :debug

  # Prepend all log lines with the following tags
  # config.log_tags = [ :subdomain, :uuid ]

  # Use a different logger for distributed setups
  # config.logger = ActiveSupport::TaggedLogging.new(SyslogLogger.new)

  # Use a different cache store in production
  # config.cache_store = :mem_cache_store

  # Enable serving of images, stylesheets, and JavaScripts from an asset server
  config.action_controller.asset_host = "http://www.edools.info"
  config.action_mailer.asset_host = config.action_controller.asset_host

  # Precompile additional assets (application.js, application.css, and all non-JS/CSS are already added)
  # config.assets.precompile += %w( search.js )

  # Disable delivery errors, bad email addresses will be ignored
  # config.action_mailer.raise_delivery_errors = false

  # Enable threaded mode
  # config.threadsafe!

  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
  # the I18n.default_locale when a translation can not be found)
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify

  config.action_mailer.default_url_options = { :host => "edools.info" }  

  # Log the query plan for queries taking more than this (works
  # with SQLite, MySQL, and PostgreSQL)
  # config.active_record.auto_explain_threshold_in_seconds = 0.5
  # MyMoip.sandbox_token = "J6AJ342PUPEEZ7K0TUNU7MO6AFRUCFST"
  # MyMoip.sandbox_key = "6BDHXJLPUBYEZ0NE8OC7Y1CXGUGFNS8JFMSCBLPL"  
  MyMoip.environment = "production"
  MyMoip.production_token = "NKBBYMAKFBCUGVL6PZVVLK0SBR2QRQVQ"
  MyMoip.production_key = "OHRFUJTCTCRANYEWY7NFZT8CV0F0QJJILZCQFH9E" 
  
  config.middleware.use ExceptionNotifier,
    :email_prefix => "[Edools-Staging ERROR] ",
    :sender_address => %{"Error notifier Edools-Staging" <error-notifier@edools.info>},
    :exception_recipients => %w{rafael@bizstart.com.br augusto@bizstart.com.br}

  config.paperclip_defaults = {
    storage: :s3,
    s3_credentials: "#{Rails.root.to_s}/config/s3.yml",
    path: ':class/:attachment/:id/:style/:filename',
    url: ':s3_domain_url'
  }  
end