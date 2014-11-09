class Admin::OpinionsController < AdminController 

  before_action :set_opinion, except: [:index, :new, :create]

  def index 
    @opinions = Opinion.all
  end

  def new 
    @opinion = Opinion.new
  end

  def create
    @opinion = Opinion.new(opinion_params)
    if @opinion.save
      redirect_to admin_opinions_path, notice: "Opinia dodana"
    else
    render action: "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @opinion.update_attributes(opinion_params)
      redirect_to admin_opinions_path, notice: "Opinia zapisana"
    else
      render action: "edit"
    end
  end

  def destroy
    if @opinion.delete
      redirect_to admin_opinions_path, notice: "Opinia usunięta"
    else
      redirect_to admin_opinions_path, notice: "Wystapil problem przy usuaniu"
    end
  end

  protected

  def set_opinion
    @opinion = Opinion.find(params[:id])  
  end

  def opinion_params
    params.require(:opinion).permit(:content, :stars, :job, :hr)
  end



end
