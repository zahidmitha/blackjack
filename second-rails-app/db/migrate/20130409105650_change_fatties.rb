class ChangeFatties < ActiveRecord::Migration
  def change
    add_column :fatties, :age, :int
  end
end
