class Section < ApplicationRecord
  belongs_to :site

  has_many :prompts, as: :promptable, class_name: "Prompt", dependent: :destroy
end
