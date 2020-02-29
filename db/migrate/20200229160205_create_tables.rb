class CreateTables < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :password
    end

    create_table :messages do |t|
      t.string :tweet
      t.datetime :tweet_time
      t.belongs_to :user, foregin_key: true 
    end
  end 
end
