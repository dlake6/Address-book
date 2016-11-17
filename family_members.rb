require "./person_info.rb"

class FamilyMember < Person
  attr_accessor :relationship

  def initalize (first, last, dob)
    super
    relationship = nil
  end

end