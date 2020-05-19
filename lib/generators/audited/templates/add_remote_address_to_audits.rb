class <%= migration_class_name %> < <%= migration_parent %>
  def self.up
    add_column :gem_audits, :remote_address, :string
  end

  def self.down
    remove_column :gem_audits, :remote_address
  end
end

