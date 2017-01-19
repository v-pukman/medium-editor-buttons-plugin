require 'rails'
require 'medium-editor-buttons-rails/version'

module MediumEditorButtonsRails
  module Rails
    if ::Rails.version.to_s < '3.1'
      require 'medium-editor-buttons-rails/railtie'
    else
      require 'medium-editor-buttons-rails/engine'
    end
  end
end
