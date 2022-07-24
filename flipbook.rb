require 'nokogiri'
require 'open-uri'
require 'yaml'

['martinique','guadeloupe','guyane','reunion'].each do |t|

@doc = Nokogiri::HTML(URI.open("https://#{t}.butdom.com/flip-book"))
test=@doc.css('.well').text.strip.squish
url=@doc.css('iframe')[1].attributes['src'].value.strip.squish
@langue = YAML.load_file(Rails.root.to_s+'/config/locales/'+t+'.yml')
@langue[t]['flipbook']={}
@langue[t]['flipbook']['text']=test
@langue[t]['flipbook']['url']=url

File.write("./config/locales/#{t}.yml", YAML.dump(@langue))

end
