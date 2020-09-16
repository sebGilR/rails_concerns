class CreateTwits < ActiveRecord::Migration[6.0]
  def change
    create_table :twits do |t|
      t.text :tweet

      t.timestamps
    end
  end
end
