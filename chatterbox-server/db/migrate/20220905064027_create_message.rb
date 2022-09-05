class CreateMessage < ActiveRecord::Migration[6.1]
  def change
    craete_table :message do |t|
      t.string :body
         t.string :username
         t.timestamps
  end
end
