require File.dirname(__FILE__)+"/config/config.rb"  #Include Config File
puts "Raven"

def help()
  puts "Usage: ruby raven.rb OPTION[-v, -h, -u]"
  puts "run raven"
  puts " -#> ruby raven.rb"
  puts "update"
  puts " -#> ruby raven.rb -u"
  puts "help"
  puts " -#> ruby raven.rb -h"
  puts "version"
  puts " -#> ruby raven.rb -v"
end
def help_short()
  puts "Usage: ruby raven.rb OPTION[-v, -h, -u]"
  puts "run raven"
  puts " -#> ruby raven.rb"
  puts "update"
  puts " -#> ruby raven.rb -u"
  puts "help"
  puts " -#> ruby raven.rb -h"
  puts "version"
  puts " -#> ruby raven.rb -v"
end
def banner()

end

#########################MAIN START#############
banner()
if(ARGV[0] == "-u" or ARGV[0] == "--update")
  puts "Update Module"
  puts "[INF] Update RAVEN".green
  Dir.chdir(File.dirname(__FILE__))
  system("git pull -v")
  puts "[FIN] Updated RAVEN".red

else if(ARGV[0] == "-h" or ARGV[0] == "--help")
  help()
  exit()

else if(ARGV[0] == "-v" or ARGV[0] == "--version")
  puts "version is RAVEN "+version
  exit()
  
else if(ARGV.size > 1)
  help_short()
  exit()
  
else  # Interactive Shell
   
puts "z"





end
end
end
end


