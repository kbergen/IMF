class AddEntriesToExecutable < ActiveRecord::Migration
  def change
		add_column :executables, :sandbox_link, :string
		add_column :executables, :vt_link, :string
		add_column :executables, :parent_packed_file, :string
		add_column :executables, :malicious_file, :bool
		add_column :executables, :associated_intel, :string
  end
end
