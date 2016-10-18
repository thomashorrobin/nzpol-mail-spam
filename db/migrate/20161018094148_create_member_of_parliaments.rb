class CreateMemberOfParliaments < ActiveRecord::Migration
  def change
    create_table :member_of_parliaments do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.references :electorate, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
