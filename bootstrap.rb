if yes?("Configure Bootstrap?")
  gem 'bootstrap-sass', '~> 3.3.5'

  file 'app/assets/stylesheets/application.css.scss', 
  %q{@import "bootstrap-sprockets";
@import "bootstrap";}

  run "rm app/assets/javascripts/application.js"
  file 'app/assets/javascripts/application.js',
  %q{//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .}
end