class CreateAssemblySequences < ActiveRecord::Migration
  def change
    create_table :assembly_sequences do |t|
      t.references :car, index: true
      t.references :part, index: true
      t.integer :sequence

      t.timestamps null: false
    end
    add_foreign_key :assembly_sequences, :cars
    add_foreign_key :assembly_sequences, :parts
  end
end
