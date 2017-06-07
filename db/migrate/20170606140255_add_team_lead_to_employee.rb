class AddTeamLeadToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :team_lead_id, :integer, :null => true
    add_index :employees, :team_lead_id
  end
end
