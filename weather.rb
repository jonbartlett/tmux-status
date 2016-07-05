#!/usr/bin/env ruby
#
#
require 'forecast_io'
require 'yaml'

config = YAML.load_file('/home/vagrant/.config/forecastio.yaml')

ForecastIO.api_key = config["api_key"]

forecast = ForecastIO.forecast(config["default"]["lat"], config["default"]["lng"], params: { units: 'si' })

current_temp = forecast.currently.temperature
max_temp = forecast.daily.data[0].temperatureMax
min_temp = forecast.daily.data[0].temperatureMin
rain_chance = forecast.daily.data[0].precipProbability * 100

# write these to a file in the format of:
# current_temp/min_temp/max_temp/rain_chance
#display_string = "#{current_temp}/#{min_temp}/#{max_temp}/#{rain_chance*100}%"
display_string = "#{current_temp.round(1)}C/#{rain_chance.round}%"

tmp_file = File.open("/tmp/tmux_weather.dat", "w")
tmp_file.puts display_string
tmp_file.close

