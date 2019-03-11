class CreateContents < ActiveRecord::Migration[5.2]
  def change
    create_table :contents do |t|
      t.integer :user_id
      t.text :content
      t.string :image

      t.timestamps
    end
  end
end
