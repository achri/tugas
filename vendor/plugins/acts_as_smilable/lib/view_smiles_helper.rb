module ViewSmilesHelper
  def smiles_inserter(control_id, options = {})
    result = ""
    if (options[:class])
        result += "<table class=\"#{options[:class]}\">"
    else
        result += "<table>"
    end
    hash = SmilesHelper::get_smiles_hash
    groups = hash.keys[0..((options[:count] || hash.keys.length)-1)].in_groups_of(options[:columns] || 10)
    for group in groups
      result += "<tr>"
      for smile in group
        if(not smile.nil?)
          result += "<td>"
          result += image_tag("/smiles/"+hash[smile], :id => hash[smile].parameterize.to_s, :style => "cursor: pointer;")
          result += "</td>"
        end
      end
      result += "</tr>"
    end
    result += "</table>"

    result += "<script type=\"text/javascript\">"

    result += "$(function(){ "
    hash.each do |key, value|
      result += "$('#" + value.parameterize.to_s  + "').click(function(){ control = $('#" + control_id + "'); control.val(control.val() + \"" + key + "\") });"
    end

    result += " });"

    result += "</script>"
  end
end
