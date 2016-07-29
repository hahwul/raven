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
puts "       `Yba,                   ,d\'    ,dP\'        REMOTE HANDLER : [#{$raven.get_handler}]"
puts "          `\"Yba,__       __,adP\"     dP\"          TIME: [#{(time).to_s}]"
puts "              `\"\"\"\"\"\"\"\"\"\"\"\"\"\'                                                             By HAHWUL"
hr()
end
