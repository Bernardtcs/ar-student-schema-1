require_relative '../config'

class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.references :teacher
      t.references :student
    end
  end
end
