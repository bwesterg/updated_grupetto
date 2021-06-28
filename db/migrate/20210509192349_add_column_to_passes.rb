class AddColumnToPasses < ActiveRecord::Migration[6.1]
  def change
    add_reference :passes, :user, null: false, foreign_key: true
  end
end
