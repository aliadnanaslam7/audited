class <%= migration_class_name %> < <%= migration_parent %>
  def self.up
    rename_column :gem_audits, :changes, :audited_changes
  end

  def self.down
    rename_column :gem_audits, :audited_changes, :changes
  end
end
