class CreateElectorates < ActiveRecord::Migration
  def change
    create_table :electorates do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
