# == Schema Information
#
# Table name: cities
#
#  id               :integer          not null, primary key
#  airport          :string
#  city_name        :string
#  country          :string
#  country_iso_code :string
#  language         :string
#
class City < ApplicationRecord
  def to_s
    "#{city_name}, #{country_iso_code}"
  end
end
