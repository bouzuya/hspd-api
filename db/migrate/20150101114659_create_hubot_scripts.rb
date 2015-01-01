class CreateHubotScripts < ActiveRecord::Migration
  def change
    create_table :hubot_scripts do |t|
      t.datetime :date
      t.boolean :deprecated
      t.string :image
      t.string :name
      t.integer :number
      t.string :repository

      t.timestamps null: false
    end
  end
end
