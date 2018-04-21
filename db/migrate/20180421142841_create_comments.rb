class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :comment

      t.timestamps
    end
    add_reference :comments, :user, foreign_key: true
    add_reference :comments, :post, foreign_key: true
  end
end
