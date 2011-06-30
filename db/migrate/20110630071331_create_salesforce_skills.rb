class CreateSalesforceSkills < ActiveRecord::Migration
  def self.up
    create_table :salesforce_skills do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :salesforce_skills
  end
end
