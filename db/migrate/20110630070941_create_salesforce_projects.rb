class CreateSalesforceProjects < ActiveRecord::Migration
  def self.up
    create_table :salesforce_projects do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :salesforce_projects
  end
end
