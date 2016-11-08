class BasicProfilesController < ApplicationController
	def index
	@basic_profile = BasicProfile.all
	@education = Education.all
	@work = Work.all
	@contact = Contact.all
	end

    def show
    @basic_profile = BasicProfile.find(params[:id])
	end

	def new
	@basic_profile = BasicProfile.new
	end

	def edit
	@basic_profile = BasicProfile.find(params[:id])
	end

	def create
	@basic_profile = BasicProfile.new(basic_profile_params)
	if @basic_profile.save
	  redirect_to "/basic_profiles/#{@basic_profile.id}"
	else
	  render 'new'
	end
	end

	def update
	@basic_profile = BasicProfile.find(params[:id])

	if @basic_profile.update(basic_profile_params)
	  redirect_to @basic_profile
	else
	  render 'edit'
	end
	end

	def destroy
	@basic_profile = BasicProfile.find(params[:id])
	@basic_profile.destroy

	redirect_to profiles_path
	end

	private
	def basic_profile_params
	  params.require(:basic_profile).permit(:first_name, :last_name, :age, :sex, :father_name ,:mother_name, educations_attributes: [ :id, :qualification, :institution, :start_year, :end_year, :percentage, :_destroy], works_attributes: [:id , :company, :postion ,:from_year ,:to_year ,:_destroy],contacts_attributes: [ :id,:person, :street_name, :city_name, :country, :pin, :phone,:_destroy] )
	end
end
