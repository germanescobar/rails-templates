if yes?("Configure Bootstrap?")
  gem 'bootstrap-sass', '~> 3.3.5'

  file 'app/assets/stylesheets/bootstrap-custom.scss',
  %q{// Core variables and mixins
@import "bootstrap/variables";
@import "bootstrap/mixins";

// Reset and dependencies
@import "bootstrap/normalize";
@import "bootstrap/print";
@import "bootstrap/glyphicons";

// Core CSS
@import "bootstrap/scaffolding";
@import "bootstrap/type";
@import "bootstrap/code";
@import "bootstrap/grid";
@import "bootstrap/tables";
@import "bootstrap/forms";
@import "bootstrap/buttons";

// Components
@import "bootstrap/component-animations";
@import "bootstrap/dropdowns";
@import "bootstrap/button-groups";
@import "bootstrap/input-groups";
@import "bootstrap/navs";
@import "bootstrap/navbar";
@import "bootstrap/breadcrumbs";
@import "bootstrap/pagination";
@import "bootstrap/pager";
@import "bootstrap/labels";
@import "bootstrap/badges";
@import "bootstrap/jumbotron";
@import "bootstrap/thumbnails";
@import "bootstrap/alerts";
@import "bootstrap/progress-bars";
@import "bootstrap/media";
@import "bootstrap/list-group";
@import "bootstrap/panels";
@import "bootstrap/responsive-embed";
@import "bootstrap/wells";
@import "bootstrap/close";

// Components w/ JavaScript
@import "bootstrap/modals";
@import "bootstrap/tooltip";
@import "bootstrap/popovers";
@import "bootstrap/carousel";

// Utility classes
@import "bootstrap/utilities";
@import "bootstrap/responsive-utilities";}

  file 'app/assets/stylesheets/application.css.scss', 
  %q{@import "bootstrap-sprockets";
@import "bootstrap-custom";}

  run "rm app/assets/javascripts/application.js"
  file 'app/assets/javascripts/application.js',
  %q{//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap/affix
//= require bootstrap/alert
//= require bootstrap/button
//= require bootstrap/carousel
//= require bootstrap/collapse
//= require bootstrap/dropdown
//= require bootstrap/tab
//= require bootstrap/transition
//= require bootstrap/scrollspy
//= require bootstrap/modal
//= require bootstrap/tooltip
//= require bootstrap/popover
//= require_tree .}
end