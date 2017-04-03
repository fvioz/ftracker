class <%= migration_class_name %> < ActiveRecord::Migration
  def change
    create_table :tracks, force: true do |t|
      t.json 'payload'
    end

    add_index :tracks, :created_at
  end
end
