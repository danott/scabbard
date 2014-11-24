class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def create
    @person = Person.find(@person.id) # Guest -> Person

    if @person.update_attributes(person_params)
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
    if updating_password?
      update_password
    else
      update_name
    end
  end

  def destroy
    @person = Guest.find(@person.id) # Person -> Guest
    @person.update_attributes(name: "DESTROYED", email: nil, password_digest: nil)
    sign_out
  end

  private

  def updating_password?
    params[:person][:current_password].present?
  end

  def update_password
    if reauthenticate_person && @person.update_attributes(person_params)
      redirect_to edit_person_path, flash: { info: "Password changed" }
    else
      redirect_to edit_person_path, flash: { error: "Couldn't change password" }
    end
  end

  def update_name
    if @person.update_attributes(person_params)
      redirect_to edit_person_path, flash: { info: "Name changed" }
    else
      redirect_to edit_person_path, flash: { error: "Couldn't change name" }
    end
  end

  def reauthenticate_person
    @person.authenticate(params[:person][:current_password])
  end

  def person_params
    params.require(:person).permit(
      :name, :email, :password, :password_confirmation
    )
  end
end
