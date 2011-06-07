module ModelSmilesHelper
  def glyph_smiles(string_to_glyph, options = {}, html_options = nil)
    SmilesHelper::get_smiles_hash.each do |key, value|
      string_to_glyph.gsub!(key, "<img src=\"/smiles/" + value + "\" />")
    end
    return string_to_glyph
  end
end
