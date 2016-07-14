require 'rails/generators/active_record'

module ActiveRecord
  module Generators
    class CommentBoxGenerator < ActiveRecord::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      def copy_comment_box_migration
        migration_template 'migration.rb', "db/migrate/comment_box_create_#{table_name}.rb"
      end
    end
  end
end
