class Comment < ActiveRecord::Base
  # relationship from one article
  belongs_to :article
  before_save :transform_comment

  validates_presence_of :comment, :article_id, :user_id

  def transform_comment
	  self.comment = glyph_smiles(self.comment)
	end
end
