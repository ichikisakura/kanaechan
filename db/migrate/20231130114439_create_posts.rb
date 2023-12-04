class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :camp
      t.string :about
      t.integer :cost
      t.string :facility
      t.string :access
      t.string :image

      t.timestamps
    end
  end
end
