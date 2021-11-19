![CCB Tracker workflow](https://github.com/tflem/gullsy/actions/workflows/gullsy.yml/badge.svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/0a97ac093d7e63961675/maintainability)](https://codeclimate.com/github/tflem/gullsy/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/0a97ac093d7e63961675/test_coverage)](https://codeclimate.com/github/tflem/gullsy/test_coverage)

# Gullsy - Caw Caw!

> This a social media application similar to Twitter. Initially, I wanted to build this with PHP Laravel (Seagully), but Ruby and Rails is just so much more fun. I'm using the following tools:

- CSS Framework: Windi CSS 3.2.1
- Ruby on Rails 6.1.4
- Ruby 3.0.2
- HTML5 and Sass
- PostgreSQL (Tested for 13.x)
- Testing: Minitest 5.14.4
- Code Bundler: Vite ⚡️ Ruby (2.6.14, 3.0.3)
- Continuous Integration/Deployment: Github Actions/Heroku

## Setup

How to run tests:

```
% rails test
```

How to run the development console:

```
% rails console
```

How to run the development server:

```
% rails server
```

How to prepare (create and migrate) DB for `development` and `test` environments:

```
% rails db:create

% rails db:migrate
```

The application is viewable at http://gullsy.herokuapp.com.
