class SavController < ApplicationController
  def index
    render template: "sav/#{I18n.locale}.html.erb"
  end
end
