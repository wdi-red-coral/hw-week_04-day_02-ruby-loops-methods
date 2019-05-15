
class Subway
    def initialize(from_line , to_line , from_stop , to_stop)
        @subway = {
        red: ['South station' , 'Park Street' , 'Kendall' ,
             'Central' , 'Harvard' , 'Porter' , 'Davis' , 'Alewife'],
        green: ['Government Center' ,'Park Street' , 'Boylston',
             'Arlington' , 'Copley' , 'Hynes' , 'Kenmore'],
        orange: ['North Station' , 'Haymarket' , 'Park Street' , 'State' ,
             'Downtown Crossing' , 'Chinatown' , 'Back Bay' , 'Forest Hills']
        }
        @from = from_line
        @to =  to_line
        @from_s = from_stop
        @to_s = to_stop
          
        def self.Same_Line
            @travel = (@subway[:"#{@from}"].index(@from_s) - @subway[:"#{@to}"].index(@to_s)).abs
            puts  "You have traveled (#{@travel}) stops"
        end 
        def self.Different_Line
            @travel = (@subway[:"#{@from}"].index(@from_s) - @subway[:"#{@from}"].index('Park Street')).abs+
            (@subway[:"#{@to}"].index(@to_s) - @subway[:"#{@to}"].index('Park Street')).abs
            puts  "You have traveled (#{@travel}) stops"
        end 
        def self.Validate_Input
            if ((@from.to_s == 'orange' || @from.to_s == 'red' || @from.to_s == 'green') && @from.to_s == @to.to_s)
                self.Same_Line
            else 
                puts 'Invalid lines'
            end
        end
    end

    def check_line() 
        self.Validate_Input
    end
end
instance = Subway.new('green' , 'green' , 'Park Street' , 'Kenmore')
instance.check_line

