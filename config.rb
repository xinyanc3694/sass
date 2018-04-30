environment = :development
firesass = false

# Location of the theme's resources.
css_dir         = "css"
sass_dir        = "sass"
extensions_dir  = "sass-extensions"
images_dir      = "images"
javascripts_dir = "js"

output_style = (environment == :development) ? :expanded : :compressed
relative_assets = true
sass_options = (environment == :development && firesass == true) ? {:debug_info => true} : {}
sourcemap = true
