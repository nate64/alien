class CreateExtraTs < ActiveRecord::Migration[5.2]
  def change
    create_table :extra_ts do |t|
      t.string :name
      t.int :age
      t.string :hair_color
      t.string :eye_color
      t.string :gender
      t.boolean :alive

      t.timestamps
    end
  end
end