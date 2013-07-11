class AddName < ActiveRecord::Migration
  def up
    add_column :students, :address, :string
    add_column :students, :name, :string
    Student.all.each { |student| student.update_attribute(:name, student.full_name) }
    remove_column :students, :first_name
    remove_column :students, :last_name
  end

  def down
    add_column :students, :last_name, :string
    add_column :students, :first_name, :string
    Student.all.each { |student| student.update_attribute(:first_name, student[:name].split(' ')[0]) }
    Student.all.each { |student| student.update_attribute(:last_name, student[:name].split(' ')[1]) }
    remove_column :students, :name
    remove_column :students, :address
  end
end
