class Api::V0::ItemController < Api::V0::BaseController
    def show
        @item = Submit.find(params[:id])
    end
end
