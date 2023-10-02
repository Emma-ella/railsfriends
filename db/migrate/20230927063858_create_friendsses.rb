class CreateFriendsses < ActiveRecord::Migration[7.0]
  def change
    create_table :friendsses do |t|
      t.string :firsst_name
      t.string :last_name
      t.string :e_mail
      t.string :phone
      t.string :twitter

      t.timestamps
    end
  end
end
