class RemoveNumberFromTickets < ActiveRecord::Migration[5.0]
  def change
    remove_column :tickets, :number
  end
end
