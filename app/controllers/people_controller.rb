class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create    
    Person.create(person_params)
    byebug
    redirect_to people_path
  end

  def index
    @people = Person.all
  end

  private

  def person_params
    params.require(:person).permit(:name )
  end
end
