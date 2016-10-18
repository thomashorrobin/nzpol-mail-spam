class CreatePostCodeElectorateMaps < ActiveRecord::Migration
  def change
    create_table :post_code_electorate_maps do |t|
      t.references :electorate, index: true, foreign_key: true
      t.references :post_code, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
