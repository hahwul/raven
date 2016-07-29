require File.dirname(__FILE__)+"/config/config.rb"  #Include Config File
puts "Raven"
$version = "1.0"

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
puts "           __,aaPPPPPPPPaa,__"
puts "         ,adP\"\"\"\'          `\"\"Yb,_"
puts "      ,adP\'                     `\"Yb,"
puts "    ,dP\'     ,aadPP\"\"\"\"\"YYba,_     `\"Y,"
puts "   ,P\'    ,aP\"\'            `\"\"Ya,     \"Y,"
puts "  ,P\'    aP\'     _________     `\"Ya    `Yb,"
puts " ,P\'    d\"    ,adP\"\"\"\"\"\"\"\"Yba,    `Y,    \"Y,"
puts ",d\'   ,d\'   ,dP\"            `Yb,   `Y,    `Y,"
puts "d\'   ,d\'   ,d\'    ,dP\"\"Yb,    `Y,   `Y,    `b"
puts "8    d\'    d\'   ,d\"      \"b,   `Y,   `8,    Y,    \'||\'\'|.       |     \'||\'  \'|\' \'||\'\'\'\'|  \'|.   \'|\'"
puts "8    8     8    d\'    _   `Y,   `8    `8    `b     ||   ||     |||     \'|.  .\'   ||  .     |\'|   |" 
puts "8    8     8    8     8    `8    8     8     8     ||\'\'|\'     |  ||     ||  |    ||\'\'|     | \'|. | "
puts "8    Y,    Y,   `b, ,aP     P    8    ,P     8     ||   |.   .\'\'\'\'|.     |||     ||        |   |||" 
puts "I,   `Y,   `Ya    \"\"\"\"     d\'   ,P    d\"    ,P    .||.  \'|\' .|.  .||.     |     .||.....| .|.   \'| "
puts "`Y,   `8,    `Ya         ,8\"   ,P\'   ,P\'    d\'                         [v1.0]"
puts " `Y,   `Ya,    `Ya,,__,,d\"\'   ,P\'   ,P\"    ,P"                         
puts "  `Y,    `Ya,     `\"\"\"\"\'     ,P\'   ,d\"    ,P\'                by HAHWUL[www.hahwul.com]"
puts "   `Yb,    `\"Ya,_          ,d\"    ,P\'    ,P\'        Automation Hacking & Penetration Testing Suite"
puts "     `Yb,      \"\"YbaaaaaadP\"     ,P\'    ,P\'               > http://www.hahwul.com/p/raven.html" 
puts "       `Yba,                   ,d\'    ,dP\'                > http://github.com/hahwul/raven"
puts "          `\"Yba,__       __,adP\"     dP\""
puts "              `\"\"\"\"\"\"\"\"\"\"\"\"\"\'"
hr()
end

def topbanner()
time = Time.new
system("clear")
puts "           __,aaPPPPPPPPaa,__"
puts "         ,adP\"\"\"\'          `\"\"Yb,_"
puts "      ,adP\'                     `\"Yb,"
puts "    ,dP\'     ,aadPP\"\"\"\"\"YYba,_     `\"Y,"
puts "   ,P\'    ,aP\"\'            `\"\"Ya,     \"Y,"
puts "  ,P\'    aP\'     _________     `\"Ya    `Yb,"
puts " ,P\'    d\"    ,adP\"\"\"\"\"\"\"\"Yba,    `Y,    \"Y,"
puts ",d\'   ,d\'   ,dP\"            `Yb,   `Y,    `Y,"
puts "d\'   ,d\'   ,d\'    ,dP\"\"Yb,    `Y,   `Y,    `b"
puts "8    d\'    d\'   ,d\"      \"b,   `Y,   `8,    Y,    \'||\'\'|.       |     \'||\'  \'|\' \'||\'\'\'\'|  \'|.   \'|\'"
puts "8    8     8    d\'    _   `Y,   `8    `8    `b     ||   ||     |||     \'|.  .\'   ||  .     |\'|   |" 
puts "8    8     8    8     8    `8    8     8     8     ||\'\'|\'     |  ||     ||  |    ||\'\'|     | \'|. | "
puts "8    Y,    Y,   `b, ,aP     P    8    ,P     8     ||   |.   .\'\'\'\'|.     |||     ||        |   |||" 
puts "I,   `Y,   `Ya    \"\"\"\"     d\'   ,P    d\"    ,P    .||.  \'|\' .|.  .||.     |     .||.....| .|.   \'| "
puts "`Y,   `8,    `Ya         ,8\"   ,P\'   ,P\'    d\'                         [v#{$version}]"
puts " `Y,   `Ya,    `Ya,,__,,d\"\'   ,P\'   ,P\"    ,P"                         
puts "  `Y,    `Ya,     `\"\"\"\"\'     ,P\'   ,d\"    ,P\'     TARGET HOST:[#{$raven.get_target_addr}]"
puts "   `Yb,    `\"Ya,_          ,d\"    ,P\'    ,P\'      TARGET OS: [#{$raven.get_target_os}]"
puts "     `Yb,      \"\"YbaaaaaadP\"     ,P\'    ,P\'       PAYLOAD: [#{$raven.get_payload}]"
puts "       `Yba,                   ,d\'    ,dP\'        MODE: [#{$raven.get_mode}]"
puts "          `\"Yba,__       __,adP\"     dP\"          TIME: [#{(time).to_s}]"
puts "              `\"\"\"\"\"\"\"\"\"\"\"\"\"\'                                                             By HAHWUL"
hr()
end

def print_and_flush(str)
  print str
  $stdout.flush
end

def hr()
  puts "---------------------------------------------------------------------------------------------------"
end
######################### RAVEN CLASS ###########
class Raven
def initialize()
   @raven_target_addr = "none"
   @raven_target_os = "none"
   @raven_payload = "meterpreter"
   @raven_mode = "Deep"
   @app_strlist = Array.new(2)
   for i in (0..2)
     @app_strlist[i] = Array.new()
   end
 end

def get_target_addr()
 return @raven_target_addr
end
def get_target_os()
 return @raven_target_os
end
def get_payload()
 return @raven_payload
end
def get_mode()
 return @raven_mode
end
end
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
  
end
end
end
end


