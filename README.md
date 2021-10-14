# SonarQube Scanner
## Description
_______________
SonarQube is a Code Quality Assurance tool that collects and analyzes source code, and provides reports for the code quality of your project. It combines static and dynamic analysis tools and enables quality to be measured continually over time. 

*This tools use vagrant and VirtualBox to run, so make sure to download vagrant(2.1.5) and VirtualBox(5.2.44) first to your computer.*
### Download Links :
- [Vagrant](https://www.vagrantup.com/downloads)
- [VirtualBox](https://www.virtualbox.org/wiki/Download_Old_Builds_5_2)


## Installation :
____________________
1. Install Vagrant and VirtualBox in your computer use the link above _(Install the specific version so that the tools can run properly)_.
2. Download the zip folder from github and unzip it into your computer.
3. Open command prompt and move to the directory you unzip the file by entering this command :
```
cd (your directory)
```
*example :*
```
cd C:\VM_PBL\sonarqube
```
4. Run Vagrant using the command below to your command prompt :
```
vagrant up
```
5. Wait for the vagrant finish the booting.
6. After the vagrant finished booting, Go to your browser and enter _localhost:9000_ in the url box.
7. SonarQube is ready to use. 

__If you want to know how to use the SonarQube you can read the [documentation](https://docs.sonarqube.org/latest/).__



## License
________

Copyright 2008-2021 SonarSource.

Licensed under the [GNU Lesser General Public License, Version 3.0](https://www.gnu.org/licenses/lgpl.txt)
