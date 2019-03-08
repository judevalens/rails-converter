class ConverterController < ApplicationController
    def temperature
        @temperature = params[:temp].to_i

        if params[:from] == "c"
            if params[:to] == "f"
                @temperature = @temperature*(5.0/9)+32
            elsif params[:to] == "k"
                @temperature = @temperature+273.15
            end
        end

        if params[:from] == "f"
            if params[:to] == "c"
                @temperature = (@temperature-32)*(5.0/9)
            elsif params[:to] == "k"
                @temperature = (@temperature-32)*(5.0/9)+273.15
            end
        end

        if params[:from] == "k"
            if params[:to] == "f"
                @temperature = (@temperature-273.15)*(5.0/9)+32
            elsif params[:to] == "c"
                @temperature = @temperature-273.15
            end
        end
        @temperature = @temperature.round(2)
                
    end
end
