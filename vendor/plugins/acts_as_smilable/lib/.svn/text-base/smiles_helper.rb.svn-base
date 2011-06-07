module SmilesHelper
  def self.get_smiles_hash
    @@smiles_hash ||= load_smiles_hash
    return @@smiles_hash
  end

  def self.load_smiles_hash
    YAML.load_file(RAILS_ROOT + "/vendor/plugins/acts_as_smilable/public/smiles.yaml")
  end
end
