class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :header
      t.string :body

      t.timestamps null: false
    end
  end
end
