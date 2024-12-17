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
#
class Package < ApplicationRecord
end
