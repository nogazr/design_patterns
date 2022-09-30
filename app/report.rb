require 'pry'

Dir[File.expand_path('../lib/**/*.rb', __dir__)].each do |file|
  require file
end

# report_plain = ReportPlain.new
# report_plain.output_report(:plain)
# report_plain.output_report(:html)

report = HTMLReport.new
report.output_report

report = PlainTextReport.new
report.output_report
