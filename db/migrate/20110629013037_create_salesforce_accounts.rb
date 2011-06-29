class CreateSalesforceAccounts < ActiveRecord::Migration
  def self.up
    create_table :salesforce_accounts do |t|
      t.string :name
      t.string :phone
      t.string :website
      t.string :industry

      t.timestamps
    end
  end

  def self.down
    drop_table :salesforce_accounts
  end
end
