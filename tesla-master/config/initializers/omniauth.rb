Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, GOOGLE_CLIENT_ID='906066809801-j3cpo2m5rntc4o4cqg4451uk36n7g7fk.apps.googleusercontent.com', GOOGLE_CLIENT_SECRET='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'
   
end

OmniAuth.config.allowed_request_methods = %i[get]
