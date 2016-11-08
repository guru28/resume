class BioDataController < ApplicationController
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
	@profile = BasicProfile.find(params[:id])
	end

	def create
	@basic_profile = BasicProfile.new
	if @basic_profile.save
	  redirect_to @basic_profile
	  render 'new'
	end
	end

	def update
	@basic_profile = BasicProfile.find(params[:id])

	if @basic_profile.update(profile_params)
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
	def bio_datum_params
	  params.require(:basic_profile).permit(:first_name, :last_name, :age, :sex, :father_name ,:mother_name)
	end
end
