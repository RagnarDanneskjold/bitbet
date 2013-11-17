#BitcoinHelper
module BitcoinHelper

def bitcoin_client
	begin
		@bc = RPC::JSON::Client.new 'http://admin:1234@127.0.0.1:8332', 1.1
	rescue SystemCallError
  		redirect_to root_path, :flash => { :error => "Client not working" }
  	end
  	@bc
end

def bc
	@bc ||= bitcoin_client
end

end