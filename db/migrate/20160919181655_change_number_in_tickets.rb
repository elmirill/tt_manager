class ChangeNumberInTickets < ActiveRecord::Migration[5.0]
  def change
    change_column :tickets, :number, :integer
  end
end
