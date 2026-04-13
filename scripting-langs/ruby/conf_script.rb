require 'find'

Find.find("/") do |path|
  if path.end_with?(".conf")
    puts path
  end
end

