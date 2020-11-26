# small-open-with-win-gui
A powershell converted to an exe to select what program you want to open your file with on double click
  
This was a response to a [Reddit post.](https://old.reddit.com/r/software/comments/k11zm0/looking_for_a_simple_tool_to_expand_open_file/)  
  
So, lets say you have text files, but you have 6 programs that can open text files. You don't want to always default. This is a mini program that allows you to select and pass on the file and open it in whatever you put in your menu.

#Developed with:

- https://github.com/lukaskarabec/Powershell-GUI-editor
- [PS2EXE](https://gallery.technet.microsoft.com/PS2EXE-GUI-Convert-e7cb69d5/view/Discussions/2)  
  
# How to set this up  
  
1) Make a folder in your c:\program files.  (I will assume you are using "c:\program files\menu")  
2) Copy all the files from this Github into that folder  
3) Edit the menu.ps1 to reflect what programs and where there EXEs are located  
4) Make this into an EXE with PS2EXE  
5) Find one of the files you want to associate to the menu. Like a JPEG  
6) Right click the JPEG and hit properties  
![Right click the JPEG and hit properties](http://virasawmi.com/gordon/images/2020-11-26_12-17-36.png)
