class CreateShorteners < ActiveRecord::Migration[5.1]
  def change
    create_table :shorteners do |t|
      t.string :longurl
      t.string :shorturl

      t.timestamps
    end
  end
end
