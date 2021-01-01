class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :content
      t.references :users, index: true, foreign_key: true
    end
  end
end
