require 'rails/generators/named_base'

module CommentBox
  module Generators
    class CommentBoxGenerator < Rails::Generators::NamedBase
      include Rails::Generators::ResourceHelpers
      source_root File.expand_path('../../templates', __FILE__)

      namespace 'comment_box'
      hook_for :orm, required: true

      desc 'Generate migration file for comments box'

      def copy_comment_box_model
        template 'models/cb_model.rb', model_path
      end

      def copy_comment_box_controller
        template 'controllers/cb_controller.rb', controller_path
      end

      def add_comment_box_routes
        route "resources :#{table_name}, except: [:new, :edit]"
      end

      def model_path
        File.join('app', 'models', "#{file_path}.rb")
      end

      def controller_path
        File.join('app', 'controllers', "#{table_name}_controller.rb")
      end
    end
  end
end