# == Schema Information
#
# Table name: packages
#
#  id              :bigint           not null, primary key
#  created_on      :datetime
#  delivery_date   :date             not null
#  delivery_status :boolean
#  description     :string           not null
#  details         :text
#  updated_on      :datetime
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#
class Package < ApplicationRecord
  belongs_to(:user)

  def undelivered_packages
    undelivered = Package.where(:delivery_status => false).order(:delivery_date)
    return undelivered
  end

  def delivered_packages
    delivered = Package.where(:delivery_status => true).order(:delivery_date)
    return delivered
  end
end
