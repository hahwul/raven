require File.dirname(__FILE__)+"/config/config.rb"  #Include Config File
require File.dirname(__FILE__)+"/src/raven.class.rb"  #Include Class File
require File.dirname(__FILE__)+"/src/func_display.rb"  #Include Class File
require File.dirname(__FILE__)+"/src/func_util.rb"  #Include Class File
$version = "1.0"

######################### MAIN START #############
system("clear")
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
  puts "version is v"+$version
  exit()
  
else if(ARGV.size > 1)
  help_short()
  exit()

else  # Main Start . Interactive Shell
  print_and_flush " #> Starting msfdemon "
  1.times do
  print_and_flush "."
  sleep 1
  end
  puts " [OK]"   # ./msfd
                      # -f : forground , -p -l 
  
  print_and_flush " #> Loading raven database "
  1.times do
  print_and_flush "."
  sleep 1
  end  
  puts " [OK]"   # ./msfd
  $raven = Raven.new()
  puts " #> Generate raven class .. [OK]"
  puts "\n\n                                Press enter key for start."
  gets  
  ####################################### >Start
  topbanner()
  puts " ※ set target information > [host , os , payload , handler]".green
  while(8)
  print_and_flush " [RAVEN]".red+"#> "
  $raven.raven_command(gets)
  end  
end
end
end
end


