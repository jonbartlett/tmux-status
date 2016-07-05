#  TMUS Status

Scripts to present information that is important to me on the TMUX Status Line. This current includes:

* Weather - via [forecast.io](https://www.forecast.io)

## Installation

* Clone or download this repository.

* Make the ruby scripts executable:

```sh
chmod +x <scriptname>
```

## Usage

* Schedule to run via Crontab or similar.

If using [rbenv](https://rbenv.org):

```sh
# m h  dom mon dow   command
*/5 * * * * /bin/bash -c 'export PATH="$HOME/.rbenv/bin:$PATH" ; eval "$(rbenv init -)" ; cd /home/vagrant/projects/tmux-status/; ./weather.rb'
```

* Add your [forcast.io](http://www.forecast.io) API Key to ```.config/forecastio.yaml``` and update location.

## Support

Please [open an issue](https://github.com/jonbartlett/tmus-status/issues/new) for support.

## Contributing

Please contribute using [Github Flow](https://guides.github.com/introduction/flow/). Create a branch, add commits, and [open a pull request](https://github.com/jonbartlett/tmux-status/compare/).

