class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :github_uid
      t.string :email
      t.string :nickname
      t.string :name
      t.string :github_token
      t.json :auth_json, default: {}

      t.timestamps null: false
    end
  end
end
