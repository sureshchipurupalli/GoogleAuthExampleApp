Rails.application.config.x.settings["oauth2"] = {} if Rails.env.test?

# [START omniauth_configuration]
Rails.application.config.middleware.use OmniAuth::Builder do
  config = Rails.application.config.x.settings["oauth2"]

  provider :google_oauth2, "115059498414-5fj2in117vueg4a1tdg52f61d0k07hnp.apps.googleusercontent.com",
                           "ZbPzUjSKpYRTmGXW2uqhIRfc",
                           image_size: 150
end
