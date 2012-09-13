class Pry
  Pry::Commands.create_command "nesting" do
    group 'Navigating Pry'
    description "Show nesting information."

    def process
      @stack_info = _pry_.binding_stack.map.with_index do |obj, index|
        {
          :info => Pry.view_clip(obj.eval('self')),
          :level => index
        }
      end
      render
    end

    private

    def render
      output.puts "Nesting status :)"
      output.puts "--"
      @stack_info.each do |frame|
        top = frame[:index] == 0 ? '(Pry top level)' : ''
        output.puts "#{frame[:level]}. #{frame[:info]} #{top}"
      end
    end

  end
end
