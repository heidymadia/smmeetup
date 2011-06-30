class CreateSalesforceTimecards < ActiveRecord::Migration
  def self.up
    create_table :salesforce_timecards do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :salesforce_timecards
  end
end
