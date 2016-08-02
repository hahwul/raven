######################### RAVEN CLASS ###########
class Raven
def initialize()
   @raven_target_addr = "none"
   @raven_target_os = "none"
   @raven_payload = "meterpreter"
   @raven_remote_handler = "127.0.0.1:4444"
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
def get_handler()
 return @raven_remote_handler
end

def raven_help()
 puts " set                     : set target information"
 puts "                          -> set host 127.0.0.1"
 puts "                          -> set os linux"
 puts "                          -> set handler 127.0.0.1:4444"
 puts " check / test            : no risk check"
 puts " exploit / attack / run  : real attack"
 puts " clear / cls             : clear display"
 puts " exit / quit / bye       : exit the raven"
 puts ""
end

def raven_command(cmd)
 cmdarry = cmd.split(' ')
 command = cmdarry.shift   
 if command != nil
 command = command.downcase
 end
 argument = cmdarry         
 case command
    when "exit", "quit", "bye"
    puts "\n Exit the RAVEN.."
    exit(0)
    when "clear", "cls"
    topbanner()
    when "help", "man"
      self.raven_help()
    when "set"
      puts "set"
      #argument.size is argument count
      case argument.size
      when 1 # ------------------------> no value
      puts "no value"
      when 2
      argument[0] = argument[0].downcase
		  case argument[0]
		  when "host","target"
			@raven_target_addr = argument[1]
			topbanner()
		  when "os"
			@raven_target_os = argument[1]
			topbanner()
		  when "payload"
			@raven_payload = argument[1]
			topbanner()
		  when "handler"
			@raven_remote_handler = argument[1]
			topbanner()
		  else
		   puts "Invaild Value"
		  end
	  else
      puts "Invaild Argument"
      end
    end
end

end
