Set of custom .desktop files  
  
Can be copied to:  
`~/.local/share/applications` # Apps launchers here may take priorty over root located launchers that call the same executable. Not a recommended location for .desktop(s).  
  
Or can be copied to:  
`/usr/local/share/applications`  # Recommended location for self-made entries.  
  
Or  
`/usr/share/applications/` # Default launcher location for system packages  
Should be given a permission of -rw-r--r-- if copied to /usr/share/applications/:  
Example:  
`chmod 644 lxshortcut-make.desktop`  
`sudo cp ~/my.desktops/lxshortcut-make.desktop /usr/share/applications/lxshortcut-make.desktop`
