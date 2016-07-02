class CreateAccounts < ActiveRecord::Migration
  shard :none

  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :shard_id

      t.timestamps null: false
    end
  end
end
