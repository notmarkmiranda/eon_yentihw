class CreateMemories < ActiveRecord::Migration[5.1]
  def change
    create_table :memories do |t|
      t.string :title
      t.text :description
      t.attachment :image
      t.string :author

      t.timestamps
    end
  end
end
