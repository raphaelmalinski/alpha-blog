# frozen_string_literal: true

class AddTimestampsToArticles < ActiveRecord::Migration[6.1] # rubocop:todo Style/Documentation
  def change
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end
