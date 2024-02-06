#
# name
#     unique service name
#     wild cards are allowed for per-user services. For example: use "AarSvc_*" to match "AarSvc_17c12a"
#
# desiredStartType
#     service start type will be set to specified value; allowed values:
#      blank- service will not be modified
#      manual
#      disabled
#      auto
#
$servicesToModify = @(
    #
    # recommendation: disable
    #
    # misc
    @{name = "DiagTrack";                                   desiredStartType = "disabled"},  # Connected User Experiences and Telemetry; telemetry
    @{name = "wisvc";                                       desiredStartType = "disabled"},  # Windows Insider Program
    @{name = "RetailDemo";                                  desiredStartType = "disabled"},  # Retail Demo
    @{name = "lfsvc";                                       desiredStartType = "disabled"},  # Geolocation
    @{name = "MapsBroker";                                  desiredStartType = "disabled"},  # Downloaded Maps
    @{name = "dmwappushservice";                            desiredStartType = "manual"},    # Device Management Wireless Application Protocol (WAP) Push message Routing Service; related to SMS
    @{name = "WpnService";                                  desiredStartType = "disabled"},  # Windows Push Notifications System Service
    @{name = "PushToInstall";                               desiredStartType = "disabled"},  # Windows PushToInstall Service; Microsoft Store PushToInstall; #security
    @{name = "TrkWks";                                      desiredStartType = "manual"},    # Distributed Link Tracking Client; Linked files across NTFS-formatted volumes
    @{name = "WpcMonSvc";                                   desiredStartType = "manual"},    # Parental Controls
    @{name = "WPDBusEnum";                                  desiredStartType = "disabled"},  # Portable Device Enumerator; enforces group policy for removable mass-storage devices
    @{name = "BcastDVRUserService_*";                       desiredStartType = "manual"},    # GameDVR and Broadcast User Service; used for Game Recordings and Live Broadcasts
    @{name = "CaptureService_*";                            desiredStartType = "manual"},    # CaptureService_; Screen Capture; Windows.Graphics.Capture API screen capture functionality
    @{name = "OneSyncSvc_*";                                desiredStartType = "manual"},    # Sync Host_*; Synchronizes mail, contacts, calendar, etc.
    @{name = "PimIndexMaintenanceSvc_*";                    desiredStartType = "disabled"},  # Contact Data; contact indexing; starts when set to manual
    # remote access
    @{name = "RemoteAccess";                                desiredStartType = "disabled"},  # Routing and Remote Access; disbled by default; #security
    @{name = "RemoteRegistry";                              desiredStartType = "disabled"},  # Remote Registry Access; disabled by default; #security
    @{name = "WinRM";                                       desiredStartType = "disabled"},  # Windows Remote Management (WS-Management); #security
    # networking / communication
    @{name = "Fax";                                         desiredStartType = "manual"},    # Fax
    @{name = "TapiSrv";                                     desiredStartType = "manual"},    # Telephony (TAPI); breaks RRAS
    @{name = "SharedAccess";                                desiredStartType = "disabled"},  # Internet Connection Sharing; WiFi hotspots; Miracast; #security
    @{name = "ALG";                                         desiredStartType = "manual"},    # Application Layer Gateway Service; Internet Connection Sharing, 3rd party protocol plug-ins
    @{name = "AJRouter";                                    desiredStartType = "manual"},    # AllJoyn Router; IoT
    @{name = "iphlpsvc";                                    desiredStartType = "disabled"},  # IP Helper; IPv6 tunneling
    @{name = "IpxlatCfgSvc";                                desiredStartType = "manual"},    # IP Translation Configuration Service; IPv6 tunneling
    @{name = "lmhosts";                                     desiredStartType = "disabled"},  # TCP/IP NetBIOS Helper; NetBIOS over TCP/IP
    @{name = "SstpSvc";                                     desiredStartType = "manual"},    # Secure Socket Tunneling Protocol Service; SSTP VPN; breaks RRAS
    @{name = "SEMgrSvc";                                    desiredStartType = "disabled"},  # Payments and NFC; #security
    @{name = "upnphost";                                    desiredStartType = "manual"},    # UPnP Device Host
    @{name = "SSDPSRV";                                     desiredStartType = "disabled"},  # SSDP Discovery; Simple Service Discovery Protocol (SSDP); UPnP related
    @{name = "NetTcpPortSharing";                           desiredStartType = "disabled"},  # Net.Tcp Port Sharing Service; Networking; disabled by default
    @{name = "WMPNetworkSvc";                               desiredStartType = "disabled"},  # Windows Media Player Network Sharing; #security
    # Diagnostics and error reporting
    @{name = "PcaSvc";                                      desiredStartType = "disabled"},  # Program Compatibility Assistant (PCA)
    @{name = "DPS";                                         desiredStartType = "disabled"},  # Diagnostic Policy Service; starts when set to manual
    @{name = "WdiServiceHost";                              desiredStartType = "manual"},    # Diagnostic Service Host
    @{name = "WdiSystemHost";                               desiredStartType = "manual"},    # Diagnostic System Host
    @{name = "diagsvc";                                     desiredStartType = "manual"},    # Diagnostic Execution Service
    @{name = "WerSvc";                                      desiredStartType = "manual"},    # Windows Error Reporting; collects and sends crash/hang data used by both MS and third party ISVs/IHVs
    @{name = "wercplsupport";                               desiredStartType = "disabled"},  # Problem Reports Control Panel Support

    #
    # recommendation: disable if feature is not used
    #
    # Xbox
    @{name = "XblAuthManager";                              desiredStartType = ""},          # Xbox Live Auth Manager
    @{name = "XblGameSave";                                 desiredStartType = ""},          # Xbox Live Game Save
    @{name = "XboxGipSvc";                                  desiredStartType = ""},          # Xbox Accessory Management Service
    @{name = "XboxNetApiSvc";                               desiredStartType = ""},          # Xbox Live Networking Service
    # Bluetooth
    @{name = "BthAvctpSvc";                                 desiredStartType = ""},          # AVCTP service; Bluetooth; starts when set to manual
    @{name = "BTAGService";                                 desiredStartType = ""},          # Bluetooth Audio Gateway Service; Bluetooth
    @{name = "bthserv";                                     desiredStartType = ""},          # Bluetooth Support Service; Bluetooth
    @{name = "BluetoothUserService_*";                      desiredStartType = ""},          # Bluetooth User Support Service_*; per-user service
    # Smart Cards
    @{name = "SCardSvr";                                    desiredStartType = ""},          # Smart Card; YubiKey
    @{name = "ScDeviceEnum";                                desiredStartType = ""},          # Smart Card Device Enumeration Service
    @{name = "SCPolicySvc";                                 desiredStartType = ""},          # Smart Card Removal Policy
    @{name = "CertPropSvc";                                 desiredStartType = ""},          # Certificate Propagation; Smart Cards
    # Webcam
    @{name = "FrameServer";                                 desiredStartType = ""},          # Windows Camera Frame Server; webcam
    @{name = "FrameServerMonitor";                          desiredStartType = ""},          # Windows Camera Frame Server Monitor; webcam
    # Scanners and cameras
    @{name = "StiSvc";                                      desiredStartType = ""},          # Windows Image Acquisition (WIA); scanners and cameras
    @{name = "WiaRpc";                                      desiredStartType = ""},          # Still Image Acquisition Events; Windows Image Acquisition (WIA); scanners and cameras
    # Windows Hello; fingerprint and facial authentication
    @{name = "WbioSrvc";                                    desiredStartType = ""},          # Windows Hello fingerprint reader and facial recognition
    @{name = "SensorDataService";                           desiredStartType = ""},          # Sensors; Windows Hello
    # Peer Name Resolution Protocol (PNRP)
    @{name = "PNRPsvc";                                     desiredStartType = ""},          # Peer Name Resolution Protocol; PNRP Protocol
    @{name = "p2pimsvc";                                    desiredStartType = ""},          # Peer Networking Identity Manager; PNRP Protocol
    @{name = "PNRPAutoReg";                                 desiredStartType = ""},          # PNRP Machine Name Publication Service; PNRP Protocol
    @{name = "p2psvc";                                      desiredStartType = ""},          # Peer Networking Grouping; PNRP Protocol
    # networking / communication
    @{name = "PhoneSvc";                                    desiredStartType = ""},          # Phone Service; used by modern VoIP apps
    @{name = "lltdsvc";                                     desiredStartType = ""},          # Link-Layer Topology Discovery Mapper; creates a Network Map
    @{name = "QWAVE";                                       desiredStartType = ""},          # Audio/Video, Networking; QoS for AV applications
    @{name = "icssvc";                                      desiredStartType = ""},          # Windows Mobile Hotspot Service; share a cellular data connection with another device
    @{name = "WwanSvc";                                     desiredStartType = ""},          # WWAN AutoConfig; manages mobile broadband (GSM & CDMA) data card/embedded module adapters and connections
    @{name = "dot3svc";                                     desiredStartType = ""},          # Wired AutoConfig (DOT3SVC) service is responsible for performing IEEE 802.1X authentication on Ethernet interfaces
    @{name = "NPSMSvc_*";                                   desiredStartType = ""},          # Network Policy Server Management Service
    # hardware
    @{name = "PenService_*";                                desiredStartType = ""},          # PenService_*; Windows Pen and Touch input
    # Printing
    @{name = "PrintNotify";                                 desiredStartType = ""},          # Printer Extensions and Notifications
    @{name = "Spooler";                                     desiredStartType = ""},          # Print Spooler
    @{name = "PrintWorkflowUserSvc_*";                      desiredStartType = ""},          # PrintWorkflow_*; printing; per-user service
    # Wifi
    @{name = "WlanSvc";                                     desiredStartType = ""},          # Wifi Config
    @{name = "RmSvc";                                       desiredStartType = ""},          # Radio Management Service; radio management and airplane mode
    @{name = "wcncsvc";                                     desiredStartType = ""},          # Windows Connect Now; Wireless Protected Setup (WPS) protocol, started as needed
    # Mixed Reality
    @{name = "VacSvc";                                      desiredStartType = ""},          # Volumetric Audio Compositor Service; spatial analysis for Mixed Reality audio simulation
    @{name = "perceptionsimulation";                        desiredStartType = ""},          # Windows Perception Simulation Service; spatial perception simulation, virtual camera management and spatial input simulation
    @{name = "spectrum";                                    desiredStartType = ""},          # Windows Perception Service
    @{name = "SharedRealitySvc";                            desiredStartType = ""},          # Spatial Data Service
    @{name = "MixedRealityOpenXRSvc";                       desiredStartType = ""},          # Windows Mixed Reality OpenXR Service
    # Font Cache
    @{name = "FontCache";                                   desiredStartType = ""},          # Font Cache; starts when set to manual
    @{name = "FontCache3.0.0.0";                            desiredStartType = ""},          # Font Cache
    # remote desktop
    @{name = "SessionEnv";                                  desiredStartType = ""},          # Remote Desktop Configuration
    @{name = "TermService";                                 desiredStartType = ""},          # Remote Desktop Services
    @{name = "UmRdpService";                                desiredStartType = ""},          # Remote Desktop Services UserMode Port Redirector
    # misc features
    @{name = "SysMain";                                     desiredStartType = ""},          # SysMain; SuperFetch
    @{name = "BDESVC";                                      desiredStartType = ""},          # BitLocker; disk encryption
    @{name = "diagnosticshub.standardcollector.service";    desiredStartType = ""},          # Event Tracing for Windows (ETW)
    @{name = "MSDTC";                                       desiredStartType = ""},          # Distributed Transactions; starts when set to manual
    @{name = "KtmRm";                                       desiredStartType = ""},          # Distributed Transactions
    @{name = "WSearch";                                     desiredStartType = ""},          # Windows Search; starts when set to manual
    @{name = "LicenseManager";                              desiredStartType = ""},          # Windows License Manager Service; Microsoft Store; starts when set to manual
    @{name = "InstallService";                              desiredStartType = ""},          # Microsoft Store
    @{name = "DsSvc";                                       desiredStartType = ""},          # Data Sharing Service; provides data brokering between applications.
    @{name = "RasMan";                                      desiredStartType = ""},          # Remote Access Connection Manager; manages VPN connections from this computer
    @{name = "RasAuto";                                     desiredStartType = ""},          # Remote Access Auto Connection Manager
    @{name = "DeviceAssociationService";                    desiredStartType = ""},          # Device Association Service; enables pairing between the system and wired or wireless devices.
    @{name = "DeviceAssociationBrokerSvc_*";                desiredStartType = ""},          # DeviceAssociationBroker_*; Enables apps to pair devices; per-user service
    @{name = "VSS";                                         desiredStartType = ""},          # Volume Shadow Copy
    @{name = "fhsvc";                                       desiredStartType = ""},          # File History Service; backup
    @{name = "WarpJITSvc";                                  desiredStartType = ""},          # Warp JIT Service
    @{name = "WebClient";                                   desiredStartType = ""},          # WebClient; enables Windows-based programs to create, access, and modify Internet-based files
    @{name = "WFDSConMgrSvc";                               desiredStartType = ""},          # Wi-Fi Direct Services Connection Manager Service; wireless display and docking
    @{name = "wlidsvc";                                     desiredStartType = ""},          # Microsoft Account Sign-in Assistant
    @{name = "WalletService";                               desiredStartType = ""},          # WalletService; hosts objects used by clients of the wallet
    @{name = "workfolderssvc";                              desiredStartType = ""},          # Work Folders
    @{name = "WEPHOSTSVC";                                  desiredStartType = ""},          # Windows Encryption Provider Host Service
    @{name = "SensorService";                               desiredStartType = ""},          # Sensor Service; sensors; device screen auto-rotation
    @{name = "SensrSvc";                                    desiredStartType = ""},          # Sensor Monitoring Service; sensors; display brightness adjustment
    @{name = "SNMPTrap";                                    desiredStartType = ""},          # SNMP Trap
    @{name = "RpcLocator";                                  desiredStartType = ""},          # Remote Procedure Call (RPC) Locator; does not provide any functionality
    @{name = "TroubleshootingSvc";                          desiredStartType = ""},          # Recommended Troubleshooting Service
    @{name = "defragsvc";                                   desiredStartType = ""},          # Optimize drives
    @{name = "ssh-agent";                                   desiredStartType = ""},          # OpenSSH Authentication Agent; disabled by default
    @{name = "CscService";                                  desiredStartType = ""},          # Offline Files
    @{name = "NcdAutoSetup";                                desiredStartType = ""},          # Network Connected Devices Auto-Setup
    @{name = "Netlogon";                                    desiredStartType = ""},          # Netlogon; Maintains a secure channel between this computer and the DC for authenticating users and services
    @{name = "NaturalAuthentication";                       desiredStartType = ""},          # Natural Authentication; Device Unlock, Dynamic Lock and Dynamo MDM policies
    @{name = "SmsRouter";                                   desiredStartType = ""},          # Microsoft Windows SMS Router Service
    @{name = "swprv";                                       desiredStartType = ""},          # Microsoft Software Shadow Copy Provider
    @{name = "MsKeyboardFilter";                            desiredStartType = ""},          # Microsoft Keyboard Filter; disabled by default
    @{name = "AppVClient";                                  desiredStartType = ""},          # Microsoft App-V Client; disabled by default
    @{name = "wlpasvc";                                     desiredStartType = ""},          # Local Profile Assistant Service; provides profile management for subscriber identity modules
    @{name = "LxpSvc";                                      desiredStartType = ""},          # Language Experience Service; support for deploying and configuring localized Windows resources
    @{name = "FDResPub";                                    desiredStartType = ""},          # Function Discovery Resource Publication; publishes this computer and resources so they can be discovered over the network; SSDP
    @{name = "fdPHost";                                     desiredStartType = ""},          # Function Discovery Provider Host; FD providers supply network discovery services for the SSDP and WS-D protocols
    @{name = "EapHost";                                     desiredStartType = ""},          # Extensible Authentication Protocol (EAP); network authentication in such scenarios as 802.1x wired and wireless, VPN, and NAP
    @{name = "DialogBlockingService";                       desiredStartType = ""},          # DialogBlockingService; disabled by default
    @{name = "DmEnrollmentSvc";                             desiredStartType = ""},          # Device Management Enrollment Service
    @{name = "autotimesvc";                                 desiredStartType = ""},          # Cellular Time; sets time based on NITZ messages from a Mobile Network
    @{name = "PeerDistSvc";                                 desiredStartType = ""},          # BranchCache; caches network content from peers on the local subnet
    @{name = "tzautoupdate";                                desiredStartType = ""},          # Auto Time Zone Updater; disabled by default
    @{name = "AssignedAccessManagerSvc";                    desiredStartType = ""},          # AssignedAccessManager Service; supports kiosk experience in Windows
    @{name = "wmiApSrv";                                    desiredStartType = ""},          # WMI Performance Adapter
    @{name = "NcaSvc";                                      desiredStartType = ""},          # Network Connectivity Assistant; DirectAccess status notification for UI components
    @{name = "shpamsvc";                                    desiredStartType = ""},          # Shared PC Account Manager; disabled by default
    @{name = "cloudidsvc";                                  desiredStartType = ""},          # Microsoft Cloud Identity Service
    @{name = "InventorySvc";                                desiredStartType = ""},          # Inventory and Compatibility Appraisal service
    @{name = "McpManagementService";                        desiredStartType = ""},          # McpManagementService
    @{name = "uhssvc";                                      desiredStartType = ""},          # Microsoft Update Health Service; disabled by default
    @{name = "P9RdrService_*";                              desiredStartType = ""},          # P9RdrService_*; Plan9 file servers; related to WSL
    # per-user services
    @{name = "UserDataSvc_*";                               desiredStartType = ""},          # User Data Access; provides apps access to structured user data, including contact info, calendars, messages, etc.
    @{name = "UnistoreSvc_*";                               desiredStartType = ""},          # User Data Storage; handles storage of structured user data, including contact info, calendars, messages, etc.
    @{name = "MessagingService_*";                          desiredStartType = ""},          # Service supporting text messaging and related functionality
    @{name = "DevicesFlowUserSvc_*";                        desiredStartType = ""},          # Allows ConnectUX and PC Settings to Connect and Pair with WiFi displays and Bluetooth devices.
    @{name = "DevicePickerUserSvc_*";                       desiredStartType = ""},          # used for managing the Miracast, DLNA, and DIAL UI
    @{name = "ConsentUxUserSvc_*";                          desiredStartType = ""},          # ConsentUX User Service; Allows ConnectUX and PC Settings to Connect and Pair with WiFi displays and Bluetooth devices.
    @{name = "AarSvc_*";                                    desiredStartType = ""},          # Agent Activation Runtime; conversational agent applications
    # Microsoft Edge
    @{name = "edgeupdate";                                  desiredStartType = ""},          # Microsoft Edge Update Service (edgeupdate)
    @{name = "edgeupdatem";                                 desiredStartType = ""},          # Microsoft Edge Update Service (edgeupdatem
    @{name = "MicrosoftEdgeElevationService";               desiredStartType = ""},          # Microsoft Edge Elevation Service (MicrosoftEdgeElevationService)

    #
    # recommendation: DO NOT DISABLE, some of these can be disabled under right circumstances
    #
    @{name = "WpnUserService_*";                            desiredStartType = ""},          # Windows Push Notification; starts when set to manual
    @{name = "cbdhsvc_*";                                   desiredStartType = ""},          # Clipboard User Service; ; starts when set to manual
    @{name = "StorSvc";                                     desiredStartType = ""},          # Storage Service; external USB HDD, Microsoft Store; starts when set to manual
    @{name = "CDPSvc";                                      desiredStartType = ""},          # Connected Devices Platform Service; Xbox, Bluetooth, Smartphones; see notes; #security
    @{name = "CDPUserSvc_*";                                desiredStartType = ""},          # Connected Devices Platform User Service_*; related to CDPSvc; Xbox, Bluetooth; see notes; #security
    @{name = "NcbService";                                  desiredStartType = ""},          # Network Connection Broker; allow Windows Store Apps to receive notifications from the internet; CDPSvc depends on this service
    @{name = "AxInstSV";                                    desiredStartType = ""},          # ActiveX Installer
    @{name = "AppMgmt";                                     desiredStartType = ""},          # Application Management
    @{name = "ShellHWDetection";                            desiredStartType = ""},          # Shell Hardware Detection; notifications for AutoPlay hardware events
    @{name = "Audiosrv";                                    desiredStartType = ""},          # Windows Audio
    @{name = "AudioEndpointBuilder";                        desiredStartType = ""},          # Windows Audio Endpoint Builder
    @{name = "WaaSMedicSvc";                                desiredStartType = ""},          # Windows Update Medic Service
    @{name = "MSiSCSI";                                     desiredStartType = ""},          # Microsoft iSCSI Initiator Service
    @{name = "smphost";                                     desiredStartType = ""},          # Microsoft Storage Spaces SMP
    @{name = "Wcmsvc";                                      desiredStartType = ""},          # Windows Connection Manager
    @{name = "SDRSVC";                                      desiredStartType = ""},          # Windows Backup
    @{name = "wbengine";                                    desiredStartType = ""},          # Block Level Backup Engine Service; used by Windows Backup to perform backup and recovery operations
    @{name = "Sense";                                       desiredStartType = ""},          # Windows Defender Advanced Threat Protection; paid feature; part of Microsoft 365 Defender; does not run if not used
    @{name = "vds";                                         desiredStartType = ""},          # Virtual Disk; management services for disks, volumes, file systems, and storage arrays
    @{name = "UevAgentService";                             desiredStartType = ""},          # User Experience Virtualization Service; disabled by default
    @{name = "Themes";                                      desiredStartType = ""},          # Themes
    @{name = "seclogon";                                    desiredStartType = ""},          # Secondary Logon
    @{name = "TieringEngineService";                        desiredStartType = ""},          # Storage Tiers Management
    @{name = "Power";                                       desiredStartType = ""},          # Power
    @{name = "pla";                                         desiredStartType = ""},          # Performance Logs & Alerts; collects performance data from local or remote computers
    @{name = "PerfHost";                                    desiredStartType = ""},          # Performance Counter DLL Host
    @{name = "hidserv";                                     desiredStartType = ""},          # Human Interface Device Service; activates and maintains the use of hot buttons on keyboards and other devices
    @{name = "GraphicsPerfSvc";                             desiredStartType = ""},          # GraphicsPerfSvc; Graphics performance monitor service
    @{name = "EFS";                                         desiredStartType = ""},          # Encrypting File System (EFS); file encryption technology used to store encrypted files on NTFS
    @{name = "DispBrokerDesktopSvc";                        desiredStartType = ""},          # Display Policy Service; manages the connection and configuration of local and remote displays
    @{name = "DisplayEnhancementService";                   desiredStartType = ""},          # Display Enhancement Service; manages display enhancement such as brightness control
    @{name = "DevQueryBroker";                              desiredStartType = ""},          # DevQuery Background Discovery Broker; enables apps to discover devices with a backgroud task
    @{name = "DsmSvc";                                      desiredStartType = ""},          # Device Setup Manager; enables the detection, download and installation of device-related software
    @{name = "VaultSvc";                                    desiredStartType = ""},          # Credential Manager; Provides secure storage and retrieval of credentials to users, applications and security service packages.
    @{name = "camsvc";                                      desiredStartType = ""},          # Capability Access Manager Service; provides facilities for managing UWP apps access to app capabilities
    @{name = "Appinfo";                                     desiredStartType = ""},          # Application Information; facilitates the running of interactive applications with additional administrative privileges
    @{name = "WManSvc";                                     desiredStartType = ""},          # Windows Management Service; provisioning and enrolment services.
    @{name = "W32Time";                                     desiredStartType = ""},          # Windows Time; date and time synchronization
    @{name = "SecurityHealthService";                       desiredStartType = ""},          # Windows Security Service
    @{name = "dcsvc";                                       desiredStartType = ""},          # Declared Configuration(DC) service; used by the Windows Defender Application Control (WDAC)
    @{name = "TabletInputService";                          desiredStartType = ""},          # Touch Keyboard and Handwriting Panel Service; breaks Windows Terminal if disabled
    @{name = "TokenBroker";                                 desiredStartType = ""},          # Web Account Manager; SSO for UWP apps using external identity provider, such as Microsoft, Facebook; breaks things if disabled
    # SMB
    @{name = "LanmanServer";                                desiredStartType = ""},          # Server; SMB server
    @{name = "LanmanWorkstation";                           desiredStartType = ""},          # Workstation; SMB client
    # networking
    @{name = "NetSetupSvc";                                 desiredStartType = ""},          # Network Setup Service
    @{name = "NlaSvc";                                      desiredStartType = ""},          # Network Location Awareness
    @{name = "netprofm";                                    desiredStartType = ""},          # Network List Service
    @{name = "Netman";                                      desiredStartType = ""},          # Network Connections
    @{name = "PolicyAgent";                                 desiredStartType = ""},          # IPsec Policy Agent
    @{name = "IKEEXT";                                      desiredStartType = ""},          # IKE and AuthIP IPsec Keying Modules
    @{name = "Dhcp";                                        desiredStartType = ""},          # DHCP Client
    @{name = "DusmSvc";                                     desiredStartType = ""},          # Data Usage; network data usage, data limit, restrict background data, metered networks
    @{name = "BITS";                                        desiredStartType = ""},          # Background Transfer; Windows Update
    # Hyper-V
    @{name = "HvHost";                                      desiredStartType = ""},          # HV Host Service
    @{name = "vmickvpexchange";                             desiredStartType = ""},          # Hyper-V Data Exchange Service
    @{name = "vmicguestinterface";                          desiredStartType = ""},          # Hyper-V Guest Service Interface
    @{name = "vmicshutdown";                                desiredStartType = ""},          # Hyper-V Guest Shutdown Service
    @{name = "vmicheartbeat";                               desiredStartType = ""},          # Hyper-V Heartbeat Service
    @{name = "vmicvmsession";                               desiredStartType = ""},          # Hyper-V PowerShell Direct Service
    @{name = "vmicrdv";                                     desiredStartType = ""},          # Hyper-V Remote Desktop Virtualization Service
    @{name = "vmictimesync";                                desiredStartType = ""},          # Hyper-V Time Synchronization Service
    @{name = "vmicvss";                                     desiredStartType = ""},          # Hyper-V Volume Shadow Copy Requestor
    # per-user services
    @{name = "UdkUserSvc_*";                                desiredStartType = ""},          # Udk User Service; Shell components service
    @{name = "CredentialEnrollmentManagerUserSvc_*";        desiredStartType = ""},          # Credential Enrollment Manager

    #
    # recommendation: DO NOT DISABLE, unless you are aware of the side effects; some of these are critical services and cannot be disabled
    #
    @{name = "wscsvc";                                      desiredStartType = ""},          # Security Center
    @{name = "BFE";                                         desiredStartType = ""},          # Firewall/IPSec
    @{name = "WdNisSvc";                                    desiredStartType = ""},          # Microsoft Defender; cannot be disabled
    @{name = "mpssvc";                                      desiredStartType = ""},          # Windows Defender Firewall; cannot be disabled
    @{name = "WinDefend";                                   desiredStartType = ""},          # Microsoft Defender Antivirus; cannot be disabled
    @{name = "webthreatdefsvc";                             desiredStartType = ""},          # Web Threat Defense Service
    @{name = "webthreatdefusersvc_*";                       desiredStartType = ""},          # Web Threat Defense User Service_*
    @{name = "BrokerInfrastructure";                        desiredStartType = ""},          # Background Tasks Infrastructure; cannot be disabled
    @{name = "EntAppSvc";                                   desiredStartType = ""},          # Enterprise App Management; cannot be disabled
    @{name = "ClipSVC";                                     desiredStartType = ""},          # Microsoft Store; cannot be disabled
    @{name = "AppXSvc";                                     desiredStartType = ""},          # AppX Deployment Service; Microsoft Store; cannot be disabled
    @{name = "NgcSvc";                                      desiredStartType = ""},          # Microsoft Passport; cannot be disabled
    @{name = "NgcCtnrSvc";                                  desiredStartType = ""},          # Microsoft Passport, Smart Cards; cannot be disabled
    @{name = "EventLog";                                    desiredStartType = ""},          # Windows Event Log
    @{name = "Wecsvc";                                      desiredStartType = ""},          # Windows Event Collector
    @{name = "SystemEventsBroker";                          desiredStartType = ""},          # System Events Broker; cannot be disabled
    @{name = "TimeBrokerSvc";                               desiredStartType = ""},          # Time Broker
    @{name = "wuauserv";                                    desiredStartType = ""},          # Windows Update
    @{name = "TrustedInstaller";                            desiredStartType = ""},          # Windows Modules Installer; Windows Update
    @{name = "UsoSvc";                                      desiredStartType = ""},          # Update Orchestrator Service; Windows Update
    @{name = "RpcSs";                                       desiredStartType = ""},          # Remote Procedure Call (RPC); cannot be disabled
    @{name = "RpcEptMapper";                                desiredStartType = ""},          # RPC Endpoint Mapper; cannot be disabled
    @{name = "AppReadiness";                                desiredStartType = ""},          # App Readiness
    @{name = "SamSs";                                       desiredStartType = ""},          # Security Accounts Manager
    @{name = "CryptSvc";                                    desiredStartType = ""},          # Cryptographic Services
    @{name = "ProfSvc";                                     desiredStartType = ""},          # User Profile Service
    @{name = "UserManager";                                 desiredStartType = ""},          # User Manager
    @{name = "Schedule";                                    desiredStartType = ""},          # Task Scheduler
    @{name = "SgrmBroker";                                  desiredStartType = ""},          # System Guard Runtime Monitor Broker; ,onitors and attests to the integrity of the Windows platform
    @{name = "StateRepository";                             desiredStartType = ""},          # State Repository Service; cannot be disabled
    @{name = "CoreMessagingRegistrar";                      desiredStartType = ""},          # CoreMessaging; Manages communication between system components; cannot be disabled
    @{name = "gpsvc";                                       desiredStartType = ""},          # Group Policy Client; cannot be disabled
    @{name = "LSM";                                         desiredStartType = ""},          # Local Session Manager; cannot be disabled
    @{name = "sppsvc";                                      desiredStartType = ""},          # Software Protection; cannot be disabled
    @{name = "msiserver";                                   desiredStartType = ""},          # Windows Installer; cannot be disabled
    @{name = "svsvc";                                       desiredStartType = ""},          # Spot Verifier
    @{name = "PlugPlay";                                    desiredStartType = ""},          # Plug and Play
    @{name = "DeviceInstall";                               desiredStartType = ""},          # Device Install Service; Enables a computer to recognize and adapt to hardware changes with little or no user input
    @{name = "DcomLaunch";                                  desiredStartType = ""},          # DCOM Server Process Launcher; required for COM and DCOM object activation requests
    @{name = "COMSysApp";                                   desiredStartType = ""},          # COM+ System Application; manages the configuration and tracking of Component Object Model (COM)+-based components
    @{name = "EventSystem";                                 desiredStartType = ""},          # COM+ Event System; supports SENS, which provides automatic distribution of events to subscribing COM components
    @{name = "SENS";                                        desiredStartType = ""},          # System Event Notification Service; monitors system events and notifies subscribers to COM+ Event System of these events
    @{name = "KeyIso";                                      desiredStartType = ""},          # CNG Key Isolation; secure long lived keys for cryptographic operations
    @{name = "Winmgmt";                                     desiredStartType = ""},          # Windows Management Instrumentation (WMI)
    @{name = "nsi";                                         desiredStartType = ""},          # Network Store Interface Service
    @{name = "AppIDSvc";                                    desiredStartType = ""},          # Application Identity; determines and verifies the identity of an application, used by AppLocker; cannot be disabled
    @{name = "embeddedmode";                                desiredStartType = ""},          # Embedded Mode; enables scenarios related to Background Applications; cannot be disabled
    @{name = "DoSvc";                                       desiredStartType = ""},          # Delivery Optimization; downloads updates from other PCs; cannot be disabled
    @{name = "WinHttpAutoProxySvc";                         desiredStartType = ""},          # WinHTTP Web Proxy Auto-Discovery Service; cannot be disabled
    @{name = "Dnscache";                                    desiredStartType = ""},          # DNS Client; cannot be disabled
    @{name = "TextInputManagementService";                  desiredStartType = ""}           # Text Input Management Service; associated with on-screen keyboard and handwriting recognition; cannot be disabled
)

function Backup-Current-Service-State {
    Clear-Host
    Write-Host "Saving current state of Windows Services..."
    $outFileName = ([System.Net.Dns]::GetHostName().toLower()) + "_service_state_" + (Get-Date -Format "yyyyMMdd_HHmmss")
    Write-Host "Directory: "(Get-Location).path
    Write-Host "Text File Name: $outFileName.txt"
    Write-Host "JSON File Name: $outFileName.json"
    # rename "StartType" to "StartMode" to match Get-Service naming
    # using Get-CimInstance instead of Get-Service because latter does not return DelayedAutoStart
    Get-CimInstance Win32_Service | Sort-Object DisplayName | Format-Table Name, DisplayName, State, @{N='StartType'; E={$_.StartMode}}, DelayedAutoStart | Out-File "$outFileName.txt"
    Get-CimInstance Win32_Service | Sort-Object DisplayName | Select-Object Name, State, @{N='StartType'; E={$_.StartMode}}, DelayedAutoStart | ConvertTo-Json  | Out-File "$outFileName.json"
    Show-Continue-Screen
}

function Show-Service-Diff {
    $out = @()

    foreach ($serviceToModify in $servicesToModify) {
        # check if this is per-user service
        if ($serviceToModify.name.Substring($serviceToModify.name.Length - 2) -eq "_*") {
            $serviceName = $serviceToModify.name.Substring(0, $serviceToModify.name.Length - 2)
        } else {
            $serviceName = $serviceToModify.name
        }
        $service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue

        if ($null -ne $service) {
            if ($serviceToModify.desiredStartType -ne $service.StartType -and $serviceToModify.desiredStartType -ne "") {
                $out += [PSCustomObject]@{
                    Name             = $service.Name
                    DisplayName      = $service.DisplayName
                    DesiredStartType = $serviceToModify.desiredStartType
                    CurrentStartType = $service.StartType
                    CurrentState     = $service.Status
                }
            }
        }
    }
    Clear-Host
    $out | Sort-Object Name | Format-Table
    Show-Continue-Screen
}

function Set-Service-StartType {
    $out = @()

    foreach ($serviceToModify in $servicesToModify) {
        $service = Get-Service -Name $serviceToModify.name -ErrorAction SilentlyContinue

        if ($null -ne $service) {
            if ($serviceToModify.desiredStartType -ne $service.StartType -and $serviceToModify.desiredStartType -ne "") {
                # check if this is per-user service
                if ($serviceToModify.name.Substring($serviceToModify.name.Length - 2) -eq "_*") {
                    $serviceName = $serviceToModify.name.Substring(0, $serviceToModify.name.Length - 2)
                } else {
                    $serviceName = $serviceToModify.name
                }
                Set-Service -Name $serviceName -StartupType $serviceToModify.desiredStartType
                $out += [PSCustomObject]@{
                    Name          = $serviceToModify.name
                    FromStartType = $service.StartType
                    ToStartType   = $serviceToModify.desiredStartType
                }
                Write-Host "Service: $($serviceToModify.name): changed start type from $($service.StartType) to $($serviceToModify.desiredStartType)"
            }
        }
    }
    #Clear-Host
    if ($out.Count -eq 0) {
        Write-Host "No services have been modified."
    } else {
        Write-Host "Following services have been modified:"
        $out | Sort-Object Name | Format-Table
    }
    Show-Continue-Screen
}

function Show-ManualDisabled-Running-Services {
    $out = @()

    foreach ($serviceToModify in $servicesToModify) {
        $service = Get-Service -Name $serviceToModify.name -ErrorAction SilentlyContinue

        if ($null -ne $service) {
            if (($serviceToModify.desiredStartType -eq "manual" -or $serviceToModify.desiredStartType -eq "disabled") -and $service.Status -eq "Running") {
                $out += [PSCustomObject]@{
                    Name             = $service.Name
                    DisplayName      = $service.DisplayName
                    DesiredStartType = $serviceToModify.desiredStartType
                    CurrentStartType = $service.StartType
                    CurrentState     = $service.Status
                }
            }
        }
    }
    Clear-Host
    $out | Sort-Object Name | Format-Table
    Show-Continue-Screen
}

function Show-Unknown-Services {
    $services = Get-Service | Select-Object Name, DisplayName, StartType, Status

    foreach ($serviceToModify in $servicesToModify) {
        $services = $services | Where-Object { $_.Name -notmatch "^$($serviceToModify.Name)" }
    }
    Clear-Host
    $services | Sort-Object Name | Format-Table
    Show-Continue-Screen
}

function Show-Continue-Screen {
    Write-Host "Press the SPACEBAR to continue..."
    do {
        $key = [System.Console]::ReadKey($true)
    } until ($key.key -eq "Spacebar")
}

function Show-Main-Menu {
    param (
        [string]$title = "Windows Service Toggler"
    )
    Clear-Host
    Write-Host "=============== $title ==============="
    Write-Host ""
    Write-Host "1: Save current state of services to a file."
    Write-Host "2: Show services that do not match desired service start type."
    Write-Host "3: Show services with manual/disabled desired state that are currently running."
    Write-Host "4: Show services that are not included in the list."
    Write-Host "5: Set start type of services to a desired state."
    Write-Host "Q: Quit."
    Write-Host
    Write-Host "Select an option and press Enter:" -NoNewline
}

do {
    Show-Main-Menu
    $choice = Read-Host
    switch ($choice) {
        "1" { Backup-Current-Service-State }
        "2" { Show-Service-Diff }
        "3" { Show-ManualDisabled-Running-Services }
        "4" { Show-Unknown-Services }
        "5" { Set-Service-StartType }
        'q' { return }
    }
} until ($choice -eq "q")
