class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :note
      t.string :activity_type
      t.integer :contact_id
      t.integer :user_id

      t.timestamps
    end
  end
end
