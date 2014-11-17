class SessionsController < ApplicationController
  def new
  end

  def create
    @person = find_person_using_email_and_password

    if @person
      sign_in(@person)
      redirect_to passages_path
    else
      redirect_to new_session_path, flash: { error: "Couldn't sign in" }
    end
  end

  def destroy
    sign_out
    redirect_to new_session_path
  end

  private

  def find_person_using_email_and_password
    Person.find_by(params.permit(:email)).try(:authenticate, params[:password])
  end
end
