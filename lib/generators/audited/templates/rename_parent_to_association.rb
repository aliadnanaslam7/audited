class <%= migration_class_name %> < <%= migration_parent %>
  def self.up
    rename_column :gem_audits, :auditable_parent_id, :association_id
    rename_column :gem_audits, :auditable_parent_type, :association_type
  end

  def self.down
    rename_column :gem_audits, :association_type, :auditable_parent_type
    rename_column :gem_audits, :association_id, :auditable_parent_id
  end
end
