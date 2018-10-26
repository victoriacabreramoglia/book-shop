class AddDoBadThingToSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :do_bad_thing, :boolean
  end
end
