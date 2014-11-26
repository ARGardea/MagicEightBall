class AddIsCustomToAnswers < ActiveRecord::Migration
  def change
      add_column :answers, :isCustom, :boolean
  end
end
