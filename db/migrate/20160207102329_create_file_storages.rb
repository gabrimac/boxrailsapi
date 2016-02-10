class CreateFileStorages < ActiveRecord::Migration[5.0]
  def change
    create_table :file_storages do |t|
      t.string :type
      t.string :filename
      t.string :filetype
      t.integer :filesize
      t.string :path
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
