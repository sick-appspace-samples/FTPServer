
--Start of Global Scope--------------------------------------------------------- 

-- Create ftp server instance
handle = FTPServer.create()

-- Add anonymous user to enable login and set start directory to private
local success = FTPServer.addUser(handle, "anonymous", "", "resources")

-- Start the ftp server
if (success == true) then
  success = FTPServer.start(handle)
  if (success == true) then
    print("FTPServer is running. Connect to 127.0.0.1:21 with a FTP client")
  end
end

print("App finished.")

--End of Global Scope----------------------------------------------------------- 
