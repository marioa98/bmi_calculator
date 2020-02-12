class CreateBmiTables < ActiveRecord::Migration[6.0]
  def change
    create_table :bmi_tables do |t|
      t.float :bmi_from
      t.float :bmi_to
      t.string :category

      t.timestamps
    end
  end
end
