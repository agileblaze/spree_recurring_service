class CreateConfiurations < ActiveRecord::Migration
  def change
    create_table :confiurations do |t|
      t.string :api_ky
      t.timestamps
    end
  end
end
