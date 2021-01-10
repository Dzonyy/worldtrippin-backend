class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.text :description
      t.datetime :start_at
      t.datetime :end_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
