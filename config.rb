page "cv.html", :layout => false

activate :automatic_image_sizes

set :layouts_dir, '_layouts'
set :partials_dir, '_partials'

set :css_dir, 'assets/css'

set :js_dir, 'assets/js'

set :images_dir, 'assets/img'

set :markdown_engine, :redcarpet
set :markdown, :fenced_code_blocks => true, :smartypants => true

activate :syntax, :line_numbers => false
activate :directory_indexes

ignore '*.md'

helpers do
  def markdown(text)
    Tilt['markdown'].new { text }.render
end
end

# Build-specific configuration
configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
end

activate :deploy do |deploy|
 deploy.method = :git
 deploy.build_before = true
 deploy.branch   = "master"
 deploy.remote   = "https://github.com/matthew-ng/matthew-ng.github.io.git"
end