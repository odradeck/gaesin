OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do  
  provider :facebook, '538179139585031', 'd96b0085f35c87bc2fb1834bb93b62e3'
  provider :twitter, '8900N8yA502wuFtlxAevVA', 'ZEytQJj893aNYPcKLie6su4hATsafOgBpRMMlc8jVug'  
end