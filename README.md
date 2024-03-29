![Gullsy workflow](https://github.com/tflem/gullsy/actions/workflows/gullsy.yml/badge.svg)
[![Maintainability](https://api.codeclimate.com/v1/badges/0a97ac093d7e63961675/maintainability)](https://codeclimate.com/github/tflem/gullsy/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/0a97ac093d7e63961675/test_coverage)](https://codeclimate.com/github/tflem/gullsy/test_coverage)

# Gullsy - Caw Caw!

> A social media application (slow work in progress) similar to Twitter. Initially, I wanted to build this with PHP Laravel (Seagully), but building with Ruby on Rails is just more fun. I'm using the following tools:

- CSS Framework: Windi CSS 3.5.6
- Font Awesome: 6.4.2
- Ruby on Rails 7.1.1
- Ruby 3.2.2
- HTML5 and Sass 1.69.3
- PostgreSQL (Tested for 15.x)
- Testing: Minitest 5.20.0
- Code Bundler: Vite ⚡️ Ruby Plug-in (4.4.11, 3.2.2)
- Continuous Integration/Deployment: Github Actions/Digital Ocean

## Setup

How to run tests:

```
% rails test or rails t for short
```

How to run the development console:

```
% rails console or rails c for short
```

How to run the development server:

```
% rails server or rails s for short
```

How to prepare (create and migrate) DB for `development` and `test` environments:

```
% rails db:create

% rails db:migrate
```

The application is viewable at https://app.gullsy.teeflem.xyz.
