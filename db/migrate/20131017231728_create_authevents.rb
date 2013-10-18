class CreateAuthevents < ActiveRecord::Migration
  def change
    create_table :authevents do |t|

      t.timestamps
    end
  end
end
