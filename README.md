# win-service-toggler
This tool is primarily designed to help you debloat Windows by disabling unnecessary Windows services. It comes with a pre-defined list of Windows services to disable, but you can easily customize the list to fit your unique needs.

## Usage
win-service-toggler is an interactive PowerShell script. Run it by executing:

```PowerShell
.\win-service-toggler.ps1
```
```
=============== Windows Service Toggler ===============

1: Save current state of services to a file.
2: Show services that do not match desired service start type.
3: Show services with manual/disabled desired state that are currently running.
4: Show services that are not included in the list.
5: Set start type of services to a desired state.
Q: Quit.

Select an option and press Enter:
```

### **Option 1: Save current state of services to a file.**
Saves the current state of all Windows services to two files. Human readable text file and JSON file. Files will be saved in the current directory and named:

`<hostname>_service_state_<YYYYMMDD>_<HHMMSS>.txt`

`<hostname>_service_state_<YYYYMMDD>_<HHMMSS>.json`

Use this to backup service state before making any changes.

### **Option 2: Show services that do not match desired service start type.**
Displays a list of services that will be modified when using option 5.
Output:
```
Name                  DisplayName                                    DesiredStartType CurrentStartType CurrentState
----                  -----------                                    ---------------- ---------------- ------------
DiagTrack             Connected User Experiences and Telemetry       disabled                Automatic      Running
DPS                   Diagnostic Policy Service                      disabled                Automatic      Running
```

### **Option 3: Show services with manual/disabled desired state that are currently running.**
Displays services that have their desired startup type set to manual or disabled and are currently in a running state.
Output:
```
Name                         DisplayName                               DesiredStartType CurrentStartType CurrentState
----                         -----------                               ---------------- ---------------- ------------
SstpSvc                      Secure Socket Tunneling Protocol Service  manual                     Manual      Running

```
This is useful for finding services that start even when their startup type is set to manual.

### **Option 4: Show services that are not included in the list.**
Displays all services that are not included in the service list.
Output:
```
Name                           DisplayName                                                    StartType  Status
----                           -----------                                                    ---------  ------
ClickToRunSvc                  Microsoft Office Click-to-Run Service                          Automatic Running
CmService                      Container Manager Service                                      Automatic Running
```

### **Option 3: Set start type of services to a desired state.**
This modified services by setting their startup type to the desired state. Use option 2 to check what modifications will be made.
**Note:** services will not be stopped if they are currently running so you will need to restart the system for changes to take an affect.
Output:
```
Following services have been modified:

Name              FromStartType ToStartType
----              ------------- -----------
FontCache             Automatic manual
NetTcpPortSharing      Disabled manual
Spooler               Automatic manual
```

## Documentation
- [docs\win_service_documentation.txt](docs\win_service_documentation.txt) - contains detailed Windows service documentation, refer to this for additional information about Windows services.
- [baseline](baseline) folder contains Windows service baseline exportes
    - [baseline\win11-22H2-build_22621.1344_service_state_20230308_164427.txt]([baseline\win11-22H2-build_22621.1344_service_state_20230308_164427.txt) - clean Windows 11 22H2 installation baseline (txt)
    - [baseline\win11-22H2-build_22621.1344_service_state_20230308_164427.json]([baseline\win11-22H2-build_22621.1344_service_state_20230308_164427.json) - clean Windows 11 22H2 installation baseline (JSON)

## References
- [Security guidelines for system services in Windows Server 2016 | Microsoft Learn](https://learn.microsoft.com/en-us/windows-server/security/windows-services/security-guidelines-for-disabling-system-services-in-windows-server)
- [Guidance on disabling system services on Windows IoT Enterprise | Microsoft Learn](https://learn.microsoft.com/en-us/windows/iot/iot-enterprise/optimize-your-device/services)
- [Windows 10 Services - Windows CMD - SS64.com](https://ss64.com/nt/syntax-services.html)