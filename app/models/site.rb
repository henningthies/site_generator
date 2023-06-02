class Site < ApplicationRecord
  has_many :sections, dependent: :destroy
  has_many :prompts, as: :promptable, class_name: "Prompt", dependent: :destroy
end
