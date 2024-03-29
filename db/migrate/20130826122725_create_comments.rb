class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_name
      t.text :body
      t.belongs_to :idea, index: true

      t.timestamps
    end
  end
end
