class NikahEntry < ApplicationRecord
  belongs_to :user
    has_many :nikah_signs, inverse_of: :nikah_entry
  accepts_nested_attributes_for :nikah_signs, reject_if: :all_blank, allow_destroy: true
end
