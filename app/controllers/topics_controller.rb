class TopicsController < ApplicationController
    def index
        @topic_items = Topic.by_position
    end

    def show
        puts "MY ID IS" + params[:id]
        topic_item = Topic.find(params[:id])
        render json: {topic: topic_item}
    end
  
    def new
        @topic_item = Topic.new
    end

    def create
        @topic_item = Topic.new(topic_params)
    end
  
    def edit
    end
  
    def update
    end
  
    def destroy
    end
  
    private
    def topic_params
      params.require(:topic).permit(:name, 
                                    :description, 
                                    :user_id      )
    end
  
    def set_topic_item
      @topic_item = Topic.find(params[:id])
    end
  end
  