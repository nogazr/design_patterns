require 'pry'

Dir[File.expand_path('../lib/**/*.rb', __dir__)].each do |file|
  require file
end

report = Report.new(HTMLFormatter.new)
report.output_report

report.formatter = PlainTextFormatter.new
report.output_report

HTML_FORMATTER = lambda do |context|
  puts('<html>')
  puts('  <head>')
  puts("    <title>#{context.title}</title>")
  puts('  </head>')
  puts('  <body>')
  context.text.each do |line|
    puts("    <p>#{line}</p>" )
  end
  puts('  </body>')
  puts('</html>')
end

report = ReportProc.new(&HTML_FORMATTER)
report.output_report

report = ReportProc.new do |context|
  puts("***** #{context.title} *****")
  context.text.each do |line|
    puts(line)
  end
end
report.output_report
