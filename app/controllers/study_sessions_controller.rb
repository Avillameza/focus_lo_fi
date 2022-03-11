class StudySessionsController < ApplicationController
    def index
        @study_session_items = StudySession.by_position
    end

    def show
        puts "MY Study ID IS" + params[:id]
        study_session_item = StudySession.find(params[:id])
        render json: {study_session: study_session_item}
    end
  
    def new
        @study_session_item = StudySession.new
    end

    def create
        @study_session_item = StudySession.new(study_session_params)
    end
  
    def edit
    end
  
    def update
    end
  
    def destroy
    end
  
    private
    def study_session_params
      params.require(:study_session).permit(:id, 
                                    :duration, 
                                    :topic_id      )
    end
  
    def set_study_session_item
      @study_session_item = StudySession.find(params[:id])
    end
  end
  