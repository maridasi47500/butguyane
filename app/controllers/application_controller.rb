class ApplicationController < ActionController::Base
before_action :welcomeoverseas
around_action :switch_locale


def switch_locale(&action)
  locale = extract_locale_from_tld || I18n.default_locale
 I18n.with_locale(locale, &action)

end

def extract_locale_from_tld
  parsed_locale = request.host.split('.').first
  I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
end
private

def welcomeoverseas
  parsed_locale = request.host.split('.').first
   p parsed_locale
  if !I18n.available_locales.map(&:to_s).include?(parsed_locale) && request.path != welcomeoverseas_path

    redirect_to welcomeoverseas_path
  end
end
end
