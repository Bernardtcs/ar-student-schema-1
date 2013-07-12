require_relative '../config'

class AddTimestamps < ActiveRecord::Migration
  def change
    add_column :students, :created_at, :datetime
    add_column :students, :updated_at, :datetime
    add_column :teachers, :created_at, :datetime
    add_column :teachers, :updated_at, :datetime
    add_column :relationships, :created_at, :datetime
    add_column :relationships, :updated_at, :datetime
  end
end
