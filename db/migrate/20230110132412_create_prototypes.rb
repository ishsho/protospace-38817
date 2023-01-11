class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string     :title,         nul:false
      t.text       :catch_copy,    nul:false
      t.text       :concept,       nul:false
      t.references :user,          nul:false, foreign_key: true
      t.timestamps
    end
  end
end
