class Turn < ApplicationRecord
  belongs_to :player
  belongs_to :card, optional: true
  belongs_to :characteristic, optional: true

  validates :card, presence: true, unless: :characteristic?
  # validates :characteristic, presence: true, unless: :card?

  def characteristic?
    characteristic.present?
  end
end
