class Project < ActiveRecord::Base
  validates :name, presence: true

  # valid dependencies:
  # :destroy (use callbacks)
  # :delete_all (DELETE FROM tickets WHERE project_id = :project_id)
  # :nullify (UPDATE tickets SET project_id = null WHERE project_id = :project_id)
  has_many :tickets, dependent: :delete_all
end
