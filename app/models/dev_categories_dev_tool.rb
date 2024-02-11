# frozen_string_literal: true

class DevCategoriesDevTool < ApplicationRecord
  belongs_to :category
  belongs_to :tool
end
