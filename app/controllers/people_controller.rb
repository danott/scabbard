class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      sign_in(@person)
      redirect_to :passages
    else
      flash.now[:error] = "Couldn't create account"
      render :new
    end
  end

  def edit
  end

  def update
    if reauthenticate_person && @person.update_attributes(person_params)
      redirect_to edit_person_path, flash: { info: "Password changed" }
    else
      redirect_to edit_person_path, flash: { error: "Couldn't change password" }
    end
  end

  def destroy
    @person.destroy
    sign_out
  end

  private

  def reauthenticate_person
    @person.authenticate(params[:person][:current_password])
  end

  def person_params
    params.require(:person).permit(
      :name, :email, :password, :password_confirmation
    )
  end
end
