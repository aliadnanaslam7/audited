class <%= migration_class_name %> < <%= migration_parent %>
  def self.up
    add_column :gem_audits, :association_id, :integer
    add_column :gem_audits, :association_type, :string
  end

  def self.down
    remove_column :gem_audits, :association_type
    remove_column :gem_audits, :association_id
  end
end
