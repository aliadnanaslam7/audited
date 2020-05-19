class <%= migration_class_name %> < <%= migration_parent %>
  def self.up
    if index_exists? :gem_audits, [:association_id, :association_type], :name => 'association_index'
      remove_index :gem_audits, :name => 'association_index'
    end

    rename_column :gem_audits, :association_id, :associated_id
    rename_column :gem_audits, :association_type, :associated_type

    add_index :gem_audits, [:associated_id, :associated_type], :name => 'associated_index'
  end

  def self.down
    if index_exists? :gem_audits, [:associated_id, :associated_type], :name => 'associated_index'
      remove_index :gem_audits, :name => 'associated_index'
    end

    rename_column :gem_audits, :associated_type, :association_type
    rename_column :gem_audits, :associated_id, :association_id

    add_index :gem_audits, [:association_id, :association_type], :name => 'association_index'
  end
end
