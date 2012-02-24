class CreatePromotedItems < ActiveRecord::Migration
  def change
    create_table :promoted_items do |t|

      t.timestamps
    end
  end
end
