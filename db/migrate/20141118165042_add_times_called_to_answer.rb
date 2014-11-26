class AddTimesCalledToAnswer < ActiveRecord::Migration
  def change
        add_column :answers, :timesCalled, :int
  end
end
