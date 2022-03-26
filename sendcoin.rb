#File needs to be in the same directory as galleoncoin-cli
#You can call the sendcoin function with the address and the amount you want to send
#Address is taken in as a string
#amount is taken in as a integer
def sendcoin(address,amount)
out_file = File.new(Dir.getwd+"/gale_coin_sender.bat", "w")
  out_file.puts("
    galleoncoin-cli sendtoaddress #{address} #{amount}
	Pause
    ")
  out_file.close
  puts "Mining file created"
end
system("start gale_coin_sender.bat")
