class <%= migration_class_name %> < <%= migration_parent %>
  def self.up
    add_column :gem_audits, :request_uuid, :string
    add_index :gem_audits, :request_uuid
  end

  def self.down
    remove_column :gem_audits, :request_uuid
  end
end
