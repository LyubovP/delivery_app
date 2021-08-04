class AddRememberDigestToCouriers < ActiveRecord::Migration[6.1]
  def change
    add_column :couriers, :remember_digest, :string
  end
end
