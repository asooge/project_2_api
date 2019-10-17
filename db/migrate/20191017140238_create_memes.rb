class CreateMemes < ActiveRecord::Migration[5.2]
  def change
    create_table :memes do |t|
      t.string :image
      t.string :text_1
      t.float :font_size_1
      t.string :text_2
      t.float :font_size_2
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
