module Spree
  module CookieConsentHelper

    def cookie_consent
      if (cookies[:cookieconsent_status] == "deny" )
        cookie_consent = false
      else
        cookie_consent = true
      end
    end

  end
end
