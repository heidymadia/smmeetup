class CreateSalesforceResource_cs < ActiveRecord::Migration
  def self.up
    create_table :salesforce_resource_cs do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :salesforce_resource_cs
  end
end
