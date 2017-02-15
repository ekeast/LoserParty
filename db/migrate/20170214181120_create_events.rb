class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.date :date
      t.time :time
      t.text :description

      t.timestamps
    end
  end
end
