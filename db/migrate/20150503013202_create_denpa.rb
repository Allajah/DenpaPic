class CreateDenpa < ActiveRecord::Migration
  def change
    create_table :denpas do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
  end
end
