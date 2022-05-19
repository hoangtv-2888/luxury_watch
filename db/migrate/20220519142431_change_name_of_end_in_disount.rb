class ChangeNameOfEndInDisount < ActiveRecord::Migration[6.1]
  def change
    rename_column :discounts, :end, :end_date
  end
end
