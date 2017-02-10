require 'medium-editor/plugin/base'

module MediumEditor
  module Plugin
    class Buttons < ::MediumEditor::Plugin::Base
      def self.javascripts
        ["medium-editor-buttons-plugin"]
      end

      def self.stylesheets
        ["medium-editor-buttons-plugin"]
      end
    end
  end
end
