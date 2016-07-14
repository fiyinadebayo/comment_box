class CommentBoxCreate<%= table_name.camelize %> < ActiveRecord::Migration
  def up
    create_table :<%= table_name %> do |t|
      t.string :author
      t.text :text
      t.string :likes

      t.timestamps null: false
    end
  end

  def down
    drop_table :<%= table_name %>
  end
end