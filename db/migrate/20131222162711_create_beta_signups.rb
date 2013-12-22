class CreateBetaSignups < ActiveRecord::Migration
  def change
    create_table :beta_signups do |t|
      t.string :email
      t.boolean :validated, default: false

      t.index :email
      t.index :validated
      t.timestamps
    end
  end
end
