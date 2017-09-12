# == Schema Information
#
# Table name: monsters
#
#  id         :integer          not null, primary key
#  name       :string
#  special    :string
#  level      :integer          default(1)
#  tribe_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_monsters_on_tribe_id  (tribe_id)
#
# Foreign Keys
#
#  fk_rails_28a843b8ce  (tribe_id => tribes.id)
#

class Monster < ApplicationRecord
  belongs_to :tribe

  BASES = [
    Vector[1,1,1,1],
    Vector[1,1,1,1],
    Vector[2,2,2,2],
    Vector[2,2,2,2]
  ]

  MAGS = [1,2,1,2]

  def ability
    i = level - 1
    @ability ||= BASES[i] + tribe.ability * MAGS[i]
  end

  def str
    ability[0]
  end

  def mov
    ability[1]
  end

  def dex
    ability[2]
  end

  def con
    ability[3]
  end

  def display_name
    ["★" * level,*name.split(/@/)].join("\n")
  end

end
