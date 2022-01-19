class ListsItemController < ApplicationController
    before_action :set_lists
    before_action :set_lists_item, except: [:create]

    def create
        @lists_item = @lists.lists_item.create(lists_item_params)
        redirect_to @lists
    end

    def destroy
        @lists_item = @lists.lists_item.find(params[:id])
        if @lists_item.destroy
        flash[:success] = "A tarefa foi deletada."
        else
        flash[:error] = "A tarefa não pode ser deletada"
    end

    def complete
        @lists_item.update_attribute(:completed_at, Time.now)
        redirect_to @lists_item, notice: "Tarefa completa"
    end
    
    private

    def set_lists_item
        @lists_item = todolist.find(params[:lists_item_id])
    end
    
    def lists_item_params
        params[:lists_item].permit(:content)
    end 
    

    def set_lists_item
        @lists_item = @lists_item.lists_item.find(params[:id])
    end
  
end
