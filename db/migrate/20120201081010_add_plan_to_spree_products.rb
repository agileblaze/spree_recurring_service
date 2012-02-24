class AddPlanToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :plan, :string
  end
end
