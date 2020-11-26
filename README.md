# small-open-with-win-gui
A powershell converted to an exe to select what program you want to open your file with on double click
  
This was a response to a [Reddit post.](https://old.reddit.com/r/software/comments/k11zm0/looking_for_a_simple_tool_to_expand_open_file/)  
  
So, lets say you have text files, but you have 6 programs that can open text files. You don't want to always default. This is a mini program that allows you to select and pass on the file and open it in whatever you put in your menu.

#Developed with:

- https://github.com/lukaskarabec/Powershell-GUI-editor
- [PS2EXE](https://gallery.technet.microsoft.com/PS2EXE-GUI-Convert-e7cb69d5/view/Discussions/2)  
- SnagIt for screen shots
  
# How to set this up in Windows 10
  
1) Make a folder in your c:\program files.  (I will assume you are using "c:\program files\menu")  
2) Copy all the files from this Github into that folder  

3) Edit the top of menu.ps1 to reflect what programs and where there EXEs are located  
3a) This is simplifield JSON. You can add more programs or reduce programs.

4) Make this into an EXE with PS2EXE  
4a) You only need to fill in to 2 fields. Source, and Destination.

5) Find one of the files you want to associate to the menu. Like a JPEG  

6) Right click the JPEG and hit properties  
![Right click the JPEG and hit properties](http://virasawmi.com/gordon/images/2020-11-26_12-17-36.png)
7) Hit the Change button on the top right
![Hit the Change button on the top right](http://virasawmi.com/gordon/images/2020-11-26_12-18-02.png)
8) Click More Apps on the bottom left
![Click More Apps on the bottom left](http://virasawmi.com/gordon/images/2020-11-26_12-18-32.png)
9) Click Look for another app on this PC on the bottom left
![Click Look for another app on this PC on the bottom left](http://virasawmi.com/gordon/images/2020-11-26_12-18-50.png)
10) Find where you put menu.exe and click ok.