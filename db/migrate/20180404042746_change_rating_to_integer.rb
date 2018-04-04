class ChangeRatingToInteger < ActiveRecord::Migration[5.1]
  def change
    change_column :reviews, :rating, :integer
  end
end
