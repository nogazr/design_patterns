require_relative './report.rb'

class PlainTextReport < Report

  private

  def output_head
    puts("*** #{@title} ***")
    puts
  end

  def output_line(line)
    puts line
  end
end
