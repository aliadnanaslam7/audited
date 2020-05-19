class <%= migration_class_name %> < <%= migration_parent %>
  def self.up
    if index_exists?(:gem_audits, [:auditable_type, :auditable_id], name: index_name)
      remove_index :gem_audits, name: index_name
      add_index :gem_audits, [:auditable_type, :auditable_id, :version], name: index_name
    end
  end

  def self.down
    if index_exists?(:gem_audits, [:auditable_type, :auditable_id, :version], name: index_name)
      remove_index :gem_audits, name: index_name
      add_index :gem_audits, [:auditable_type, :auditable_id], name: index_name
    end
  end

  private

  def index_name
    'auditable_index'
  end
end
