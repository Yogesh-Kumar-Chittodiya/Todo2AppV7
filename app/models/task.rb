class Task < ApplicationRecord
    validates :tname, :tstatus, presence: true
end
