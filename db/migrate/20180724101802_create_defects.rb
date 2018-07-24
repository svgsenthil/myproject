class CreateDefects < ActiveRecord::Migration[5.2]
  def change
    create_table :defects do |t|
			t.string  :defect_number
    	t.string	:defect_desc

      t.timestamps
    end
  end
end
