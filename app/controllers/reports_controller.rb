class ReportsController < ApplicationController
    def new
    end
    def create
        @report = Report.new(report_params)
        @report.save
        redirect_to :controller => 'welcome', :action => 'index'
    end
    def show
        @reports = Report.order('date')
    end

    private
    def report_params
        #Report model is still to be determined
        params.require(:report).permit(:date, :cep)
    end
end
