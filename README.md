# Encryption-Toggle-for-7zip
One click encryption/extraction of user specified files and or folders using [7-Zip](https://www.7-zip.org/) program, to use my program 7-zip needs to be installed.
On execution the program will ask the user to input a password and encrypt your selection and clean up after itself. When run again the user needs to provide the correct password again after which everything will be restored.

# Usage
The ```ET7.exe``` file needs to be placed alongside the ```variables.cfg``` configuration file in order to work. Please state your preferences as follows:
```
# Specify the file(s) (type(s)) and or folders you wish to encrypt seperated by a space. 
# Only use line 3 (next line).
text.txt folder1 *.jpg *.cfg

# What name should the archive have?
# Only use line 7 (next line).
files
```

Read [this](https://support.microsoft.com/en-us/office/examples-of-wildcard-characters-939e153f-bd30-47e4-a763-61897c87b3f4) to learn more about Windows wildcards.
