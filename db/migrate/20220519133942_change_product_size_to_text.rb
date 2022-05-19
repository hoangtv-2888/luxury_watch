class ChangeProductSizeToText < ActiveRecord::Migration[6.1]
  def change
    change_column :product_sizes, :size, :string
  end
end