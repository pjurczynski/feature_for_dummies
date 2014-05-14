FeatureForDummies
=================

It is a very simple and straight forward implementation of feature flags. You define new features in a yml file which then you can easily reference.

Installation
------------

Add this line to your application's Gemfile:

    gem 'feature_for_dummies'

And then execute:

    $ bundle

--

run:

    $ rake feature_for_dummies:install

to generate sample features list at `config/feature_for_dummies.yml`

Usage
-----

Set proper features at `config/feature_for_dummies.yml`.
Then to test if a feature is set for current environment

    Feature.on?('my_new_extreme_feature')

Contributing
------------

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
