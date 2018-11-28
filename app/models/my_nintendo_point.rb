class MyNintendoPoint < ApplicationRecord
    belongs_to :user


    validates :gpoints, numericality: true
    validates :spoints, numericality: true
end

