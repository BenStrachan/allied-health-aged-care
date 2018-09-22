# == Schema Information
#
# Table name: residents
#
#  id                      :bigint(8)        not null, primary key
#  first_name              :string
#  last_name               :string
#  date_of_birth           :date
#  room                    :string
#  author_id               :integer
#  business_id             :integer
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  diagnosis_summary       :string
#  admission_date          :date
#  permanent_resident_date :date
#  status                  :string
#

class Resident < ApplicationRecord
  belongs_to :business, optional: true
  has_many :post_fall_assessments, dependent: :destroy
  has_many :mobility_assessments, dependent: :destroy
  has_many :pain_assessments, dependent: :destroy

  def full_name
  [first_name, last_name].select(&:present?).join(' ').titleize
  end

end
