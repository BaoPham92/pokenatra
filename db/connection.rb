ActiveRecord::Base.establish_connection(
	:adapter => "postgresql",
	:database => "pokenatradb"
)

if defined? Sinatra
	after do
	  ActiveRecord::Base.connection.close
	end
end
