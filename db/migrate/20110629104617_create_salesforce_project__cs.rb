class CreateSalesforceProject_cs < ActiveRecord::Migration
  def self.up
    create_table :salesforce_project_cs do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :salesforce_project_cs
  end
end
