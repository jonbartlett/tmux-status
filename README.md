#  TMUX Status

Scripts to present information that is important to me on the TMUX Status Line. This currently includes:

* Weather - via [forecast.io](https://www.forecast.io)

## Installation

* Clone or download this repository.
* Make the ruby scripts executable:

```sh
chmod +x <scriptname>
```

## Usage

### Weather

Weather uses the excellent [forcast.io](http://www.forecast.io) API which collates weather reports from around the world. The Australian forecasting seems pretty reliable so far and almost matches the [Bureau of Meteorology](https://www.bom.gov.au) in most cases.

* Register for [forcast.io](http://www.forecast.io) and add your API Key to ```.config/forecastio.yaml``` and update location.
* Schedule to run via Crontab or similar.

If using [rbenv](https://rbenv.org):

```sh
# m h  dom mon dow   command
*/5 * * * * /bin/bash -c 'export PATH="$HOME/.rbenv/bin:$PATH" ; eval "$(rbenv init -)" ; cd /home/vagrant/projects/tmux-status/; ./weather.rb'
```

* Modify ```~/.tmux.conf``` as required:

```
set -g status-right '#[fg=black] #[fg=red,dim,bg=default]#(cat /tmp/tmux_weather.dat)'
```

## Future enhancements

* Unicode characters to represent weather
* Weather data trends using up and down arrows
* Home energy usage stats and temperature
* Realtime transit updates for next train home
* Google traffic info (time to home)

## Support

Please [open an issue](https://github.com/jonbartlett/tmux-status/issues/new) for support.

## Contributing

Please contribute using [Github Flow](https://guides.github.com/introduction/flow/). Create a branch, add commits, and [open a pull request](https://github.com/jonbartlett/tmux-status/compare/).

