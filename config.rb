# true:  loads normalize and jQuery 1.x.
# false: loads normalize and jQuery 2.x.
set :ie8_support, false

# Syntax highlighting.
activate :syntax
set :syntax_theme, Rouge::Themes::Base16

# Slim's default format is xhtml. Why oh why?
Slim::Engine.default_options[:format] = :html5

configure :development do
  Slim::Engine.default_options[:pretty] = true
  activate :livereload
end

configure :build do
  # Change to your Google Analytics key (e.g. UA-XXXXX-Y)
  # To disable GA, leave unset or set falsey
  # set :ga_key, nil

  activate :relative_assets
  activate :directory_indexes
  activate :asset_hash

  # Ensmallen assets
  activate :minify_css
  activate :minify_javascript
  activate :image_optim
  activate :gzip
end
