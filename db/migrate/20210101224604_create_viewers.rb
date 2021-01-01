class CreateViewers < ActiveRecord::Migration[5.0]
  def change
    create_table :viewers do |t|
      t.references :users, index: true, foreign_key: true
      t.references :notes, index: true, foreign_key: true
    end
  end
end
