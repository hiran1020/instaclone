class AddPostRefToMessages < ActiveRecord::Migration[7.1]
  def change
    add_reference :messages, :post, null: false, foreign_key: true
  end
end
