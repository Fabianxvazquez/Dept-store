class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :body
      t.belongs_to :dept, null: false, foreign_key: true

      t.timestamps
    end
  end
end
