class Event < ApplicationRecord
  belongs_to :user
<<<<<<< Updated upstream
=======
  enum genre:{ work: 1, fun: 2 }
  
  with_options presence: true do
    validates :genre
    validates :title
    validates :body
    validates :start_date
    validates :end_date
  end

  # validates :end_date, presence: true, if: :more_latest?

  # def more_latest?

  #   @event.start_date < @event.end_date

  # end

>>>>>>> Stashed changes
end
