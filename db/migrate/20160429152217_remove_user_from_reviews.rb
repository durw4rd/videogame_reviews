class RemoveUserFromReviews < ActiveRecord::Migration
  def change
    remove_reference :reviews, :user, index: true, foreign_key: true
  end
end
