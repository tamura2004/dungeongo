# == Schema Information
#
# Table name: tribes
#
#  id         :integer          not null, primary key
#  name       :string
#  str        :integer          default(0)
#  mov        :integer          default(0)
#  dex        :integer          default(0)
#  con        :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tribe < ApplicationRecord
  def ability
    Vector[str,mov,dex,con]
  end

  def ability=(vector)
    self.str = vector[0]
    self.mov = vector[1]
    self.dex = vector[2]
    self.con = vector[3]
  end
end
