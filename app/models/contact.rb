class Contact < ApplicationRecord
  # Associations
    #relationship to other models 
    # belongs_to
    #   # who the parent is  
    #   # child models 

    # has_many
    # has_one
    # has_many :through 
    #   # parent models
    #   # who the children models are 

    # dependent 
      #needed option 

    # has_many :notes, dependent: :destroy 
    # # has_one :notes 
    # has_one :address

  # Validations
    # makes sure the data going to the database matches the requirement 
    # confirmation
    #   makes 2 field within the form match 
    # inclusion 
    #   makes sure that a particular field is included within a given set 

    #   class Coffee < ActiveRecord::Base
    #     validates :size, inclusion: {
    #   in: %w(small medium large),
    #     message: "%{value} is not a valid size"
    #     }
    #   end

    # length
    #   # how many characters you are letting them pass in/type for a field 
    #   # (i.e. password is 8 characters long)

    #   class Person < ActiveRecord::Base
    #     validates :name, length: {minimum: 2}
    #     validates :bio, length: {maximum: 500}
    #     validates :password, length: {in: 6..20}
    #     validates :registration_number, length: {is: 6}

  #   numerically
  #       make sure a field is a type of number

  #     class Player < ActiveRecord::Base
  #   validates :points, numericality: true
  #   validates :games_played, numericality: { only_integer: true }
  #   validates :golf_handicap, numericality: { less_than_or_equal_to: 40.4, greater_than_or_equal_to: 2 }
  # end

  #   presence 
  #     make sure you are not passing in an empty field 

  #    class Person < ActiveRecord::Base
  #   validates :name, :login, :email, presence: true
  # end

  #   uniqueness 
  #     make sure there is only one record with that unique attribute value 
  #     (i.e. only one of a particular email/username)

  #       class Account < ActiveRecord::Base
  #   validates :email, uniqueness: true
  # end

# validates :first_name, :last_name, :age, :email, :phone, :friend. presence: true
# validates :email, uniqueness: true 
# validates :age, numericality: { only_integer: true } 


# Callbacks
# - trigger logic based off of an event 
# before_validation
# after_validation
# before_save
# after_save
# around_save
# before_create
# after_create 
# around_create 

# class CreditCard < ActiveRecord::Base
#   before_save :encrypt_card_number

#   private 

#   def encrypt_card_number
#     self.card_nunber = bcrypt(self.card_number)
#   end
# end

# Methods

# class method
  # class Person < ActiveRecord::Base
  #   # called on a class Person.by_first_name
  #   def self.by_first_name
  #     order(:first_name)
  #   end
  # end

  # # instance method
  # class Person < ActiveRecord::Base
  #   # called on an instance @person.full_name
  #   def full_name
  #    "#{self.first_name} {self.last_name}"
  #   end
  # end

# fat model skinny controller - any logic should be in the model, controller actions 


# end
