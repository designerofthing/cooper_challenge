# Cooper API
## About this application
This is a simple Ruby on Rails API for storing [Cooper test](https://en.wikipedia.org/wiki/Cooper_test) results tied to a user.
The API allows for registration, authentication, storing and fetching of interpolated results (e.g. "Excellent", "Above Average").
User authentication and registration is done via [Devise](https://github.com/heartcombo/devise).

## Authors
- Marcus (https://github.com/ViaMarcus)
- Steve (https://github.com/designerofthing)

## Dependencies
It is written in Ruby 2.6.3, Rails version 6.0.2.2. The database used is Postgresql.
This application has a [React application](https://github.com/ViaMarcus/cooper_client) implementing it.

## Setup
Clone this repo. Run ```$bundle``` and ```$rails db:schema:load```. You should now be up and running.

## Testing
Included is wide coverage of tests using RSpec. These can be run by ```$rspec```.

## Deployment
This application will soon be deployed to Heroku.

## Acknowledgements
This would have been utterly impossible without the great guidance of [Craft Academy](https://github.com/CraftAcademy) and the great people behind Ruby, Rails, and all the gems used.

## License
This app is open source software [licensed as MIT](https://mit-license.org/).
This is a simple Ruby on Rails API for storing [Cooper test](https://en.wikipedia.org/wiki/Cooper_test) results tied to a user.
