class CreateSalesforceResources < ActiveRecord::Migration
  def self.up
    create_table :salesforce_resources do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :salesforce_resources
  end
end
