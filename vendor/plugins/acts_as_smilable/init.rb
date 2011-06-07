require 'smiles_helper'
require 'model_smiles_helper'
require 'view_smiles_helper'

ActiveRecord::Base.send :include, ModelSmilesHelper
ActionView::Base.send :include, ViewSmilesHelper