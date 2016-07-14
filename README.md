# Comment Box
This gem  provides a robust comment functionality for any rails application.

### Requirements
* Rails version
`v4.2.6`

* Ruby version
`ruby-2.3.1`

* ActiveRecord
`>= 3.2`

## Getting Started

Add this line to your Gemfile

```bash
gem 'comment_box'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself

```bash
$ gem install comment_box
```
## Installation

Run the generator (replace `MODEL` with your desired comment class name, e.g `Comment`)

```bash
$ rails generate comment_box MODEL
```

This generator will create a model, controller and migration for the model.
The generator also configures your `config/routes.rb` file to point to the controller.

Next, run

```bash
rake db:migrate
```

Restart your application and enjoy your new commenting platform.
