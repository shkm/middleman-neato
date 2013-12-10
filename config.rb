######################################################################
# General settings.
######################################################################

# Asset locations
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Loads IE8 compatible versions of normalize & jQuery if true (1.x).
# Otherwise, loads IE8 incompatible versions (2.x).
set :ie8_support, false

# Syntax highlighting.
activate :syntax
set :syntax_theme, Rouge::Themes::Base16

# Change to your Google Analytics key (e.g. UA-XXXXXXXX-Y).
# To disable GA, leave unset or set to nil
# Code will only be injected in build environment
# TODO: extract to MM extension
set :ga_key, 'UA-XXXXXXX-Y'

# Slim's default format is xhtml. Why oh why?
Slim::Engine.default_options[:format] = :html5

# Ignores
ignore '/calendar.html'


######################################################################
# Blog settings.
######################################################################

Time.zone = "Amsterdam"

activate :blog do |blog|
  blog.prefix = 'blog'
  blog.permalink = ':year/:title.html'
  # blog.sources = ":year-:month-:day-:title.html"
  blog.taglink = "tags/:tag.html"
  # blog.layout = "layout"
  # blog.summary_separator = /(READMORE)/
  # blog.summary_length = 250
  # blog.year_link = ":year.html"
  # blog.month_link = ":year/:month.html"
  # blog.day_link = ":year/:month/:day.html"
  blog.default_extension = ".md"

  blog.tag_template = "tag.html"
  blog.calendar_template = "calendar.html"

  blog.paginate = true
  blog.per_page = 10
  # blog.page_link = "page/:num"
end

# Enable XML feed. Don't forget to edit feed.xml.builder first.
# page "/feed.xml", :layout => false


######################################################################
# Development environment.
######################################################################

configure :development do
  Slim::Engine.default_options[:pretty] = true
  activate :livereload
end


######################################################################
# Build environment.
######################################################################

configure :build do
  activate :relative_assets
  activate :directory_indexes
  activate :asset_hash

  # Ensmallen assets
  activate :minify_html, remove_input_attributes: false
  activate :minify_css
  activate :minify_javascript
  activate :image_optim
  activate :gzip, exts: %w(.js .css .html .htm .svg .ttf .otf .woff .eot)
end
