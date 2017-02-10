require 'medium-editor/helpers'

namespace :buttons_plugin do
  include MediumEditor::Helpers
  task :update do
    puts `bower install medium-button --save`
    copy_asset "bower_components/medium-button/dist/medium-button.min.js", "medium-button/medium-button.min.js"
  end
end
