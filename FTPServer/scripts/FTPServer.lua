--[[----------------------------------------------------------------------------

  Application Name: FTPServer                                                                                                                       
                                                                                             
  Description:
  Creating FTP Server
  
  Script sets up a FTP server that listens on (default) port 21 and serves the 
  content of the project's resources folder.
  
  To demo this sample any FTP client can be used to connect to the server (127.0.0.1:21) 
  using anonymous login and to browse the contents. 
  The file "test.txt" can be downloaded. Uploading files is not possible as the 
  user's home directory is set to 'resources'. If uploading should be tested as 
  well, it must be changed to 'private'.                                                         
  
------------------------------------------------------------------------------]]

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