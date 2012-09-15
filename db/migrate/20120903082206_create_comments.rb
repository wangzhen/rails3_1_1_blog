class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :blog_id
      t.string :email
      t.string :qq
      t.string :name
      t.text :content
      t.string :ip
      t.boolean :is_check

      t.timestamps
    end
  end
end
