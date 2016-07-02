class CreateUsers < ActiveRecord::Migration
  shard :all

  def change
    create_table :users do |t|
      t.string :name
      t.integer :account_id

      t.timestamps null: false
    end
  end
end
