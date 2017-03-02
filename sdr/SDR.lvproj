<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
	<Property Name="CCSymbols" Type="Str">fft,false;</Property>
	<Property Name="NI.LV.All.SourceOnly" Type="Bool">false</Property>
	<Property Name="NI.Project.Description" Type="Str"></Property>
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="block memory VI&apos;s" Type="Folder">
			<Item Name="demod" Type="Folder">
				<Item Name="cosine demod.vi" Type="VI" URL="../cosine demod.vi"/>
				<Item Name="sine demod.vi" Type="VI" URL="../sine demod.vi"/>
			</Item>
			<Item Name="mod" Type="Folder">
				<Item Name="cosine mod.vi" Type="VI" URL="../cosine mod.vi"/>
				<Item Name="sine mod.vi" Type="VI" URL="../sine mod.vi"/>
			</Item>
			<Item Name="symbol map" Type="Folder">
				<Item Name="symbol map im.vi" Type="VI" URL="../symbol map im.vi"/>
				<Item Name="symbol map re.vi" Type="VI" URL="../symbol map re.vi"/>
			</Item>
		</Item>
		<Item Name="control" Type="Folder">
			<Item Name="states.ctl" Type="VI" URL="../states.ctl"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies"/>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
	<Item Name="BeckToMyRio" Type="RT myRIO">
		<Property Name="alias.name" Type="Str">BeckToMyRio</Property>
		<Property Name="alias.value" Type="Str">172.22.11.2</Property>
		<Property Name="CCSymbols" Type="Str">TARGET_TYPE,RT;OS,Linux;CPU,ARM;DeviceCode,762F;FPGAPersonality,myRIO_FP_Custom;</Property>
		<Property Name="crio.ControllerPID" Type="Str">762F</Property>
		<Property Name="host.ResponsivenessCheckEnabled" Type="Bool">true</Property>
		<Property Name="host.ResponsivenessCheckPingDelay" Type="UInt">5000</Property>
		<Property Name="host.ResponsivenessCheckPingTimeout" Type="UInt">1000</Property>
		<Property Name="host.TargetCPUID" Type="UInt">8</Property>
		<Property Name="host.TargetOSID" Type="UInt">8</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Property Name="target.cleanupVisa" Type="Bool">false</Property>
		<Property Name="target.FPProtocolGlobals_ControlTimeLimit" Type="Int">300</Property>
		<Property Name="target.getDefault-&gt;WebServer.Port" Type="Int">80</Property>
		<Property Name="target.getDefault-&gt;WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.IOScan.Faults" Type="Str"></Property>
		<Property Name="target.IOScan.NetVarPeriod" Type="UInt">100</Property>
		<Property Name="target.IOScan.NetWatchdogEnabled" Type="Bool">false</Property>
		<Property Name="target.IOScan.Period" Type="UInt">10000</Property>
		<Property Name="target.IOScan.PowerupMode" Type="UInt">0</Property>
		<Property Name="target.IOScan.Priority" Type="UInt">0</Property>
		<Property Name="target.IOScan.ReportModeConflict" Type="Bool">true</Property>
		<Property Name="target.IsRemotePanelSupported" Type="Bool">true</Property>
		<Property Name="target.RTCPULoadMonitoringEnabled" Type="Bool">true</Property>
		<Property Name="target.RTDebugWebServerHTTPPort" Type="Int">8001</Property>
		<Property Name="target.RTTarget.ApplicationPath" Type="Path">/c/ni-rt/startup/startup.rtexe</Property>
		<Property Name="target.RTTarget.EnableFileSharing" Type="Bool">true</Property>
		<Property Name="target.RTTarget.IPAccess" Type="Str">+*</Property>
		<Property Name="target.RTTarget.LaunchAppAtBoot" Type="Bool">false</Property>
		<Property Name="target.RTTarget.VIPath" Type="Path">/home/lvuser/natinst/bin</Property>
		<Property Name="target.server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.server.tcp.access" Type="Str">+*</Property>
		<Property Name="target.server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="target.server.tcp.paranoid" Type="Bool">true</Property>
		<Property Name="target.server.tcp.port" Type="Int">3363</Property>
		<Property Name="target.server.tcp.serviceName" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.tcp.serviceName.default" Type="Str">Main Application Instance/VI Server</Property>
		<Property Name="target.server.vi.access" Type="Str">+*</Property>
		<Property Name="target.server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="target.server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="target.WebServer.Config" Type="Str">Listen 8000

NI.ServerName default
DocumentRoot "$LVSERVER_DOCROOT"
TypesConfig "$LVSERVER_CONFIGROOT/mime.types"
DirectoryIndex index.htm
WorkerLimit 10
InactivityTimeout 60

LoadModulePath "$LVSERVER_MODULEPATHS"
LoadModule LVAuth lvauthmodule
LoadModule LVRFP lvrfpmodule

#
# Pipeline Definition
#

SetConnector netConnector

AddHandler LVAuth
AddHandler LVRFP

AddHandler fileHandler ""

AddOutputFilter chunkFilter


</Property>
		<Property Name="target.WebServer.Enabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogEnabled" Type="Bool">false</Property>
		<Property Name="target.WebServer.LogPath" Type="Path">/c/ni-rt/system/www/www.log</Property>
		<Property Name="target.WebServer.Port" Type="Int">80</Property>
		<Property Name="target.WebServer.RootPath" Type="Path">/c/ni-rt/system/www</Property>
		<Property Name="target.WebServer.TcpAccess" Type="Str">c+*</Property>
		<Property Name="target.WebServer.Timeout" Type="Int">60</Property>
		<Property Name="target.WebServer.ViAccess" Type="Str">+*</Property>
		<Property Name="target.webservices.SecurityAPIKey" Type="Str">PqVr/ifkAQh+lVrdPIykXlFvg12GhhQFR8H9cUhphgg=:pTe9HRlQuMfJxAG6QCGq7UvoUpJzAzWGKy5SbZ+roSU=</Property>
		<Property Name="target.webservices.ValidTimestampWindow" Type="Int">15</Property>
		<Item Name="sub VI&apos;s" Type="Folder">
			<Item Name="evm.vi" Type="VI" URL="../evm.vi"/>
			<Item Name="fft.vi" Type="VI" URL="../fft.vi"/>
		</Item>
		<Item Name="host2.vi" Type="VI" URL="../host2.vi"/>
		<Item Name="Chassis" Type="myRIO Chassis">
			<Property Name="crio.ProgrammingMode" Type="Str">fpga</Property>
			<Property Name="crio.ResourceID" Type="Str">RIO0</Property>
			<Property Name="crio.Type" Type="Str">myRIO-1900</Property>
			<Item Name="FPGA Target" Type="FPGA Target">
				<Property Name="AutoRun" Type="Bool">false</Property>
				<Property Name="configString.guid" Type="Str">{01F7430B-AD45-4D0C-8F76-C39423D30D45}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=632FF2FE4CFF423FCCC4D7382564F49D;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{039DEE4F-9EB4-4A1B-AA18-794CC49D733B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{04B913BA-651C-499E-A97B-E76FB39CDF73}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED0;0;ReadMethodType=bool;WriteMethodType=bool{0860118B-E102-4DE5-9471-65AD3E4BC70C}Actual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001000100000001FFFFFFFFFFFFFFFF0000000F000000000000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=91B461134396B6DDEB2AE66F3EDF6B42;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{0932A6A4-EBEF-49B5-AB59-1927817363B3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{0B2B7C3C-C403-4F8E-A769-3576C89528A4}resource=/ConnectorB/AI3;0;ReadMethodType=U16{0BB8815F-E6B0-411E-917C-C3B7D40529C0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{0E040E19-2A47-48F9-942C-216156FAAAF1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{0E512C72-B652-4A3A-B94A-51CC73B1EF8B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{10B55CC8-0114-477B-896A-991B47CC69DC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{11D69F1F-CAC6-4114-9858-34E547CBBF54}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{145FD50E-8647-47D2-9548-A6156E231D7F}"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"{178771A0-4721-4B98-BD87-D7EC6651439C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{1A00D99A-8301-4531-9A6A-A011765EFDF4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{1A018761-4C37-4B30-B61A-7F10C647AD58}resource=/ConnectorC/AO0;0;WriteMethodType=I16{1B275618-2839-40CD-A80B-5A1E340A34CB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{20374256-31E0-4CBB-A580-BD7939E6A355}resource=/ConnectorA/AO1;0;WriteMethodType=U16{21C57214-E6F3-4EE0-BC14-6CC9DE461686}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{230B1547-F5B7-40AE-BBE8-724AC1C68E20}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio in to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"{271389E4-AA91-40C4-B6F9-97AB60A2D1BB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{2BDB3D3F-30A2-4BAE-ACD0-1FB5BF469D66}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{2C9A1DD1-9064-4432-9C68-5EC1CAEBCF7F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{2F7E7325-4811-4BCF-AFAB-14B495012E8D}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"{2FF878F2-5645-4280-91A1-63D44D19F4C8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{300D55B4-B684-4BEF-BC41-A072D691DB14}resource=/ConnectorC/AI1;0;ReadMethodType=I16{334E099B-DB80-41E0-8292-FC08099A3DDA}resource=/ConnectorB/AI2;0;ReadMethodType=U16{347AF70D-3A03-4934-BB58-73B4B0F6B812}resource=/ConnectorB/AO0;0;WriteMethodType=U16{34A0011F-129A-45FD-8ECF-36A3DE7967DE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{35C22414-DF0B-4977-BE86-40EED05F0C5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{3CAA8215-0EF4-457E-A872-847F80DC31AC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{4865AD91-F9D6-4822-8DFA-CD2D9FF9E0F8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{4967C673-96E5-40BB-BEB8-BF4DEA5D7C0A}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{4ACFB1BA-676C-42F1-A611-07364464C23C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{4C36EE6A-4D36-4D1D-9904-2311AD34CB8B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{4CEC7486-0092-4E94-98CC-DE5B86CF1787}resource=/AccelerationX;0;ReadMethodType=I16{4DE4640D-F61A-434C-9DE4-EAA43C9EE48E}resource=/Audio/AudioIn\/Right;0;ReadMethodType=I16{4E95A633-7817-486B-93F2-EEA0D3D3D5DD}resource=/ConnectorB/AI1;0;ReadMethodType=U16{54A02081-0793-4EE0-A2AD-72C223BA2BEC}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;tx;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"{56745F91-1D14-4E01-881E-307903C03585}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{5E1F5FD1-9B89-4D0B-A386-EE3543251EA2}resource=/Audio/AudioOut\/Right;0;WriteMethodType=I16{62CAA5CD-A7EA-45C6-9AD8-CAB049FDC887}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{663ECAB5-1AA5-4543-A431-8883158C6BAE}resource=/AccelerationY;0;ReadMethodType=I16{697E4BBF-7886-474B-9815-18426487A6FB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{6A28696E-52AD-4143-B804-DE3A0BE99585}"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"{722D0FC0-0F69-4F1A-8E33-2009FA57CD7B}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;noise;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"{74C52444-1A78-4F7C-B5C8-C4D47A2AE67E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{77F62C25-14FE-4E48-B358-FCD32C4D0A49}resource=/Scan Clock;0;ReadMethodType=bool{78263D0C-33C0-495C-8B35-D76979BE8099}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{789A546C-E9AA-47EC-AC86-00B8E131CE32}resource=/Audio/AudioOut\/Left;0;WriteMethodType=I16{78AB769B-E0B7-4EDD-933A-FA654344E455}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{7D5CC424-ADD5-4D58-9F71-BA362F954CF5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{81438788-ED8A-4E49-B19F-D6C8FD94A48D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{887FC9B2-98E1-41D9-A2CE-637A0DEEC017}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=63FBA03D9757A6641CDCB7F6A323FF1B;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{8D1C0817-43C4-4E4D-8E59-8BDDA74B5327}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{8F5A2F08-0AD9-41BF-AE07-4371F597420D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{9333A91B-FFDE-492C-B421-93B764D3D8C4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{93B5E602-39C0-4A36-B733-50F673D19CDE}resource=/ConnectorA/AI1;0;ReadMethodType=U16{9629675E-9E79-4D43-AB8A-6FD9C5A1F828}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{9E539A3D-2FBD-4539-81EC-4B4E02879793}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{9FD93ECA-3FA2-41CD-978C-3F9F3E264DF5}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000100000002FFFFFFFFFFFFFFFF000000010000000100000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=954795EFF995556337A0537DC3578CEE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{A1180E4E-BBE1-42BA-B4E5-0B564B482AFF}resource=/ConnectorA/AI3;0;ReadMethodType=U16{A13CD7F6-97CD-4B16-B9CA-3BD50830B9F6}NumberOfSyncRegistersForReadInProject=Auto;resource=/Button0;0;ReadMethodType=bool{A146BA90-EBEB-48DF-83D1-6E2C76B3E250}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{A23929CA-BA9A-4D3E-AD25-65669E06D595}resource=/AccelerationZ;0;ReadMethodType=I16{A7402F3E-00DA-4FBC-9639-388DEBE17FBF}Actual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=D228F0D1F55A88F304BA4469FF9262BC;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{A9C4C53E-9CB3-4144-842E-C8636437D5C0}resource=/ConnectorA/AO0;0;WriteMethodType=U16{A9C58653-2AD8-48DA-B3DD-C56EDF408DC7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{AF1BB0D1-C2B6-4D86-B9E0-1A458A1F9D36}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{B3CCBF6D-ADA6-4510-BF78-04C26BC3A870}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{B647945A-423A-4AA2-B382-377548BF1571}resource=/ConnectorB/AO1;0;WriteMethodType=U16{B8748563-F294-44C2-90F0-79E8EACE78A1}resource=/Audio/AudioIn\/Left;0;ReadMethodType=I16{BF715A94-672E-4E8F-93A3-D69EB95F606B}resource=/ConnectorB/AI0;0;ReadMethodType=U16{C3BF3AC0-5410-45B6-AFEE-EE56030C1833}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{C4BA6D8D-FE33-4F0D-A271-C2AB55CDE8FE}resource=/ConnectorA/AI2;0;ReadMethodType=U16{C5BDEB7E-8C38-4AB2-8233-E88631C7C1B8}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED3;0;ReadMethodType=bool;WriteMethodType=bool{CA6AF97D-670E-42DA-A6AD-30EA62A587C6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{CA74DB4E-4CB0-4A03-B358-1D14275F76DE}Multiplier=1,000000;Divisor=4,000000{CAE8F047-95C4-4A7F-B106-9A5634F11157}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"{CED204FD-F713-4350-83FA-5D61A1E25F09}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{D065B79A-411E-4A75-B35F-17B6A9F3E6DF}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;data;DataType=1000800000000001003C005F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{DC78610A-D963-473B-9334-3A4D47E7373D}resource=/ConnectorC/AO1;0;WriteMethodType=I16{DDA08452-6B87-4A1B-BE00-2DD6A8D9C208}"ControlLogic=1;NumberOfElements=1025;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=10008000000000030040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF10000000000000001027072000040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000102706900001C4050000200000001106F757470757420636C7573746572203200000100020000000000000000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{DEAF4226-D9BD-493C-9E9E-DA9CA65F5498}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{DFDF44BF-1CA8-40E2-B8A4-5C69469DABB4}resource=/ConnectorA/AI0;0;ReadMethodType=U16{E79DB0D8-7D8B-4040-8CCE-2267EF4737CB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{E896B469-6424-41C1-8B67-BE064C20FA25}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{EBF8F206-A3C3-436F-89C2-DD7F797B6BE0}resource=/ConnectorC/AI0;0;ReadMethodType=I16{EF09E35E-1ECA-4D98-BC9F-627727F1BBED}"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001003C005F03510014000000040001001400000004FFFFFFFFFFF800000001001400000004000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{F3918E3D-AFDC-4021-A260-EE2E5AAC3971}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{F5A6CBA1-B4D3-46E9-A638-7584FB90A7F3}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000200000002FFFFFFFFFFFFFFFE000100020000000200000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=48969BE300290283E7197926ADC43E9F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{F9C6FF77-A33A-48A5-BD93-234EEF59444B}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED1;0;ReadMethodType=bool;WriteMethodType=bool{FAC03533-23D6-491B-92F0-AAEE0A1B50A5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED2;0;ReadMethodType=bool;WriteMethodType=bool{FE0F6269-05F6-4509-B0D9-8A86B1BEF6D5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO3;0;ReadMethodType=bool;WriteMethodType=boolmyRIO-1900/fft,false;/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSMYRIO_1900FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
				<Property Name="configString.name" Type="Str">10MHzMultiplier=1,000000;Divisor=4,00000040 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16audio in to host"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio in to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"audio out to host"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"audio out"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"AudioIn/Leftresource=/Audio/AudioIn\/Left;0;ReadMethodType=I16AudioIn/Rightresource=/Audio/AudioIn\/Right;0;ReadMethodType=I16AudioOut/Leftresource=/Audio/AudioOut\/Left;0;WriteMethodType=I16AudioOut/Rightresource=/Audio/AudioOut\/Right;0;WriteMethodType=I16Button0NumberOfSyncRegistersForReadInProject=Auto;resource=/Button0;0;ReadMethodType=boolConnectorA/AI0resource=/ConnectorA/AI0;0;ReadMethodType=U16ConnectorA/AI1resource=/ConnectorA/AI1;0;ReadMethodType=U16ConnectorA/AI2resource=/ConnectorA/AI2;0;ReadMethodType=U16ConnectorA/AI3resource=/ConnectorA/AI3;0;ReadMethodType=U16ConnectorA/AO0resource=/ConnectorA/AO0;0;WriteMethodType=U16ConnectorA/AO1resource=/ConnectorA/AO1;0;WriteMethodType=U16ConnectorA/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO0;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO10;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO11;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO12;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO13;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO14;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8ConnectorA/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO1;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO2;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO3;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO4;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO5;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO6;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8ConnectorA/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO8;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO9;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/AI0resource=/ConnectorB/AI0;0;ReadMethodType=U16ConnectorB/AI1resource=/ConnectorB/AI1;0;ReadMethodType=U16ConnectorB/AI2resource=/ConnectorB/AI2;0;ReadMethodType=U16ConnectorB/AI3resource=/ConnectorB/AI3;0;ReadMethodType=U16ConnectorB/AO0resource=/ConnectorB/AO0;0;WriteMethodType=U16ConnectorB/AO1resource=/ConnectorB/AO1;0;WriteMethodType=U16ConnectorB/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO0;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO10;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO11;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO12;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO13;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO14;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8ConnectorB/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO1;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO2;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO3;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO4;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO5;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO6;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8ConnectorB/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO8;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO9;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/AI0resource=/ConnectorC/AI0;0;ReadMethodType=I16ConnectorC/AI1resource=/ConnectorC/AI1;0;ReadMethodType=I16ConnectorC/AO0resource=/ConnectorC/AO0;0;WriteMethodType=I16ConnectorC/AO1resource=/ConnectorC/AO1;0;WriteMethodType=I16ConnectorC/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO0;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO1;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO2;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO3;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO4;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO5;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO6;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8ConnectorC/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7;0;ReadMethodType=bool;WriteMethodType=boolcosine demodActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=632FF2FE4CFF423FCCC4D7382564F49D;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3cosine modActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000100000002FFFFFFFFFFFFFFFF000000010000000100000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=954795EFF995556337A0537DC3578CEE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3data"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;data;DataType=1000800000000001003C005F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"get a sample"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"LED0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED0;0;ReadMethodType=bool;WriteMethodType=boolLED1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED1;0;ReadMethodType=bool;WriteMethodType=boolLED2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED2;0;ReadMethodType=bool;WriteMethodType=boolLED3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED3;0;ReadMethodType=bool;WriteMethodType=boolmyRIO-1900/fft,false;/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSMYRIO_1900FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGAnoise"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;noise;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"re part"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001003C005F03510014000000040001001400000004FFFFFFFFFFF800000001001400000004000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"Scan Clockresource=/Scan Clock;0;ReadMethodType=boolsine demodActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=63FBA03D9757A6641CDCB7F6A323FF1B;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3sine modActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000200000002FFFFFFFFFFFFFFFE000100020000000200000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=48969BE300290283E7197926ADC43E9F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3symbol map imActual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001000100000001FFFFFFFFFFFFFFFF0000000F000000000000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=91B461134396B6DDEB2AE66F3EDF6B42;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3symbol map reActual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=D228F0D1F55A88F304BA4469FF9262BC;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3System Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolt2t"ControlLogic=1;NumberOfElements=1025;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=10008000000000030040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF10000000000000001027072000040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000102706900001C4050000200000001106F757470757420636C7573746572203200000100020000000000000000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"transmit"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"tx"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;tx;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
				<Property Name="Mode" Type="Int">0</Property>
				<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">myRIO-1900/fft,false;/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSMYRIO_1900FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
				<Property Name="NI.LV.FPGA.Version" Type="Int">6</Property>
				<Property Name="NI.SortType" Type="Int">3</Property>
				<Property Name="Resource Name" Type="Str">RIO0</Property>
				<Property Name="Target Class" Type="Str">myRIO-1900</Property>
				<Property Name="Top-Level Timing Source" Type="Str">40 MHz Onboard Clock</Property>
				<Property Name="Top-Level Timing Source Is Default" Type="Bool">true</Property>
				<Item Name="Audio" Type="Folder">
					<Item Name="AudioIn/Left" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Audio/AudioIn\/Left</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{B8748563-F294-44C2-90F0-79E8EACE78A1}</Property>
					</Item>
					<Item Name="AudioIn/Right" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Audio/AudioIn\/Right</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4DE4640D-F61A-434C-9DE4-EAA43C9EE48E}</Property>
					</Item>
					<Item Name="AudioOut/Left" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Audio/AudioOut\/Left</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{789A546C-E9AA-47EC-AC86-00B8E131CE32}</Property>
					</Item>
					<Item Name="AudioOut/Right" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Audio/AudioOut\/Right</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{5E1F5FD1-9B89-4D0B-A386-EE3543251EA2}</Property>
					</Item>
				</Item>
				<Item Name="ConnectorA" Type="Folder">
					<Item Name="Analog" Type="Folder">
						<Item Name="ConnectorA/AI0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorA/AI0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{DFDF44BF-1CA8-40E2-B8A4-5C69469DABB4}</Property>
						</Item>
						<Item Name="ConnectorA/AI1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorA/AI1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{93B5E602-39C0-4A36-B733-50F673D19CDE}</Property>
						</Item>
						<Item Name="ConnectorA/AI2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorA/AI2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{C4BA6D8D-FE33-4F0D-A271-C2AB55CDE8FE}</Property>
						</Item>
						<Item Name="ConnectorA/AI3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorA/AI3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A1180E4E-BBE1-42BA-B4E5-0B564B482AFF}</Property>
						</Item>
						<Item Name="ConnectorA/AO0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorA/AO0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A9C4C53E-9CB3-4144-842E-C8636437D5C0}</Property>
						</Item>
						<Item Name="ConnectorA/AO1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorA/AO1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{20374256-31E0-4CBB-A580-BD7939E6A355}</Property>
						</Item>
					</Item>
					<Item Name="DIO7:0" Type="Folder">
						<Item Name="ConnectorA/DIO0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{1B275618-2839-40CD-A80B-5A1E340A34CB}</Property>
						</Item>
						<Item Name="ConnectorA/DIO1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{DEAF4226-D9BD-493C-9E9E-DA9CA65F5498}</Property>
						</Item>
						<Item Name="ConnectorA/DIO2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{10B55CC8-0114-477B-896A-991B47CC69DC}</Property>
						</Item>
						<Item Name="ConnectorA/DIO3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{0932A6A4-EBEF-49B5-AB59-1927817363B3}</Property>
						</Item>
						<Item Name="ConnectorA/DIO4" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO4</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A146BA90-EBEB-48DF-83D1-6E2C76B3E250}</Property>
						</Item>
						<Item Name="ConnectorA/DIO5" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO5</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{B3CCBF6D-ADA6-4510-BF78-04C26BC3A870}</Property>
						</Item>
						<Item Name="ConnectorA/DIO6" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO6</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{271389E4-AA91-40C4-B6F9-97AB60A2D1BB}</Property>
						</Item>
						<Item Name="ConnectorA/DIO7" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO7</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{C3BF3AC0-5410-45B6-AFEE-EE56030C1833}</Property>
						</Item>
						<Item Name="ConnectorA/DIO7:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO7:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{7D5CC424-ADD5-4D58-9F71-BA362F954CF5}</Property>
						</Item>
					</Item>
					<Item Name="DIO15:8" Type="Folder">
						<Item Name="ConnectorA/DIO8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{35C22414-DF0B-4977-BE86-40EED05F0C5B}</Property>
						</Item>
						<Item Name="ConnectorA/DIO9" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO9</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{8F5A2F08-0AD9-41BF-AE07-4371F597420D}</Property>
						</Item>
						<Item Name="ConnectorA/DIO10" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO10</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{E896B469-6424-41C1-8B67-BE064C20FA25}</Property>
						</Item>
						<Item Name="ConnectorA/DIO11" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO11</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{CED204FD-F713-4350-83FA-5D61A1E25F09}</Property>
						</Item>
						<Item Name="ConnectorA/DIO12" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO12</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{8D1C0817-43C4-4E4D-8E59-8BDDA74B5327}</Property>
						</Item>
						<Item Name="ConnectorA/DIO13" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO13</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{2FF878F2-5645-4280-91A1-63D44D19F4C8}</Property>
						</Item>
						<Item Name="ConnectorA/DIO14" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO14</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{74C52444-1A78-4F7C-B5C8-C4D47A2AE67E}</Property>
						</Item>
						<Item Name="ConnectorA/DIO15" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO15</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{4865AD91-F9D6-4822-8DFA-CD2D9FF9E0F8}</Property>
						</Item>
						<Item Name="ConnectorA/DIO15:8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorA/DIO15:8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{21C57214-E6F3-4EE0-BC14-6CC9DE461686}</Property>
						</Item>
					</Item>
				</Item>
				<Item Name="ConnectorB" Type="Folder">
					<Item Name="Analog" Type="Folder">
						<Item Name="ConnectorB/AI0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorB/AI0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{BF715A94-672E-4E8F-93A3-D69EB95F606B}</Property>
						</Item>
						<Item Name="ConnectorB/AI1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorB/AI1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{4E95A633-7817-486B-93F2-EEA0D3D3D5DD}</Property>
						</Item>
						<Item Name="ConnectorB/AI2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorB/AI2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{334E099B-DB80-41E0-8292-FC08099A3DDA}</Property>
						</Item>
						<Item Name="ConnectorB/AI3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorB/AI3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{0B2B7C3C-C403-4F8E-A769-3576C89528A4}</Property>
						</Item>
						<Item Name="ConnectorB/AO0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorB/AO0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{347AF70D-3A03-4934-BB58-73B4B0F6B812}</Property>
						</Item>
						<Item Name="ConnectorB/AO1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorB/AO1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{B647945A-423A-4AA2-B382-377548BF1571}</Property>
						</Item>
					</Item>
					<Item Name="DIO7:0" Type="Folder">
						<Item Name="ConnectorB/DIO0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{0E040E19-2A47-48F9-942C-216156FAAAF1}</Property>
						</Item>
						<Item Name="ConnectorB/DIO1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{62CAA5CD-A7EA-45C6-9AD8-CAB049FDC887}</Property>
						</Item>
						<Item Name="ConnectorB/DIO2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{A9C58653-2AD8-48DA-B3DD-C56EDF408DC7}</Property>
						</Item>
						<Item Name="ConnectorB/DIO3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{FE0F6269-05F6-4509-B0D9-8A86B1BEF6D5}</Property>
						</Item>
						<Item Name="ConnectorB/DIO4" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO4</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{0BB8815F-E6B0-411E-917C-C3B7D40529C0}</Property>
						</Item>
						<Item Name="ConnectorB/DIO5" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO5</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{4ACFB1BA-676C-42F1-A611-07364464C23C}</Property>
						</Item>
						<Item Name="ConnectorB/DIO6" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO6</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{2C9A1DD1-9064-4432-9C68-5EC1CAEBCF7F}</Property>
						</Item>
						<Item Name="ConnectorB/DIO7" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO7</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{F3918E3D-AFDC-4021-A260-EE2E5AAC3971}</Property>
						</Item>
						<Item Name="ConnectorB/DIO7:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO7:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{AF1BB0D1-C2B6-4D86-B9E0-1A458A1F9D36}</Property>
						</Item>
					</Item>
					<Item Name="DIO15:8" Type="Folder">
						<Item Name="ConnectorB/DIO8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{0E512C72-B652-4A3A-B94A-51CC73B1EF8B}</Property>
						</Item>
						<Item Name="ConnectorB/DIO9" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO9</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{697E4BBF-7886-474B-9815-18426487A6FB}</Property>
						</Item>
						<Item Name="ConnectorB/DIO10" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO10</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{56745F91-1D14-4E01-881E-307903C03585}</Property>
						</Item>
						<Item Name="ConnectorB/DIO11" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO11</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{039DEE4F-9EB4-4A1B-AA18-794CC49D733B}</Property>
						</Item>
						<Item Name="ConnectorB/DIO12" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO12</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{9333A91B-FFDE-492C-B421-93B764D3D8C4}</Property>
						</Item>
						<Item Name="ConnectorB/DIO13" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO13</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{CA6AF97D-670E-42DA-A6AD-30EA62A587C6}</Property>
						</Item>
						<Item Name="ConnectorB/DIO14" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO14</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{1A00D99A-8301-4531-9A6A-A011765EFDF4}</Property>
						</Item>
						<Item Name="ConnectorB/DIO15" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO15</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{78AB769B-E0B7-4EDD-933A-FA654344E455}</Property>
						</Item>
						<Item Name="ConnectorB/DIO15:8" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorB/DIO15:8</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{9629675E-9E79-4D43-AB8A-6FD9C5A1F828}</Property>
						</Item>
					</Item>
				</Item>
				<Item Name="ConnectorC" Type="Folder">
					<Item Name="Analog" Type="Folder">
						<Item Name="ConnectorC/AI0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorC/AI0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{EBF8F206-A3C3-436F-89C2-DD7F797B6BE0}</Property>
						</Item>
						<Item Name="ConnectorC/AI1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorC/AI1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{300D55B4-B684-4BEF-BC41-A072D691DB14}</Property>
						</Item>
						<Item Name="ConnectorC/AO0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorC/AO0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{1A018761-4C37-4B30-B61A-7F10C647AD58}</Property>
						</Item>
						<Item Name="ConnectorC/AO1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/ConnectorC/AO1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{DC78610A-D963-473B-9334-3A4D47E7373D}</Property>
						</Item>
					</Item>
					<Item Name="DIO7:0" Type="Folder">
						<Item Name="ConnectorC/DIO0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorC/DIO0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{9E539A3D-2FBD-4539-81EC-4B4E02879793}</Property>
						</Item>
						<Item Name="ConnectorC/DIO1" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorC/DIO1</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{4C36EE6A-4D36-4D1D-9904-2311AD34CB8B}</Property>
						</Item>
						<Item Name="ConnectorC/DIO2" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorC/DIO2</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{E79DB0D8-7D8B-4040-8CCE-2267EF4737CB}</Property>
						</Item>
						<Item Name="ConnectorC/DIO3" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorC/DIO3</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{81438788-ED8A-4E49-B19F-D6C8FD94A48D}</Property>
						</Item>
						<Item Name="ConnectorC/DIO4" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorC/DIO4</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{3CAA8215-0EF4-457E-A872-847F80DC31AC}</Property>
						</Item>
						<Item Name="ConnectorC/DIO5" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorC/DIO5</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{11D69F1F-CAC6-4114-9858-34E547CBBF54}</Property>
						</Item>
						<Item Name="ConnectorC/DIO6" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorC/DIO6</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{34A0011F-129A-45FD-8ECF-36A3DE7967DE}</Property>
						</Item>
						<Item Name="ConnectorC/DIO7" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorC/DIO7</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{178771A0-4721-4B98-BD87-D7EC6651439C}</Property>
						</Item>
						<Item Name="ConnectorC/DIO7:0" Type="Elemental IO">
							<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="ArbitrationForOutputEnable">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputEnable">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/ConnectorC/DIO7:0</Value>
   </Attribute>
</AttributeSet>
</Property>
							<Property Name="FPGA.PersistentID" Type="Str">{78263D0C-33C0-495C-8B35-D76979BE8099}</Property>
						</Item>
					</Item>
				</Item>
				<Item Name="Onboard I/O" Type="Folder">
					<Item Name="AccelerationX" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AccelerationX</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{4CEC7486-0092-4E94-98CC-DE5B86CF1787}</Property>
					</Item>
					<Item Name="AccelerationY" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AccelerationY</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{663ECAB5-1AA5-4543-A431-8883158C6BAE}</Property>
					</Item>
					<Item Name="AccelerationZ" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/AccelerationZ</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{A23929CA-BA9A-4D3E-AD25-65669E06D595}</Property>
					</Item>
					<Item Name="Button0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/Button0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{A13CD7F6-97CD-4B16-B9CA-3BD50830B9F6}</Property>
					</Item>
					<Item Name="LED0" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/LED0</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{04B913BA-651C-499E-A97B-E76FB39CDF73}</Property>
					</Item>
					<Item Name="LED1" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/LED1</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{F9C6FF77-A33A-48A5-BD93-234EEF59444B}</Property>
					</Item>
					<Item Name="LED2" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/LED2</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{FAC03533-23D6-491B-92F0-AAEE0A1B50A5}</Property>
					</Item>
					<Item Name="LED3" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="ArbitrationForOutputData">
   <Value>NeverArbitrate</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForOutputData">
   <Value>1</Value>
   </Attribute>
   <Attribute name="NumberOfSyncRegistersForReadInProject">
   <Value>Auto</Value>
   </Attribute>
   <Attribute name="resource">
   <Value>/LED3</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{C5BDEB7E-8C38-4AB2-8233-E88631C7C1B8}</Property>
					</Item>
					<Item Name="Scan Clock" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/Scan Clock</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{77F62C25-14FE-4E48-B358-FCD32C4D0A49}</Property>
					</Item>
					<Item Name="System Reset" Type="Elemental IO">
						<Property Name="eioAttrBag" Type="Xml"><AttributeSet name="">
   <Attribute name="resource">
   <Value>/System Reset</Value>
   </Attribute>
</AttributeSet>
</Property>
						<Property Name="FPGA.PersistentID" Type="Str">{2BDB3D3F-30A2-4BAE-ACD0-1FB5BF469D66}</Property>
					</Item>
				</Item>
				<Item Name="project" Type="Folder">
					<Item Name="FIFO&apos;s" Type="Folder">
						<Item Name="target-scoped" Type="Folder">
							<Item Name="get a sample" Type="FPGA FIFO">
								<Property Name="Actual Number of Elements" Type="UInt">513</Property>
								<Property Name="Arbitration for Read" Type="UInt">1</Property>
								<Property Name="Arbitration for Write" Type="UInt">1</Property>
								<Property Name="Control Logic" Type="UInt">1</Property>
								<Property Name="Data Type" Type="UInt">0</Property>
								<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
								<Property Name="fifo.configuration" Type="Str">"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
								<Property Name="fifo.configured" Type="Bool">true</Property>
								<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
								<Property Name="fifo.valid" Type="Bool">true</Property>
								<Property Name="fifo.version" Type="Int">12</Property>
								<Property Name="FPGA.PersistentID" Type="Str">{6A28696E-52AD-4143-B804-DE3A0BE99585}</Property>
								<Property Name="Local" Type="Bool">false</Property>
								<Property Name="Memory Type" Type="UInt">2</Property>
								<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
								<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
								<Property Name="Requested Number of Elements" Type="UInt">21</Property>
								<Property Name="Type" Type="UInt">0</Property>
								<Property Name="Type Descriptor" Type="Str">1000800000000001000A402104426F6F6C00000100000000000000</Property>
							</Item>
							<Item Name="transmit" Type="FPGA FIFO">
								<Property Name="Actual Number of Elements" Type="UInt">513</Property>
								<Property Name="Arbitration for Read" Type="UInt">1</Property>
								<Property Name="Arbitration for Write" Type="UInt">1</Property>
								<Property Name="Control Logic" Type="UInt">1</Property>
								<Property Name="Data Type" Type="UInt">0</Property>
								<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
								<Property Name="fifo.configuration" Type="Str">"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
								<Property Name="fifo.configured" Type="Bool">true</Property>
								<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
								<Property Name="fifo.valid" Type="Bool">true</Property>
								<Property Name="fifo.version" Type="Int">12</Property>
								<Property Name="FPGA.PersistentID" Type="Str">{145FD50E-8647-47D2-9548-A6156E231D7F}</Property>
								<Property Name="Local" Type="Bool">false</Property>
								<Property Name="Memory Type" Type="UInt">2</Property>
								<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
								<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
								<Property Name="Requested Number of Elements" Type="UInt">21</Property>
								<Property Name="Type" Type="UInt">0</Property>
								<Property Name="Type Descriptor" Type="Str">1000800000000001000A402104426F6F6C00000100000000000000</Property>
							</Item>
							<Item Name="re part" Type="FPGA FIFO">
								<Property Name="Actual Number of Elements" Type="UInt">513</Property>
								<Property Name="Arbitration for Read" Type="UInt">1</Property>
								<Property Name="Arbitration for Write" Type="UInt">1</Property>
								<Property Name="Control Logic" Type="UInt">1</Property>
								<Property Name="Data Type" Type="UInt">9</Property>
								<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
								<Property Name="fifo.configuration" Type="Str">"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001003C005F03510014000000040001001400000004FFFFFFFFFFF800000001001400000004000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
								<Property Name="fifo.configured" Type="Bool">true</Property>
								<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
								<Property Name="fifo.valid" Type="Bool">true</Property>
								<Property Name="fifo.version" Type="Int">12</Property>
								<Property Name="FPGA.PersistentID" Type="Str">{EF09E35E-1ECA-4D98-BC9F-627727F1BBED}</Property>
								<Property Name="Local" Type="Bool">false</Property>
								<Property Name="Memory Type" Type="UInt">2</Property>
								<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
								<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
								<Property Name="Requested Number of Elements" Type="UInt">21</Property>
								<Property Name="Type" Type="UInt">0</Property>
								<Property Name="Type Descriptor" Type="Str">1000800000000001003C005F03510014000000040001001400000004FFFFFFFFFFF800000001001400000004000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000</Property>
							</Item>
							<Item Name="t2t" Type="FPGA FIFO">
								<Property Name="Actual Number of Elements" Type="UInt">1025</Property>
								<Property Name="Arbitration for Read" Type="UInt">1</Property>
								<Property Name="Arbitration for Write" Type="UInt">1</Property>
								<Property Name="Control Logic" Type="UInt">1</Property>
								<Property Name="Data Type" Type="UInt">10</Property>
								<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
								<Property Name="fifo.configuration" Type="Str">"ControlLogic=1;NumberOfElements=1025;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=10008000000000030040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF10000000000000001027072000040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000102706900001C4050000200000001106F757470757420636C7573746572203200000100020000000000000000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
								<Property Name="fifo.configured" Type="Bool">true</Property>
								<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
								<Property Name="fifo.valid" Type="Bool">true</Property>
								<Property Name="fifo.version" Type="Int">12</Property>
								<Property Name="FPGA.PersistentID" Type="Str">{DDA08452-6B87-4A1B-BE00-2DD6A8D9C208}</Property>
								<Property Name="Local" Type="Bool">false</Property>
								<Property Name="Memory Type" Type="UInt">2</Property>
								<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
								<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
								<Property Name="Requested Number of Elements" Type="UInt">1023</Property>
								<Property Name="Type" Type="UInt">0</Property>
								<Property Name="Type Descriptor" Type="Str">10008000000000030040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF10000000000000001027072000040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000102706900001C4050000200000001106F757470757420636C7573746572203200000100020000000000000000000000000000000000000000</Property>
							</Item>
						</Item>
						<Item Name="target to host" Type="Folder">
							<Item Name="audio out to host" Type="FPGA FIFO">
								<Property Name="Actual Number of Elements" Type="UInt">1023</Property>
								<Property Name="Arbitration for Read" Type="UInt">1</Property>
								<Property Name="Arbitration for Write" Type="UInt">1</Property>
								<Property Name="Control Logic" Type="UInt">0</Property>
								<Property Name="Data Type" Type="UInt">1</Property>
								<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
								<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
								<Property Name="fifo.configured" Type="Bool">true</Property>
								<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
								<Property Name="fifo.valid" Type="Bool">true</Property>
								<Property Name="fifo.version" Type="Int">12</Property>
								<Property Name="FPGA.PersistentID" Type="Str">{2F7E7325-4811-4BCF-AFAB-14B495012E8D}</Property>
								<Property Name="Local" Type="Bool">false</Property>
								<Property Name="Memory Type" Type="UInt">2</Property>
								<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
								<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
								<Property Name="Requested Number of Elements" Type="UInt">1023</Property>
								<Property Name="Type" Type="UInt">2</Property>
								<Property Name="Type Descriptor" Type="Str">1000800000000001000940010002493800000100000000000000</Property>
							</Item>
							<Item Name="audio in to host" Type="FPGA FIFO">
								<Property Name="Actual Number of Elements" Type="UInt">1023</Property>
								<Property Name="Arbitration for Read" Type="UInt">1</Property>
								<Property Name="Arbitration for Write" Type="UInt">1</Property>
								<Property Name="Control Logic" Type="UInt">0</Property>
								<Property Name="Data Type" Type="UInt">1</Property>
								<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
								<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio in to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
								<Property Name="fifo.configured" Type="Bool">true</Property>
								<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
								<Property Name="fifo.valid" Type="Bool">true</Property>
								<Property Name="fifo.version" Type="Int">12</Property>
								<Property Name="FPGA.PersistentID" Type="Str">{230B1547-F5B7-40AE-BBE8-724AC1C68E20}</Property>
								<Property Name="Local" Type="Bool">false</Property>
								<Property Name="Memory Type" Type="UInt">2</Property>
								<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
								<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
								<Property Name="Requested Number of Elements" Type="UInt">1023</Property>
								<Property Name="Type" Type="UInt">2</Property>
								<Property Name="Type Descriptor" Type="Str">1000800000000001000940010002493800000100000000000000</Property>
							</Item>
							<Item Name="data" Type="FPGA FIFO">
								<Property Name="Actual Number of Elements" Type="UInt">1023</Property>
								<Property Name="Arbitration for Read" Type="UInt">1</Property>
								<Property Name="Arbitration for Write" Type="UInt">1</Property>
								<Property Name="Control Logic" Type="UInt">0</Property>
								<Property Name="Data Type" Type="UInt">9</Property>
								<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
								<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;data;DataType=1000800000000001003C005F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
								<Property Name="fifo.configured" Type="Bool">true</Property>
								<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
								<Property Name="fifo.valid" Type="Bool">true</Property>
								<Property Name="fifo.version" Type="Int">12</Property>
								<Property Name="FPGA.PersistentID" Type="Str">{D065B79A-411E-4A75-B35F-17B6A9F3E6DF}</Property>
								<Property Name="Local" Type="Bool">false</Property>
								<Property Name="Memory Type" Type="UInt">2</Property>
								<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
								<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
								<Property Name="Requested Number of Elements" Type="UInt">1023</Property>
								<Property Name="Type" Type="UInt">2</Property>
								<Property Name="Type Descriptor" Type="Str">1000800000000001003C005F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000</Property>
							</Item>
							<Item Name="tx" Type="FPGA FIFO">
								<Property Name="Actual Number of Elements" Type="UInt">1023</Property>
								<Property Name="Arbitration for Read" Type="UInt">1</Property>
								<Property Name="Arbitration for Write" Type="UInt">1</Property>
								<Property Name="Control Logic" Type="UInt">0</Property>
								<Property Name="Data Type" Type="UInt">2</Property>
								<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
								<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;tx;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
								<Property Name="fifo.configured" Type="Bool">true</Property>
								<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
								<Property Name="fifo.valid" Type="Bool">true</Property>
								<Property Name="fifo.version" Type="Int">12</Property>
								<Property Name="FPGA.PersistentID" Type="Str">{54A02081-0793-4EE0-A2AD-72C223BA2BEC}</Property>
								<Property Name="Local" Type="Bool">false</Property>
								<Property Name="Memory Type" Type="UInt">2</Property>
								<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
								<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
								<Property Name="Requested Number of Elements" Type="UInt">1023</Property>
								<Property Name="Type" Type="UInt">2</Property>
								<Property Name="Type Descriptor" Type="Str">100080000000000100094002000349313600010000000000000000</Property>
							</Item>
						</Item>
						<Item Name="host to target" Type="Folder">
							<Item Name="audio out" Type="FPGA FIFO">
								<Property Name="Actual Number of Elements" Type="UInt">1029</Property>
								<Property Name="Arbitration for Read" Type="UInt">1</Property>
								<Property Name="Arbitration for Write" Type="UInt">1</Property>
								<Property Name="Control Logic" Type="UInt">0</Property>
								<Property Name="Data Type" Type="UInt">2</Property>
								<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
								<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
								<Property Name="fifo.configured" Type="Bool">true</Property>
								<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
								<Property Name="fifo.valid" Type="Bool">true</Property>
								<Property Name="fifo.version" Type="Int">12</Property>
								<Property Name="FPGA.PersistentID" Type="Str">{CAE8F047-95C4-4A7F-B106-9A5634F11157}</Property>
								<Property Name="Local" Type="Bool">false</Property>
								<Property Name="Memory Type" Type="UInt">2</Property>
								<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
								<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
								<Property Name="Requested Number of Elements" Type="UInt">1023</Property>
								<Property Name="Type" Type="UInt">1</Property>
								<Property Name="Type Descriptor" Type="Str">100080000000000100094002000349313600010000000000000000</Property>
							</Item>
							<Item Name="noise" Type="FPGA FIFO">
								<Property Name="Actual Number of Elements" Type="UInt">1029</Property>
								<Property Name="Arbitration for Read" Type="UInt">1</Property>
								<Property Name="Arbitration for Write" Type="UInt">1</Property>
								<Property Name="Control Logic" Type="UInt">0</Property>
								<Property Name="Data Type" Type="UInt">2</Property>
								<Property Name="Disable on Overflow/Underflow" Type="Bool">false</Property>
								<Property Name="fifo.configuration" Type="Str">"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;noise;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
								<Property Name="fifo.configured" Type="Bool">true</Property>
								<Property Name="fifo.projectItemValid" Type="Bool">true</Property>
								<Property Name="fifo.valid" Type="Bool">true</Property>
								<Property Name="fifo.version" Type="Int">12</Property>
								<Property Name="FPGA.PersistentID" Type="Str">{722D0FC0-0F69-4F1A-8E33-2009FA57CD7B}</Property>
								<Property Name="Local" Type="Bool">false</Property>
								<Property Name="Memory Type" Type="UInt">2</Property>
								<Property Name="Number Of Elements Per Read" Type="UInt">1</Property>
								<Property Name="Number Of Elements Per Write" Type="UInt">1</Property>
								<Property Name="Requested Number of Elements" Type="UInt">1023</Property>
								<Property Name="Type" Type="UInt">1</Property>
								<Property Name="Type Descriptor" Type="Str">100080000000000100094002000349313600010000000000000000</Property>
							</Item>
						</Item>
					</Item>
					<Item Name="block memory" Type="Folder">
						<Item Name="modulation" Type="Folder">
							<Item Name="symbol map" Type="Folder">
								<Item Name="symbol map im" Type="FPGA Memory Block">
									<Property Name="FPGA.PersistentID" Type="Str">{0860118B-E102-4DE5-9471-65AD3E4BC70C}</Property>
									<Property Name="fullEmulation" Type="Bool">false</Property>
									<Property Name="Memory Latency" Type="UInt">3</Property>
									<Property Name="Multiple Clock Domains" Type="Bool">false</Property>
									<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">Actual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001000100000001FFFFFFFFFFFFFFFF0000000F000000000000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=91B461134396B6DDEB2AE66F3EDF6B42;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3</Property>
									<Property Name="NI.LV.FPGA.MEMORY.ActualNumberOfElements" Type="UInt">64</Property>
									<Property Name="NI.LV.FPGA.MEMORY.DataWidth" Type="UInt">9</Property>
									<Property Name="NI.LV.FPGA.MEMORY.DramIncludeByteEnables" Type="Bool">false</Property>
									<Property Name="NI.LV.FPGA.MEMORY.DramMaxOutstandingRequests" Type="Int">64</Property>
									<Property Name="NI.LV.FPGA.MEMORY.DramSelection" Type="Str"></Property>
									<Property Name="NI.LV.FPGA.MEMORY.Init" Type="Bool">true</Property>
									<Property Name="NI.LV.FPGA.MEMORY.InitData" Type="Str">0101101010000010010110101000001001011010100000100101101010000010010110101000001001011010100000100101101010000010010110101000001001000000101001100100000010100110010000001010011001000000101001100100000010100110010000001010011001000000101001100100000010100110000011001110111000001100111011100000110011101110000011001110111000001100111011100000110011101110000011001110111000001100111011100010011011001010001001101100101000100110110010100010011011001010001001101100101000100110110010100010011011001010001001101100101010100101011111101010010101111110101001010111111010100101011111101010010101111110101001010111111010100101011111101010010101111110101111110101101010111111010110101011111101011010101111110101101010111111010110101011111101011010101111110101101010111111010110101111001100010010111100110001001011110011000100101111001100010010111100110001001011110011000100101111001100010010111100110001001011011001001101101101100100110110110110010011011011011001001101101101100100110110110110010011011011011001001101101101100100110110</Property>
									<Property Name="NI.LV.FPGA.MEMORY.InitVIPath" Type="Str">symbol map im.vi</Property>
									<Property Name="NI.LV.FPGA.MEMORY.InterfaceAArbitration" Type="UInt">1</Property>
									<Property Name="NI.LV.FPGA.MEMORY.InterfaceBArbitration" Type="UInt">1</Property>
									<Property Name="NI.LV.FPGA.MEMORY.InterfaceConfig" Type="UInt">0</Property>
									<Property Name="NI.LV.FPGA.MEMORY.RequestedNumberOfElements" Type="UInt">64</Property>
									<Property Name="NI.LV.FPGA.MEMORY.Type" Type="UInt">2</Property>
									<Property Name="NI.LV.FPGA.ScriptConfigString" Type="Str">Actual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001000100000001FFFFFFFFFFFFFFFF0000000F000000000000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=91B461134396B6DDEB2AE66F3EDF6B42;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3Persist Memory ValuesFALSE;</Property>
									<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
									<Property Name="NI.LV.FPGA.Version" Type="Int">10</Property>
									<Property Name="Type Descriptor" Type="Str">1000800000000001003C005F03510010000000010001000100000001FFFFFFFFFFFFFFFF0000000F000000000000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000</Property>
								</Item>
								<Item Name="symbol map re" Type="FPGA Memory Block">
									<Property Name="FPGA.PersistentID" Type="Str">{A7402F3E-00DA-4FBC-9639-388DEBE17FBF}</Property>
									<Property Name="fullEmulation" Type="Bool">false</Property>
									<Property Name="Memory Latency" Type="UInt">3</Property>
									<Property Name="Multiple Clock Domains" Type="Bool">false</Property>
									<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">Actual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=D228F0D1F55A88F304BA4469FF9262BC;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3</Property>
									<Property Name="NI.LV.FPGA.MEMORY.ActualNumberOfElements" Type="UInt">64</Property>
									<Property Name="NI.LV.FPGA.MEMORY.DataWidth" Type="UInt">9</Property>
									<Property Name="NI.LV.FPGA.MEMORY.DramIncludeByteEnables" Type="Bool">false</Property>
									<Property Name="NI.LV.FPGA.MEMORY.DramMaxOutstandingRequests" Type="Int">64</Property>
									<Property Name="NI.LV.FPGA.MEMORY.DramSelection" Type="Str"></Property>
									<Property Name="NI.LV.FPGA.MEMORY.Init" Type="Bool">true</Property>
									<Property Name="NI.LV.FPGA.MEMORY.InitData" Type="Str">0101101010000010010000001010011000001100111011100010011011001010101001010111111010111111010110101111001100010010110110010011011001011010100000100100000010100110000011001110111000100110110010101010010101111110101111110101101011110011000100101101100100110110010110101000001001000000101001100000110011101110001001101100101010100101011111101011111101011010111100110001001011011001001101100101101010000010010000001010011000001100111011100010011011001010101001010111111010111111010110101111001100010010110110010011011001011010100000100100000010100110000011001110111000100110110010101010010101111110101111110101101011110011000100101101100100110110010110101000001001000000101001100000110011101110001001101100101010100101011111101011111101011010111100110001001011011001001101100101101010000010010000001010011000001100111011100010011011001010101001010111111010111111010110101111001100010010110110010011011001011010100000100100000010100110000011001110111000100110110010101010010101111110101111110101101011110011000100101101100100110110</Property>
									<Property Name="NI.LV.FPGA.MEMORY.InitVIPath" Type="Str">symbol map re.vi</Property>
									<Property Name="NI.LV.FPGA.MEMORY.InterfaceAArbitration" Type="UInt">1</Property>
									<Property Name="NI.LV.FPGA.MEMORY.InterfaceBArbitration" Type="UInt">1</Property>
									<Property Name="NI.LV.FPGA.MEMORY.InterfaceConfig" Type="UInt">0</Property>
									<Property Name="NI.LV.FPGA.MEMORY.RequestedNumberOfElements" Type="UInt">64</Property>
									<Property Name="NI.LV.FPGA.MEMORY.Type" Type="UInt">2</Property>
									<Property Name="NI.LV.FPGA.ScriptConfigString" Type="Str">Actual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=D228F0D1F55A88F304BA4469FF9262BC;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3Persist Memory ValuesFALSE;</Property>
									<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
									<Property Name="NI.LV.FPGA.Version" Type="Int">10</Property>
									<Property Name="Type Descriptor" Type="Str">1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000</Property>
								</Item>
							</Item>
							<Item Name="cosine mod" Type="FPGA Memory Block">
								<Property Name="FPGA.PersistentID" Type="Str">{9FD93ECA-3FA2-41CD-978C-3F9F3E264DF5}</Property>
								<Property Name="fullEmulation" Type="Bool">false</Property>
								<Property Name="Memory Latency" Type="UInt">3</Property>
								<Property Name="Multiple Clock Domains" Type="Bool">false</Property>
								<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000100000002FFFFFFFFFFFFFFFF000000010000000100000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=954795EFF995556337A0537DC3578CEE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3</Property>
								<Property Name="NI.LV.FPGA.MEMORY.ActualNumberOfElements" Type="UInt">4</Property>
								<Property Name="NI.LV.FPGA.MEMORY.DataWidth" Type="UInt">9</Property>
								<Property Name="NI.LV.FPGA.MEMORY.DramIncludeByteEnables" Type="Bool">false</Property>
								<Property Name="NI.LV.FPGA.MEMORY.DramMaxOutstandingRequests" Type="Int">64</Property>
								<Property Name="NI.LV.FPGA.MEMORY.DramSelection" Type="Str"></Property>
								<Property Name="NI.LV.FPGA.MEMORY.Init" Type="Bool">true</Property>
								<Property Name="NI.LV.FPGA.MEMORY.InitData" Type="Str">01001100</Property>
								<Property Name="NI.LV.FPGA.MEMORY.InitVIPath" Type="Str">cosine mod.vi</Property>
								<Property Name="NI.LV.FPGA.MEMORY.InterfaceAArbitration" Type="UInt">1</Property>
								<Property Name="NI.LV.FPGA.MEMORY.InterfaceBArbitration" Type="UInt">1</Property>
								<Property Name="NI.LV.FPGA.MEMORY.InterfaceConfig" Type="UInt">0</Property>
								<Property Name="NI.LV.FPGA.MEMORY.RequestedNumberOfElements" Type="UInt">4</Property>
								<Property Name="NI.LV.FPGA.MEMORY.Type" Type="UInt">2</Property>
								<Property Name="NI.LV.FPGA.ScriptConfigString" Type="Str">Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000100000002FFFFFFFFFFFFFFFF000000010000000100000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=954795EFF995556337A0537DC3578CEE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3Persist Memory ValuesFALSE;</Property>
								<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
								<Property Name="NI.LV.FPGA.Version" Type="Int">10</Property>
								<Property Name="Type Descriptor" Type="Str">1000800000000001003C005F03510002000000020001000100000002FFFFFFFFFFFFFFFF000000010000000100000000000000010000000100000001000000000000000100010000000000000000000000000000</Property>
							</Item>
							<Item Name="sine mod" Type="FPGA Memory Block">
								<Property Name="FPGA.PersistentID" Type="Str">{F5A6CBA1-B4D3-46E9-A638-7584FB90A7F3}</Property>
								<Property Name="fullEmulation" Type="Bool">false</Property>
								<Property Name="Memory Latency" Type="UInt">3</Property>
								<Property Name="Multiple Clock Domains" Type="Bool">false</Property>
								<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000200000002FFFFFFFFFFFFFFFE000100020000000200000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=48969BE300290283E7197926ADC43E9F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3</Property>
								<Property Name="NI.LV.FPGA.MEMORY.ActualNumberOfElements" Type="UInt">4</Property>
								<Property Name="NI.LV.FPGA.MEMORY.DataWidth" Type="UInt">9</Property>
								<Property Name="NI.LV.FPGA.MEMORY.DramIncludeByteEnables" Type="Bool">false</Property>
								<Property Name="NI.LV.FPGA.MEMORY.DramMaxOutstandingRequests" Type="Int">64</Property>
								<Property Name="NI.LV.FPGA.MEMORY.DramSelection" Type="Str"></Property>
								<Property Name="NI.LV.FPGA.MEMORY.Init" Type="Bool">true</Property>
								<Property Name="NI.LV.FPGA.MEMORY.InitData" Type="Str">00010011</Property>
								<Property Name="NI.LV.FPGA.MEMORY.InitVIPath" Type="Str">sine mod.vi</Property>
								<Property Name="NI.LV.FPGA.MEMORY.InterfaceAArbitration" Type="UInt">1</Property>
								<Property Name="NI.LV.FPGA.MEMORY.InterfaceBArbitration" Type="UInt">1</Property>
								<Property Name="NI.LV.FPGA.MEMORY.InterfaceConfig" Type="UInt">0</Property>
								<Property Name="NI.LV.FPGA.MEMORY.RequestedNumberOfElements" Type="UInt">4</Property>
								<Property Name="NI.LV.FPGA.MEMORY.Type" Type="UInt">2</Property>
								<Property Name="NI.LV.FPGA.ScriptConfigString" Type="Str">Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000200000002FFFFFFFFFFFFFFFE000100020000000200000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=48969BE300290283E7197926ADC43E9F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3Persist Memory ValuesFALSE;</Property>
								<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
								<Property Name="NI.LV.FPGA.Version" Type="Int">10</Property>
								<Property Name="Type Descriptor" Type="Str">1000800000000001003C005F03510002000000020001000200000002FFFFFFFFFFFFFFFE000100020000000200000000000000010000000100000001000000000000000100010000000000000000000000000000</Property>
							</Item>
						</Item>
					</Item>
					<Item Name="demodulation" Type="Folder">
						<Item Name="cosine demod" Type="FPGA Memory Block">
							<Property Name="FPGA.PersistentID" Type="Str">{01F7430B-AD45-4D0C-8F76-C39423D30D45}</Property>
							<Property Name="fullEmulation" Type="Bool">false</Property>
							<Property Name="Memory Latency" Type="UInt">3</Property>
							<Property Name="Multiple Clock Domains" Type="Bool">false</Property>
							<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=632FF2FE4CFF423FCCC4D7382564F49D;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3</Property>
							<Property Name="NI.LV.FPGA.MEMORY.ActualNumberOfElements" Type="UInt">4</Property>
							<Property Name="NI.LV.FPGA.MEMORY.DataWidth" Type="UInt">9</Property>
							<Property Name="NI.LV.FPGA.MEMORY.DramIncludeByteEnables" Type="Bool">false</Property>
							<Property Name="NI.LV.FPGA.MEMORY.DramMaxOutstandingRequests" Type="Int">64</Property>
							<Property Name="NI.LV.FPGA.MEMORY.DramSelection" Type="Str"></Property>
							<Property Name="NI.LV.FPGA.MEMORY.Init" Type="Bool">true</Property>
							<Property Name="NI.LV.FPGA.MEMORY.InitData" Type="Str">0111111111111111000000000000000010000000000000000000000000000000</Property>
							<Property Name="NI.LV.FPGA.MEMORY.InitVIPath" Type="Str">cosine mod.vi</Property>
							<Property Name="NI.LV.FPGA.MEMORY.InterfaceAArbitration" Type="UInt">1</Property>
							<Property Name="NI.LV.FPGA.MEMORY.InterfaceBArbitration" Type="UInt">1</Property>
							<Property Name="NI.LV.FPGA.MEMORY.InterfaceConfig" Type="UInt">0</Property>
							<Property Name="NI.LV.FPGA.MEMORY.RequestedNumberOfElements" Type="UInt">4</Property>
							<Property Name="NI.LV.FPGA.MEMORY.Type" Type="UInt">2</Property>
							<Property Name="NI.LV.FPGA.ScriptConfigString" Type="Str">Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=632FF2FE4CFF423FCCC4D7382564F49D;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3Persist Memory ValuesFALSE;</Property>
							<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
							<Property Name="NI.LV.FPGA.Version" Type="Int">10</Property>
							<Property Name="Type Descriptor" Type="Str">1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000</Property>
						</Item>
						<Item Name="sine demod" Type="FPGA Memory Block">
							<Property Name="FPGA.PersistentID" Type="Str">{887FC9B2-98E1-41D9-A2CE-637A0DEEC017}</Property>
							<Property Name="fullEmulation" Type="Bool">false</Property>
							<Property Name="Memory Latency" Type="UInt">3</Property>
							<Property Name="Multiple Clock Domains" Type="Bool">false</Property>
							<Property Name="NI.LV.FPGA.CompileConfigString" Type="Str">Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=63FBA03D9757A6641CDCB7F6A323FF1B;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3</Property>
							<Property Name="NI.LV.FPGA.MEMORY.ActualNumberOfElements" Type="UInt">4</Property>
							<Property Name="NI.LV.FPGA.MEMORY.DataWidth" Type="UInt">9</Property>
							<Property Name="NI.LV.FPGA.MEMORY.DramIncludeByteEnables" Type="Bool">false</Property>
							<Property Name="NI.LV.FPGA.MEMORY.DramMaxOutstandingRequests" Type="Int">64</Property>
							<Property Name="NI.LV.FPGA.MEMORY.DramSelection" Type="Str"></Property>
							<Property Name="NI.LV.FPGA.MEMORY.Init" Type="Bool">true</Property>
							<Property Name="NI.LV.FPGA.MEMORY.InitData" Type="Str">0000000000000000100000000000000000000000000000000111111111111111</Property>
							<Property Name="NI.LV.FPGA.MEMORY.InitVIPath" Type="Str">sine demod.vi</Property>
							<Property Name="NI.LV.FPGA.MEMORY.InterfaceAArbitration" Type="UInt">1</Property>
							<Property Name="NI.LV.FPGA.MEMORY.InterfaceBArbitration" Type="UInt">1</Property>
							<Property Name="NI.LV.FPGA.MEMORY.InterfaceConfig" Type="UInt">0</Property>
							<Property Name="NI.LV.FPGA.MEMORY.RequestedNumberOfElements" Type="UInt">4</Property>
							<Property Name="NI.LV.FPGA.MEMORY.Type" Type="UInt">2</Property>
							<Property Name="NI.LV.FPGA.ScriptConfigString" Type="Str">Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=63FBA03D9757A6641CDCB7F6A323FF1B;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3Persist Memory ValuesFALSE;</Property>
							<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
							<Property Name="NI.LV.FPGA.Version" Type="Int">10</Property>
							<Property Name="Type Descriptor" Type="Str">1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000</Property>
						</Item>
					</Item>
					<Item Name="sub VI&apos;s" Type="Folder">
						<Item Name="raised cosine fir.vi" Type="VI" URL="../raised cosine fir.vi">
							<Property Name="configString.guid" Type="Str">{01F7430B-AD45-4D0C-8F76-C39423D30D45}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=632FF2FE4CFF423FCCC4D7382564F49D;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{039DEE4F-9EB4-4A1B-AA18-794CC49D733B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{04B913BA-651C-499E-A97B-E76FB39CDF73}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED0;0;ReadMethodType=bool;WriteMethodType=bool{0860118B-E102-4DE5-9471-65AD3E4BC70C}Actual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001000100000001FFFFFFFFFFFFFFFF0000000F000000000000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=91B461134396B6DDEB2AE66F3EDF6B42;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{0932A6A4-EBEF-49B5-AB59-1927817363B3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{0B2B7C3C-C403-4F8E-A769-3576C89528A4}resource=/ConnectorB/AI3;0;ReadMethodType=U16{0BB8815F-E6B0-411E-917C-C3B7D40529C0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{0E040E19-2A47-48F9-942C-216156FAAAF1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{0E512C72-B652-4A3A-B94A-51CC73B1EF8B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{10B55CC8-0114-477B-896A-991B47CC69DC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{11D69F1F-CAC6-4114-9858-34E547CBBF54}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{145FD50E-8647-47D2-9548-A6156E231D7F}"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"{178771A0-4721-4B98-BD87-D7EC6651439C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{1A00D99A-8301-4531-9A6A-A011765EFDF4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{1A018761-4C37-4B30-B61A-7F10C647AD58}resource=/ConnectorC/AO0;0;WriteMethodType=I16{1B275618-2839-40CD-A80B-5A1E340A34CB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{20374256-31E0-4CBB-A580-BD7939E6A355}resource=/ConnectorA/AO1;0;WriteMethodType=U16{21C57214-E6F3-4EE0-BC14-6CC9DE461686}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{230B1547-F5B7-40AE-BBE8-724AC1C68E20}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio in to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"{271389E4-AA91-40C4-B6F9-97AB60A2D1BB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{2BDB3D3F-30A2-4BAE-ACD0-1FB5BF469D66}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{2C9A1DD1-9064-4432-9C68-5EC1CAEBCF7F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{2F7E7325-4811-4BCF-AFAB-14B495012E8D}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"{2FF878F2-5645-4280-91A1-63D44D19F4C8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{300D55B4-B684-4BEF-BC41-A072D691DB14}resource=/ConnectorC/AI1;0;ReadMethodType=I16{334E099B-DB80-41E0-8292-FC08099A3DDA}resource=/ConnectorB/AI2;0;ReadMethodType=U16{347AF70D-3A03-4934-BB58-73B4B0F6B812}resource=/ConnectorB/AO0;0;WriteMethodType=U16{34A0011F-129A-45FD-8ECF-36A3DE7967DE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{35C22414-DF0B-4977-BE86-40EED05F0C5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{3CAA8215-0EF4-457E-A872-847F80DC31AC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{4865AD91-F9D6-4822-8DFA-CD2D9FF9E0F8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{4967C673-96E5-40BB-BEB8-BF4DEA5D7C0A}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{4ACFB1BA-676C-42F1-A611-07364464C23C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{4C36EE6A-4D36-4D1D-9904-2311AD34CB8B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{4CEC7486-0092-4E94-98CC-DE5B86CF1787}resource=/AccelerationX;0;ReadMethodType=I16{4DE4640D-F61A-434C-9DE4-EAA43C9EE48E}resource=/Audio/AudioIn\/Right;0;ReadMethodType=I16{4E95A633-7817-486B-93F2-EEA0D3D3D5DD}resource=/ConnectorB/AI1;0;ReadMethodType=U16{54A02081-0793-4EE0-A2AD-72C223BA2BEC}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;tx;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"{56745F91-1D14-4E01-881E-307903C03585}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{5E1F5FD1-9B89-4D0B-A386-EE3543251EA2}resource=/Audio/AudioOut\/Right;0;WriteMethodType=I16{62CAA5CD-A7EA-45C6-9AD8-CAB049FDC887}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{663ECAB5-1AA5-4543-A431-8883158C6BAE}resource=/AccelerationY;0;ReadMethodType=I16{697E4BBF-7886-474B-9815-18426487A6FB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{6A28696E-52AD-4143-B804-DE3A0BE99585}"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"{722D0FC0-0F69-4F1A-8E33-2009FA57CD7B}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;noise;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"{74C52444-1A78-4F7C-B5C8-C4D47A2AE67E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{77F62C25-14FE-4E48-B358-FCD32C4D0A49}resource=/Scan Clock;0;ReadMethodType=bool{78263D0C-33C0-495C-8B35-D76979BE8099}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{789A546C-E9AA-47EC-AC86-00B8E131CE32}resource=/Audio/AudioOut\/Left;0;WriteMethodType=I16{78AB769B-E0B7-4EDD-933A-FA654344E455}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{7D5CC424-ADD5-4D58-9F71-BA362F954CF5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{81438788-ED8A-4E49-B19F-D6C8FD94A48D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{887FC9B2-98E1-41D9-A2CE-637A0DEEC017}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=63FBA03D9757A6641CDCB7F6A323FF1B;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{8D1C0817-43C4-4E4D-8E59-8BDDA74B5327}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{8F5A2F08-0AD9-41BF-AE07-4371F597420D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{9333A91B-FFDE-492C-B421-93B764D3D8C4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{93B5E602-39C0-4A36-B733-50F673D19CDE}resource=/ConnectorA/AI1;0;ReadMethodType=U16{9629675E-9E79-4D43-AB8A-6FD9C5A1F828}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{9E539A3D-2FBD-4539-81EC-4B4E02879793}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{9FD93ECA-3FA2-41CD-978C-3F9F3E264DF5}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000100000002FFFFFFFFFFFFFFFF000000010000000100000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=954795EFF995556337A0537DC3578CEE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{A1180E4E-BBE1-42BA-B4E5-0B564B482AFF}resource=/ConnectorA/AI3;0;ReadMethodType=U16{A13CD7F6-97CD-4B16-B9CA-3BD50830B9F6}NumberOfSyncRegistersForReadInProject=Auto;resource=/Button0;0;ReadMethodType=bool{A146BA90-EBEB-48DF-83D1-6E2C76B3E250}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{A23929CA-BA9A-4D3E-AD25-65669E06D595}resource=/AccelerationZ;0;ReadMethodType=I16{A7402F3E-00DA-4FBC-9639-388DEBE17FBF}Actual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=D228F0D1F55A88F304BA4469FF9262BC;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{A9C4C53E-9CB3-4144-842E-C8636437D5C0}resource=/ConnectorA/AO0;0;WriteMethodType=U16{A9C58653-2AD8-48DA-B3DD-C56EDF408DC7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{AF1BB0D1-C2B6-4D86-B9E0-1A458A1F9D36}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{B3CCBF6D-ADA6-4510-BF78-04C26BC3A870}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{B647945A-423A-4AA2-B382-377548BF1571}resource=/ConnectorB/AO1;0;WriteMethodType=U16{B8748563-F294-44C2-90F0-79E8EACE78A1}resource=/Audio/AudioIn\/Left;0;ReadMethodType=I16{BF715A94-672E-4E8F-93A3-D69EB95F606B}resource=/ConnectorB/AI0;0;ReadMethodType=U16{C3BF3AC0-5410-45B6-AFEE-EE56030C1833}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{C4BA6D8D-FE33-4F0D-A271-C2AB55CDE8FE}resource=/ConnectorA/AI2;0;ReadMethodType=U16{C5BDEB7E-8C38-4AB2-8233-E88631C7C1B8}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED3;0;ReadMethodType=bool;WriteMethodType=bool{CA6AF97D-670E-42DA-A6AD-30EA62A587C6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{CA74DB4E-4CB0-4A03-B358-1D14275F76DE}Multiplier=1,000000;Divisor=4,000000{CAE8F047-95C4-4A7F-B106-9A5634F11157}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"{CED204FD-F713-4350-83FA-5D61A1E25F09}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{D065B79A-411E-4A75-B35F-17B6A9F3E6DF}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;data;DataType=1000800000000001003C005F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{DC78610A-D963-473B-9334-3A4D47E7373D}resource=/ConnectorC/AO1;0;WriteMethodType=I16{DDA08452-6B87-4A1B-BE00-2DD6A8D9C208}"ControlLogic=1;NumberOfElements=1025;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=10008000000000030040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF10000000000000001027072000040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000102706900001C4050000200000001106F757470757420636C7573746572203200000100020000000000000000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{DEAF4226-D9BD-493C-9E9E-DA9CA65F5498}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{DFDF44BF-1CA8-40E2-B8A4-5C69469DABB4}resource=/ConnectorA/AI0;0;ReadMethodType=U16{E79DB0D8-7D8B-4040-8CCE-2267EF4737CB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{E896B469-6424-41C1-8B67-BE064C20FA25}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{EBF8F206-A3C3-436F-89C2-DD7F797B6BE0}resource=/ConnectorC/AI0;0;ReadMethodType=I16{EF09E35E-1ECA-4D98-BC9F-627727F1BBED}"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001003C005F03510014000000040001001400000004FFFFFFFFFFF800000001001400000004000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{F3918E3D-AFDC-4021-A260-EE2E5AAC3971}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{F5A6CBA1-B4D3-46E9-A638-7584FB90A7F3}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000200000002FFFFFFFFFFFFFFFE000100020000000200000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=48969BE300290283E7197926ADC43E9F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{F9C6FF77-A33A-48A5-BD93-234EEF59444B}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED1;0;ReadMethodType=bool;WriteMethodType=bool{FAC03533-23D6-491B-92F0-AAEE0A1B50A5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED2;0;ReadMethodType=bool;WriteMethodType=bool{FE0F6269-05F6-4509-B0D9-8A86B1BEF6D5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO3;0;ReadMethodType=bool;WriteMethodType=boolmyRIO-1900/fft,false;/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSMYRIO_1900FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
							<Property Name="configString.name" Type="Str">10MHzMultiplier=1,000000;Divisor=4,00000040 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16audio in to host"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio in to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"audio out to host"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"audio out"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"AudioIn/Leftresource=/Audio/AudioIn\/Left;0;ReadMethodType=I16AudioIn/Rightresource=/Audio/AudioIn\/Right;0;ReadMethodType=I16AudioOut/Leftresource=/Audio/AudioOut\/Left;0;WriteMethodType=I16AudioOut/Rightresource=/Audio/AudioOut\/Right;0;WriteMethodType=I16Button0NumberOfSyncRegistersForReadInProject=Auto;resource=/Button0;0;ReadMethodType=boolConnectorA/AI0resource=/ConnectorA/AI0;0;ReadMethodType=U16ConnectorA/AI1resource=/ConnectorA/AI1;0;ReadMethodType=U16ConnectorA/AI2resource=/ConnectorA/AI2;0;ReadMethodType=U16ConnectorA/AI3resource=/ConnectorA/AI3;0;ReadMethodType=U16ConnectorA/AO0resource=/ConnectorA/AO0;0;WriteMethodType=U16ConnectorA/AO1resource=/ConnectorA/AO1;0;WriteMethodType=U16ConnectorA/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO0;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO10;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO11;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO12;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO13;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO14;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8ConnectorA/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO1;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO2;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO3;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO4;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO5;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO6;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8ConnectorA/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO8;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO9;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/AI0resource=/ConnectorB/AI0;0;ReadMethodType=U16ConnectorB/AI1resource=/ConnectorB/AI1;0;ReadMethodType=U16ConnectorB/AI2resource=/ConnectorB/AI2;0;ReadMethodType=U16ConnectorB/AI3resource=/ConnectorB/AI3;0;ReadMethodType=U16ConnectorB/AO0resource=/ConnectorB/AO0;0;WriteMethodType=U16ConnectorB/AO1resource=/ConnectorB/AO1;0;WriteMethodType=U16ConnectorB/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO0;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO10;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO11;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO12;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO13;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO14;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8ConnectorB/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO1;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO2;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO3;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO4;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO5;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO6;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8ConnectorB/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO8;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO9;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/AI0resource=/ConnectorC/AI0;0;ReadMethodType=I16ConnectorC/AI1resource=/ConnectorC/AI1;0;ReadMethodType=I16ConnectorC/AO0resource=/ConnectorC/AO0;0;WriteMethodType=I16ConnectorC/AO1resource=/ConnectorC/AO1;0;WriteMethodType=I16ConnectorC/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO0;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO1;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO2;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO3;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO4;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO5;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO6;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8ConnectorC/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7;0;ReadMethodType=bool;WriteMethodType=boolcosine demodActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=632FF2FE4CFF423FCCC4D7382564F49D;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3cosine modActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000100000002FFFFFFFFFFFFFFFF000000010000000100000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=954795EFF995556337A0537DC3578CEE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3data"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;data;DataType=1000800000000001003C005F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"get a sample"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"LED0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED0;0;ReadMethodType=bool;WriteMethodType=boolLED1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED1;0;ReadMethodType=bool;WriteMethodType=boolLED2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED2;0;ReadMethodType=bool;WriteMethodType=boolLED3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED3;0;ReadMethodType=bool;WriteMethodType=boolmyRIO-1900/fft,false;/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSMYRIO_1900FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGAnoise"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;noise;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"re part"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001003C005F03510014000000040001001400000004FFFFFFFFFFF800000001001400000004000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"Scan Clockresource=/Scan Clock;0;ReadMethodType=boolsine demodActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=63FBA03D9757A6641CDCB7F6A323FF1B;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3sine modActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000200000002FFFFFFFFFFFFFFFE000100020000000200000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=48969BE300290283E7197926ADC43E9F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3symbol map imActual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001000100000001FFFFFFFFFFFFFFFF0000000F000000000000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=91B461134396B6DDEB2AE66F3EDF6B42;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3symbol map reActual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=D228F0D1F55A88F304BA4469FF9262BC;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3System Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolt2t"ControlLogic=1;NumberOfElements=1025;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=10008000000000030040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF10000000000000001027072000040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000102706900001C4050000200000001106F757470757420636C7573746572203200000100020000000000000000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"transmit"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"tx"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;tx;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
						</Item>
						<Item Name="hilbert fir.vi" Type="VI" URL="../hilbert fir.vi">
							<Property Name="configString.guid" Type="Str">{01F7430B-AD45-4D0C-8F76-C39423D30D45}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=632FF2FE4CFF423FCCC4D7382564F49D;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{039DEE4F-9EB4-4A1B-AA18-794CC49D733B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{04B913BA-651C-499E-A97B-E76FB39CDF73}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED0;0;ReadMethodType=bool;WriteMethodType=bool{0860118B-E102-4DE5-9471-65AD3E4BC70C}Actual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001000100000001FFFFFFFFFFFFFFFF0000000F000000000000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=91B461134396B6DDEB2AE66F3EDF6B42;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{0932A6A4-EBEF-49B5-AB59-1927817363B3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{0B2B7C3C-C403-4F8E-A769-3576C89528A4}resource=/ConnectorB/AI3;0;ReadMethodType=U16{0BB8815F-E6B0-411E-917C-C3B7D40529C0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{0E040E19-2A47-48F9-942C-216156FAAAF1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{0E512C72-B652-4A3A-B94A-51CC73B1EF8B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{10B55CC8-0114-477B-896A-991B47CC69DC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{11D69F1F-CAC6-4114-9858-34E547CBBF54}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{145FD50E-8647-47D2-9548-A6156E231D7F}"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"{178771A0-4721-4B98-BD87-D7EC6651439C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{1A00D99A-8301-4531-9A6A-A011765EFDF4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{1A018761-4C37-4B30-B61A-7F10C647AD58}resource=/ConnectorC/AO0;0;WriteMethodType=I16{1B275618-2839-40CD-A80B-5A1E340A34CB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{20374256-31E0-4CBB-A580-BD7939E6A355}resource=/ConnectorA/AO1;0;WriteMethodType=U16{21C57214-E6F3-4EE0-BC14-6CC9DE461686}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{230B1547-F5B7-40AE-BBE8-724AC1C68E20}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio in to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"{271389E4-AA91-40C4-B6F9-97AB60A2D1BB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{2BDB3D3F-30A2-4BAE-ACD0-1FB5BF469D66}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{2C9A1DD1-9064-4432-9C68-5EC1CAEBCF7F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{2F7E7325-4811-4BCF-AFAB-14B495012E8D}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"{2FF878F2-5645-4280-91A1-63D44D19F4C8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{300D55B4-B684-4BEF-BC41-A072D691DB14}resource=/ConnectorC/AI1;0;ReadMethodType=I16{334E099B-DB80-41E0-8292-FC08099A3DDA}resource=/ConnectorB/AI2;0;ReadMethodType=U16{347AF70D-3A03-4934-BB58-73B4B0F6B812}resource=/ConnectorB/AO0;0;WriteMethodType=U16{34A0011F-129A-45FD-8ECF-36A3DE7967DE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{35C22414-DF0B-4977-BE86-40EED05F0C5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{3CAA8215-0EF4-457E-A872-847F80DC31AC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{4865AD91-F9D6-4822-8DFA-CD2D9FF9E0F8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{4967C673-96E5-40BB-BEB8-BF4DEA5D7C0A}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{4ACFB1BA-676C-42F1-A611-07364464C23C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{4C36EE6A-4D36-4D1D-9904-2311AD34CB8B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{4CEC7486-0092-4E94-98CC-DE5B86CF1787}resource=/AccelerationX;0;ReadMethodType=I16{4DE4640D-F61A-434C-9DE4-EAA43C9EE48E}resource=/Audio/AudioIn\/Right;0;ReadMethodType=I16{4E95A633-7817-486B-93F2-EEA0D3D3D5DD}resource=/ConnectorB/AI1;0;ReadMethodType=U16{54A02081-0793-4EE0-A2AD-72C223BA2BEC}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;tx;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"{56745F91-1D14-4E01-881E-307903C03585}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{5E1F5FD1-9B89-4D0B-A386-EE3543251EA2}resource=/Audio/AudioOut\/Right;0;WriteMethodType=I16{62CAA5CD-A7EA-45C6-9AD8-CAB049FDC887}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{663ECAB5-1AA5-4543-A431-8883158C6BAE}resource=/AccelerationY;0;ReadMethodType=I16{697E4BBF-7886-474B-9815-18426487A6FB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{6A28696E-52AD-4143-B804-DE3A0BE99585}"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"{722D0FC0-0F69-4F1A-8E33-2009FA57CD7B}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;noise;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"{74C52444-1A78-4F7C-B5C8-C4D47A2AE67E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{77F62C25-14FE-4E48-B358-FCD32C4D0A49}resource=/Scan Clock;0;ReadMethodType=bool{78263D0C-33C0-495C-8B35-D76979BE8099}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{789A546C-E9AA-47EC-AC86-00B8E131CE32}resource=/Audio/AudioOut\/Left;0;WriteMethodType=I16{78AB769B-E0B7-4EDD-933A-FA654344E455}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{7D5CC424-ADD5-4D58-9F71-BA362F954CF5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{81438788-ED8A-4E49-B19F-D6C8FD94A48D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{887FC9B2-98E1-41D9-A2CE-637A0DEEC017}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=63FBA03D9757A6641CDCB7F6A323FF1B;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{8D1C0817-43C4-4E4D-8E59-8BDDA74B5327}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{8F5A2F08-0AD9-41BF-AE07-4371F597420D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{9333A91B-FFDE-492C-B421-93B764D3D8C4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{93B5E602-39C0-4A36-B733-50F673D19CDE}resource=/ConnectorA/AI1;0;ReadMethodType=U16{9629675E-9E79-4D43-AB8A-6FD9C5A1F828}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{9E539A3D-2FBD-4539-81EC-4B4E02879793}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{9FD93ECA-3FA2-41CD-978C-3F9F3E264DF5}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000100000002FFFFFFFFFFFFFFFF000000010000000100000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=954795EFF995556337A0537DC3578CEE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{A1180E4E-BBE1-42BA-B4E5-0B564B482AFF}resource=/ConnectorA/AI3;0;ReadMethodType=U16{A13CD7F6-97CD-4B16-B9CA-3BD50830B9F6}NumberOfSyncRegistersForReadInProject=Auto;resource=/Button0;0;ReadMethodType=bool{A146BA90-EBEB-48DF-83D1-6E2C76B3E250}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{A23929CA-BA9A-4D3E-AD25-65669E06D595}resource=/AccelerationZ;0;ReadMethodType=I16{A7402F3E-00DA-4FBC-9639-388DEBE17FBF}Actual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=D228F0D1F55A88F304BA4469FF9262BC;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{A9C4C53E-9CB3-4144-842E-C8636437D5C0}resource=/ConnectorA/AO0;0;WriteMethodType=U16{A9C58653-2AD8-48DA-B3DD-C56EDF408DC7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{AF1BB0D1-C2B6-4D86-B9E0-1A458A1F9D36}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{B3CCBF6D-ADA6-4510-BF78-04C26BC3A870}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{B647945A-423A-4AA2-B382-377548BF1571}resource=/ConnectorB/AO1;0;WriteMethodType=U16{B8748563-F294-44C2-90F0-79E8EACE78A1}resource=/Audio/AudioIn\/Left;0;ReadMethodType=I16{BF715A94-672E-4E8F-93A3-D69EB95F606B}resource=/ConnectorB/AI0;0;ReadMethodType=U16{C3BF3AC0-5410-45B6-AFEE-EE56030C1833}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{C4BA6D8D-FE33-4F0D-A271-C2AB55CDE8FE}resource=/ConnectorA/AI2;0;ReadMethodType=U16{C5BDEB7E-8C38-4AB2-8233-E88631C7C1B8}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED3;0;ReadMethodType=bool;WriteMethodType=bool{CA6AF97D-670E-42DA-A6AD-30EA62A587C6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{CA74DB4E-4CB0-4A03-B358-1D14275F76DE}Multiplier=1,000000;Divisor=4,000000{CAE8F047-95C4-4A7F-B106-9A5634F11157}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"{CED204FD-F713-4350-83FA-5D61A1E25F09}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{D065B79A-411E-4A75-B35F-17B6A9F3E6DF}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;data;DataType=1000800000000001003C005F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{DC78610A-D963-473B-9334-3A4D47E7373D}resource=/ConnectorC/AO1;0;WriteMethodType=I16{DDA08452-6B87-4A1B-BE00-2DD6A8D9C208}"ControlLogic=1;NumberOfElements=1025;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=10008000000000030040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF10000000000000001027072000040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000102706900001C4050000200000001106F757470757420636C7573746572203200000100020000000000000000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{DEAF4226-D9BD-493C-9E9E-DA9CA65F5498}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{DFDF44BF-1CA8-40E2-B8A4-5C69469DABB4}resource=/ConnectorA/AI0;0;ReadMethodType=U16{E79DB0D8-7D8B-4040-8CCE-2267EF4737CB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{E896B469-6424-41C1-8B67-BE064C20FA25}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{EBF8F206-A3C3-436F-89C2-DD7F797B6BE0}resource=/ConnectorC/AI0;0;ReadMethodType=I16{EF09E35E-1ECA-4D98-BC9F-627727F1BBED}"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001003C005F03510014000000040001001400000004FFFFFFFFFFF800000001001400000004000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{F3918E3D-AFDC-4021-A260-EE2E5AAC3971}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{F5A6CBA1-B4D3-46E9-A638-7584FB90A7F3}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000200000002FFFFFFFFFFFFFFFE000100020000000200000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=48969BE300290283E7197926ADC43E9F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{F9C6FF77-A33A-48A5-BD93-234EEF59444B}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED1;0;ReadMethodType=bool;WriteMethodType=bool{FAC03533-23D6-491B-92F0-AAEE0A1B50A5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED2;0;ReadMethodType=bool;WriteMethodType=bool{FE0F6269-05F6-4509-B0D9-8A86B1BEF6D5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO3;0;ReadMethodType=bool;WriteMethodType=boolmyRIO-1900/fft,false;/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSMYRIO_1900FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
							<Property Name="configString.name" Type="Str">10MHzMultiplier=1,000000;Divisor=4,00000040 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16audio in to host"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio in to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"audio out to host"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"audio out"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"AudioIn/Leftresource=/Audio/AudioIn\/Left;0;ReadMethodType=I16AudioIn/Rightresource=/Audio/AudioIn\/Right;0;ReadMethodType=I16AudioOut/Leftresource=/Audio/AudioOut\/Left;0;WriteMethodType=I16AudioOut/Rightresource=/Audio/AudioOut\/Right;0;WriteMethodType=I16Button0NumberOfSyncRegistersForReadInProject=Auto;resource=/Button0;0;ReadMethodType=boolConnectorA/AI0resource=/ConnectorA/AI0;0;ReadMethodType=U16ConnectorA/AI1resource=/ConnectorA/AI1;0;ReadMethodType=U16ConnectorA/AI2resource=/ConnectorA/AI2;0;ReadMethodType=U16ConnectorA/AI3resource=/ConnectorA/AI3;0;ReadMethodType=U16ConnectorA/AO0resource=/ConnectorA/AO0;0;WriteMethodType=U16ConnectorA/AO1resource=/ConnectorA/AO1;0;WriteMethodType=U16ConnectorA/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO0;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO10;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO11;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO12;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO13;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO14;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8ConnectorA/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO1;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO2;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO3;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO4;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO5;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO6;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8ConnectorA/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO8;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO9;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/AI0resource=/ConnectorB/AI0;0;ReadMethodType=U16ConnectorB/AI1resource=/ConnectorB/AI1;0;ReadMethodType=U16ConnectorB/AI2resource=/ConnectorB/AI2;0;ReadMethodType=U16ConnectorB/AI3resource=/ConnectorB/AI3;0;ReadMethodType=U16ConnectorB/AO0resource=/ConnectorB/AO0;0;WriteMethodType=U16ConnectorB/AO1resource=/ConnectorB/AO1;0;WriteMethodType=U16ConnectorB/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO0;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO10;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO11;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO12;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO13;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO14;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8ConnectorB/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO1;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO2;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO3;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO4;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO5;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO6;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8ConnectorB/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO8;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO9;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/AI0resource=/ConnectorC/AI0;0;ReadMethodType=I16ConnectorC/AI1resource=/ConnectorC/AI1;0;ReadMethodType=I16ConnectorC/AO0resource=/ConnectorC/AO0;0;WriteMethodType=I16ConnectorC/AO1resource=/ConnectorC/AO1;0;WriteMethodType=I16ConnectorC/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO0;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO1;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO2;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO3;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO4;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO5;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO6;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8ConnectorC/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7;0;ReadMethodType=bool;WriteMethodType=boolcosine demodActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=632FF2FE4CFF423FCCC4D7382564F49D;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3cosine modActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000100000002FFFFFFFFFFFFFFFF000000010000000100000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=954795EFF995556337A0537DC3578CEE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3data"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;data;DataType=1000800000000001003C005F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"get a sample"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"LED0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED0;0;ReadMethodType=bool;WriteMethodType=boolLED1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED1;0;ReadMethodType=bool;WriteMethodType=boolLED2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED2;0;ReadMethodType=bool;WriteMethodType=boolLED3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED3;0;ReadMethodType=bool;WriteMethodType=boolmyRIO-1900/fft,false;/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSMYRIO_1900FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGAnoise"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;noise;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"re part"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001003C005F03510014000000040001001400000004FFFFFFFFFFF800000001001400000004000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"Scan Clockresource=/Scan Clock;0;ReadMethodType=boolsine demodActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=63FBA03D9757A6641CDCB7F6A323FF1B;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3sine modActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000200000002FFFFFFFFFFFFFFFE000100020000000200000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=48969BE300290283E7197926ADC43E9F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3symbol map imActual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001000100000001FFFFFFFFFFFFFFFF0000000F000000000000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=91B461134396B6DDEB2AE66F3EDF6B42;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3symbol map reActual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=D228F0D1F55A88F304BA4469FF9262BC;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3System Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolt2t"ControlLogic=1;NumberOfElements=1025;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=10008000000000030040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF10000000000000001027072000040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000102706900001C4050000200000001106F757470757420636C7573746572203200000100020000000000000000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"transmit"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"tx"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;tx;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
						</Item>
						<Item Name="counter.vi" Type="VI" URL="../counter.vi">
							<Property Name="configString.guid" Type="Str">{01F7430B-AD45-4D0C-8F76-C39423D30D45}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=632FF2FE4CFF423FCCC4D7382564F49D;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{039DEE4F-9EB4-4A1B-AA18-794CC49D733B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{04B913BA-651C-499E-A97B-E76FB39CDF73}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED0;0;ReadMethodType=bool;WriteMethodType=bool{0860118B-E102-4DE5-9471-65AD3E4BC70C}Actual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001000100000001FFFFFFFFFFFFFFFF0000000F000000000000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=91B461134396B6DDEB2AE66F3EDF6B42;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{0932A6A4-EBEF-49B5-AB59-1927817363B3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{0B2B7C3C-C403-4F8E-A769-3576C89528A4}resource=/ConnectorB/AI3;0;ReadMethodType=U16{0BB8815F-E6B0-411E-917C-C3B7D40529C0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{0E040E19-2A47-48F9-942C-216156FAAAF1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{0E512C72-B652-4A3A-B94A-51CC73B1EF8B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{10B55CC8-0114-477B-896A-991B47CC69DC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{11D69F1F-CAC6-4114-9858-34E547CBBF54}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{145FD50E-8647-47D2-9548-A6156E231D7F}"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"{178771A0-4721-4B98-BD87-D7EC6651439C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{1A00D99A-8301-4531-9A6A-A011765EFDF4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{1A018761-4C37-4B30-B61A-7F10C647AD58}resource=/ConnectorC/AO0;0;WriteMethodType=I16{1B275618-2839-40CD-A80B-5A1E340A34CB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{20374256-31E0-4CBB-A580-BD7939E6A355}resource=/ConnectorA/AO1;0;WriteMethodType=U16{21C57214-E6F3-4EE0-BC14-6CC9DE461686}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{230B1547-F5B7-40AE-BBE8-724AC1C68E20}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio in to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"{271389E4-AA91-40C4-B6F9-97AB60A2D1BB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{2BDB3D3F-30A2-4BAE-ACD0-1FB5BF469D66}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{2C9A1DD1-9064-4432-9C68-5EC1CAEBCF7F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{2F7E7325-4811-4BCF-AFAB-14B495012E8D}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"{2FF878F2-5645-4280-91A1-63D44D19F4C8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{300D55B4-B684-4BEF-BC41-A072D691DB14}resource=/ConnectorC/AI1;0;ReadMethodType=I16{334E099B-DB80-41E0-8292-FC08099A3DDA}resource=/ConnectorB/AI2;0;ReadMethodType=U16{347AF70D-3A03-4934-BB58-73B4B0F6B812}resource=/ConnectorB/AO0;0;WriteMethodType=U16{34A0011F-129A-45FD-8ECF-36A3DE7967DE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{35C22414-DF0B-4977-BE86-40EED05F0C5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{3CAA8215-0EF4-457E-A872-847F80DC31AC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{4865AD91-F9D6-4822-8DFA-CD2D9FF9E0F8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{4967C673-96E5-40BB-BEB8-BF4DEA5D7C0A}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{4ACFB1BA-676C-42F1-A611-07364464C23C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{4C36EE6A-4D36-4D1D-9904-2311AD34CB8B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{4CEC7486-0092-4E94-98CC-DE5B86CF1787}resource=/AccelerationX;0;ReadMethodType=I16{4DE4640D-F61A-434C-9DE4-EAA43C9EE48E}resource=/Audio/AudioIn\/Right;0;ReadMethodType=I16{4E95A633-7817-486B-93F2-EEA0D3D3D5DD}resource=/ConnectorB/AI1;0;ReadMethodType=U16{54A02081-0793-4EE0-A2AD-72C223BA2BEC}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;tx;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"{56745F91-1D14-4E01-881E-307903C03585}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{5E1F5FD1-9B89-4D0B-A386-EE3543251EA2}resource=/Audio/AudioOut\/Right;0;WriteMethodType=I16{62CAA5CD-A7EA-45C6-9AD8-CAB049FDC887}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{663ECAB5-1AA5-4543-A431-8883158C6BAE}resource=/AccelerationY;0;ReadMethodType=I16{697E4BBF-7886-474B-9815-18426487A6FB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{6A28696E-52AD-4143-B804-DE3A0BE99585}"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"{722D0FC0-0F69-4F1A-8E33-2009FA57CD7B}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;noise;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"{74C52444-1A78-4F7C-B5C8-C4D47A2AE67E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{77F62C25-14FE-4E48-B358-FCD32C4D0A49}resource=/Scan Clock;0;ReadMethodType=bool{78263D0C-33C0-495C-8B35-D76979BE8099}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{789A546C-E9AA-47EC-AC86-00B8E131CE32}resource=/Audio/AudioOut\/Left;0;WriteMethodType=I16{78AB769B-E0B7-4EDD-933A-FA654344E455}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{7D5CC424-ADD5-4D58-9F71-BA362F954CF5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{81438788-ED8A-4E49-B19F-D6C8FD94A48D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{887FC9B2-98E1-41D9-A2CE-637A0DEEC017}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=63FBA03D9757A6641CDCB7F6A323FF1B;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{8D1C0817-43C4-4E4D-8E59-8BDDA74B5327}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{8F5A2F08-0AD9-41BF-AE07-4371F597420D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{9333A91B-FFDE-492C-B421-93B764D3D8C4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{93B5E602-39C0-4A36-B733-50F673D19CDE}resource=/ConnectorA/AI1;0;ReadMethodType=U16{9629675E-9E79-4D43-AB8A-6FD9C5A1F828}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{9E539A3D-2FBD-4539-81EC-4B4E02879793}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{9FD93ECA-3FA2-41CD-978C-3F9F3E264DF5}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000100000002FFFFFFFFFFFFFFFF000000010000000100000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=954795EFF995556337A0537DC3578CEE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{A1180E4E-BBE1-42BA-B4E5-0B564B482AFF}resource=/ConnectorA/AI3;0;ReadMethodType=U16{A13CD7F6-97CD-4B16-B9CA-3BD50830B9F6}NumberOfSyncRegistersForReadInProject=Auto;resource=/Button0;0;ReadMethodType=bool{A146BA90-EBEB-48DF-83D1-6E2C76B3E250}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{A23929CA-BA9A-4D3E-AD25-65669E06D595}resource=/AccelerationZ;0;ReadMethodType=I16{A7402F3E-00DA-4FBC-9639-388DEBE17FBF}Actual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=D228F0D1F55A88F304BA4469FF9262BC;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{A9C4C53E-9CB3-4144-842E-C8636437D5C0}resource=/ConnectorA/AO0;0;WriteMethodType=U16{A9C58653-2AD8-48DA-B3DD-C56EDF408DC7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{AF1BB0D1-C2B6-4D86-B9E0-1A458A1F9D36}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{B3CCBF6D-ADA6-4510-BF78-04C26BC3A870}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{B647945A-423A-4AA2-B382-377548BF1571}resource=/ConnectorB/AO1;0;WriteMethodType=U16{B8748563-F294-44C2-90F0-79E8EACE78A1}resource=/Audio/AudioIn\/Left;0;ReadMethodType=I16{BF715A94-672E-4E8F-93A3-D69EB95F606B}resource=/ConnectorB/AI0;0;ReadMethodType=U16{C3BF3AC0-5410-45B6-AFEE-EE56030C1833}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{C4BA6D8D-FE33-4F0D-A271-C2AB55CDE8FE}resource=/ConnectorA/AI2;0;ReadMethodType=U16{C5BDEB7E-8C38-4AB2-8233-E88631C7C1B8}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED3;0;ReadMethodType=bool;WriteMethodType=bool{CA6AF97D-670E-42DA-A6AD-30EA62A587C6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{CA74DB4E-4CB0-4A03-B358-1D14275F76DE}Multiplier=1,000000;Divisor=4,000000{CAE8F047-95C4-4A7F-B106-9A5634F11157}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"{CED204FD-F713-4350-83FA-5D61A1E25F09}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{D065B79A-411E-4A75-B35F-17B6A9F3E6DF}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;data;DataType=1000800000000001003C005F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{DC78610A-D963-473B-9334-3A4D47E7373D}resource=/ConnectorC/AO1;0;WriteMethodType=I16{DDA08452-6B87-4A1B-BE00-2DD6A8D9C208}"ControlLogic=1;NumberOfElements=1025;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=10008000000000030040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF10000000000000001027072000040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000102706900001C4050000200000001106F757470757420636C7573746572203200000100020000000000000000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{DEAF4226-D9BD-493C-9E9E-DA9CA65F5498}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{DFDF44BF-1CA8-40E2-B8A4-5C69469DABB4}resource=/ConnectorA/AI0;0;ReadMethodType=U16{E79DB0D8-7D8B-4040-8CCE-2267EF4737CB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{E896B469-6424-41C1-8B67-BE064C20FA25}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{EBF8F206-A3C3-436F-89C2-DD7F797B6BE0}resource=/ConnectorC/AI0;0;ReadMethodType=I16{EF09E35E-1ECA-4D98-BC9F-627727F1BBED}"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001003C005F03510014000000040001001400000004FFFFFFFFFFF800000001001400000004000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{F3918E3D-AFDC-4021-A260-EE2E5AAC3971}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{F5A6CBA1-B4D3-46E9-A638-7584FB90A7F3}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000200000002FFFFFFFFFFFFFFFE000100020000000200000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=48969BE300290283E7197926ADC43E9F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{F9C6FF77-A33A-48A5-BD93-234EEF59444B}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED1;0;ReadMethodType=bool;WriteMethodType=bool{FAC03533-23D6-491B-92F0-AAEE0A1B50A5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED2;0;ReadMethodType=bool;WriteMethodType=bool{FE0F6269-05F6-4509-B0D9-8A86B1BEF6D5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO3;0;ReadMethodType=bool;WriteMethodType=boolmyRIO-1900/fft,false;/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSMYRIO_1900FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
							<Property Name="configString.name" Type="Str">10MHzMultiplier=1,000000;Divisor=4,00000040 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16audio in to host"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio in to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"audio out to host"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"audio out"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"AudioIn/Leftresource=/Audio/AudioIn\/Left;0;ReadMethodType=I16AudioIn/Rightresource=/Audio/AudioIn\/Right;0;ReadMethodType=I16AudioOut/Leftresource=/Audio/AudioOut\/Left;0;WriteMethodType=I16AudioOut/Rightresource=/Audio/AudioOut\/Right;0;WriteMethodType=I16Button0NumberOfSyncRegistersForReadInProject=Auto;resource=/Button0;0;ReadMethodType=boolConnectorA/AI0resource=/ConnectorA/AI0;0;ReadMethodType=U16ConnectorA/AI1resource=/ConnectorA/AI1;0;ReadMethodType=U16ConnectorA/AI2resource=/ConnectorA/AI2;0;ReadMethodType=U16ConnectorA/AI3resource=/ConnectorA/AI3;0;ReadMethodType=U16ConnectorA/AO0resource=/ConnectorA/AO0;0;WriteMethodType=U16ConnectorA/AO1resource=/ConnectorA/AO1;0;WriteMethodType=U16ConnectorA/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO0;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO10;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO11;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO12;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO13;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO14;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8ConnectorA/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO1;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO2;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO3;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO4;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO5;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO6;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8ConnectorA/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO8;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO9;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/AI0resource=/ConnectorB/AI0;0;ReadMethodType=U16ConnectorB/AI1resource=/ConnectorB/AI1;0;ReadMethodType=U16ConnectorB/AI2resource=/ConnectorB/AI2;0;ReadMethodType=U16ConnectorB/AI3resource=/ConnectorB/AI3;0;ReadMethodType=U16ConnectorB/AO0resource=/ConnectorB/AO0;0;WriteMethodType=U16ConnectorB/AO1resource=/ConnectorB/AO1;0;WriteMethodType=U16ConnectorB/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO0;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO10;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO11;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO12;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO13;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO14;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8ConnectorB/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO1;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO2;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO3;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO4;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO5;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO6;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8ConnectorB/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO8;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO9;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/AI0resource=/ConnectorC/AI0;0;ReadMethodType=I16ConnectorC/AI1resource=/ConnectorC/AI1;0;ReadMethodType=I16ConnectorC/AO0resource=/ConnectorC/AO0;0;WriteMethodType=I16ConnectorC/AO1resource=/ConnectorC/AO1;0;WriteMethodType=I16ConnectorC/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO0;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO1;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO2;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO3;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO4;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO5;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO6;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8ConnectorC/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7;0;ReadMethodType=bool;WriteMethodType=boolcosine demodActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=632FF2FE4CFF423FCCC4D7382564F49D;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3cosine modActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000100000002FFFFFFFFFFFFFFFF000000010000000100000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=954795EFF995556337A0537DC3578CEE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3data"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;data;DataType=1000800000000001003C005F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"get a sample"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"LED0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED0;0;ReadMethodType=bool;WriteMethodType=boolLED1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED1;0;ReadMethodType=bool;WriteMethodType=boolLED2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED2;0;ReadMethodType=bool;WriteMethodType=boolLED3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED3;0;ReadMethodType=bool;WriteMethodType=boolmyRIO-1900/fft,false;/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSMYRIO_1900FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGAnoise"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;noise;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"re part"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001003C005F03510014000000040001001400000004FFFFFFFFFFF800000001001400000004000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"Scan Clockresource=/Scan Clock;0;ReadMethodType=boolsine demodActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=63FBA03D9757A6641CDCB7F6A323FF1B;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3sine modActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000200000002FFFFFFFFFFFFFFFE000100020000000200000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=48969BE300290283E7197926ADC43E9F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3symbol map imActual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001000100000001FFFFFFFFFFFFFFFF0000000F000000000000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=91B461134396B6DDEB2AE66F3EDF6B42;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3symbol map reActual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=D228F0D1F55A88F304BA4469FF9262BC;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3System Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolt2t"ControlLogic=1;NumberOfElements=1025;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=10008000000000030040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF10000000000000001027072000040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000102706900001C4050000200000001106F757470757420636C7573746572203200000100020000000000000000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"transmit"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"tx"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;tx;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
						</Item>
					</Item>
					<Item Name="target.vi" Type="VI" URL="../target.vi">
						<Property Name="configString.guid" Type="Str">{01F7430B-AD45-4D0C-8F76-C39423D30D45}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=632FF2FE4CFF423FCCC4D7382564F49D;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{039DEE4F-9EB4-4A1B-AA18-794CC49D733B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{04B913BA-651C-499E-A97B-E76FB39CDF73}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED0;0;ReadMethodType=bool;WriteMethodType=bool{0860118B-E102-4DE5-9471-65AD3E4BC70C}Actual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001000100000001FFFFFFFFFFFFFFFF0000000F000000000000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=91B461134396B6DDEB2AE66F3EDF6B42;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{0932A6A4-EBEF-49B5-AB59-1927817363B3}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{0B2B7C3C-C403-4F8E-A769-3576C89528A4}resource=/ConnectorB/AI3;0;ReadMethodType=U16{0BB8815F-E6B0-411E-917C-C3B7D40529C0}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{0E040E19-2A47-48F9-942C-216156FAAAF1}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{0E512C72-B652-4A3A-B94A-51CC73B1EF8B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{10B55CC8-0114-477B-896A-991B47CC69DC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{11D69F1F-CAC6-4114-9858-34E547CBBF54}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{145FD50E-8647-47D2-9548-A6156E231D7F}"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"{178771A0-4721-4B98-BD87-D7EC6651439C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{1A00D99A-8301-4531-9A6A-A011765EFDF4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{1A018761-4C37-4B30-B61A-7F10C647AD58}resource=/ConnectorC/AO0;0;WriteMethodType=I16{1B275618-2839-40CD-A80B-5A1E340A34CB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{20374256-31E0-4CBB-A580-BD7939E6A355}resource=/ConnectorA/AO1;0;WriteMethodType=U16{21C57214-E6F3-4EE0-BC14-6CC9DE461686}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{230B1547-F5B7-40AE-BBE8-724AC1C68E20}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio in to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"{271389E4-AA91-40C4-B6F9-97AB60A2D1BB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{2BDB3D3F-30A2-4BAE-ACD0-1FB5BF469D66}resource=/System Reset;0;ReadMethodType=bool;WriteMethodType=bool{2C9A1DD1-9064-4432-9C68-5EC1CAEBCF7F}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{2F7E7325-4811-4BCF-AFAB-14B495012E8D}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"{2FF878F2-5645-4280-91A1-63D44D19F4C8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{300D55B4-B684-4BEF-BC41-A072D691DB14}resource=/ConnectorC/AI1;0;ReadMethodType=I16{334E099B-DB80-41E0-8292-FC08099A3DDA}resource=/ConnectorB/AI2;0;ReadMethodType=U16{347AF70D-3A03-4934-BB58-73B4B0F6B812}resource=/ConnectorB/AO0;0;WriteMethodType=U16{34A0011F-129A-45FD-8ECF-36A3DE7967DE}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO6;0;ReadMethodType=bool;WriteMethodType=bool{35C22414-DF0B-4977-BE86-40EED05F0C5B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO8;0;ReadMethodType=bool;WriteMethodType=bool{3CAA8215-0EF4-457E-A872-847F80DC31AC}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{4865AD91-F9D6-4822-8DFA-CD2D9FF9E0F8}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{4967C673-96E5-40BB-BEB8-BF4DEA5D7C0A}ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;{4ACFB1BA-676C-42F1-A611-07364464C23C}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{4C36EE6A-4D36-4D1D-9904-2311AD34CB8B}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{4CEC7486-0092-4E94-98CC-DE5B86CF1787}resource=/AccelerationX;0;ReadMethodType=I16{4DE4640D-F61A-434C-9DE4-EAA43C9EE48E}resource=/Audio/AudioIn\/Right;0;ReadMethodType=I16{4E95A633-7817-486B-93F2-EEA0D3D3D5DD}resource=/ConnectorB/AI1;0;ReadMethodType=U16{54A02081-0793-4EE0-A2AD-72C223BA2BEC}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;tx;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"{56745F91-1D14-4E01-881E-307903C03585}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{5E1F5FD1-9B89-4D0B-A386-EE3543251EA2}resource=/Audio/AudioOut\/Right;0;WriteMethodType=I16{62CAA5CD-A7EA-45C6-9AD8-CAB049FDC887}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{663ECAB5-1AA5-4543-A431-8883158C6BAE}resource=/AccelerationY;0;ReadMethodType=I16{697E4BBF-7886-474B-9815-18426487A6FB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{6A28696E-52AD-4143-B804-DE3A0BE99585}"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"{722D0FC0-0F69-4F1A-8E33-2009FA57CD7B}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;noise;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"{74C52444-1A78-4F7C-B5C8-C4D47A2AE67E}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO14;0;ReadMethodType=bool;WriteMethodType=bool{77F62C25-14FE-4E48-B358-FCD32C4D0A49}resource=/Scan Clock;0;ReadMethodType=bool{78263D0C-33C0-495C-8B35-D76979BE8099}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{789A546C-E9AA-47EC-AC86-00B8E131CE32}resource=/Audio/AudioOut\/Left;0;WriteMethodType=I16{78AB769B-E0B7-4EDD-933A-FA654344E455}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15;0;ReadMethodType=bool;WriteMethodType=bool{7D5CC424-ADD5-4D58-9F71-BA362F954CF5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{81438788-ED8A-4E49-B19F-D6C8FD94A48D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO3;0;ReadMethodType=bool;WriteMethodType=bool{887FC9B2-98E1-41D9-A2CE-637A0DEEC017}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=63FBA03D9757A6641CDCB7F6A323FF1B;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{8D1C0817-43C4-4E4D-8E59-8BDDA74B5327}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{8F5A2F08-0AD9-41BF-AE07-4371F597420D}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO9;0;ReadMethodType=bool;WriteMethodType=bool{9333A91B-FFDE-492C-B421-93B764D3D8C4}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO12;0;ReadMethodType=bool;WriteMethodType=bool{93B5E602-39C0-4A36-B733-50F673D19CDE}resource=/ConnectorA/AI1;0;ReadMethodType=U16{9629675E-9E79-4D43-AB8A-6FD9C5A1F828}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8{9E539A3D-2FBD-4539-81EC-4B4E02879793}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO0;0;ReadMethodType=bool;WriteMethodType=bool{9FD93ECA-3FA2-41CD-978C-3F9F3E264DF5}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000100000002FFFFFFFFFFFFFFFF000000010000000100000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=954795EFF995556337A0537DC3578CEE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{A1180E4E-BBE1-42BA-B4E5-0B564B482AFF}resource=/ConnectorA/AI3;0;ReadMethodType=U16{A13CD7F6-97CD-4B16-B9CA-3BD50830B9F6}NumberOfSyncRegistersForReadInProject=Auto;resource=/Button0;0;ReadMethodType=bool{A146BA90-EBEB-48DF-83D1-6E2C76B3E250}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO4;0;ReadMethodType=bool;WriteMethodType=bool{A23929CA-BA9A-4D3E-AD25-65669E06D595}resource=/AccelerationZ;0;ReadMethodType=I16{A7402F3E-00DA-4FBC-9639-388DEBE17FBF}Actual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=D228F0D1F55A88F304BA4469FF9262BC;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{A9C4C53E-9CB3-4144-842E-C8636437D5C0}resource=/ConnectorA/AO0;0;WriteMethodType=U16{A9C58653-2AD8-48DA-B3DD-C56EDF408DC7}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{AF1BB0D1-C2B6-4D86-B9E0-1A458A1F9D36}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8{B3CCBF6D-ADA6-4510-BF78-04C26BC3A870}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO5;0;ReadMethodType=bool;WriteMethodType=bool{B647945A-423A-4AA2-B382-377548BF1571}resource=/ConnectorB/AO1;0;WriteMethodType=U16{B8748563-F294-44C2-90F0-79E8EACE78A1}resource=/Audio/AudioIn\/Left;0;ReadMethodType=I16{BF715A94-672E-4E8F-93A3-D69EB95F606B}resource=/ConnectorB/AI0;0;ReadMethodType=U16{C3BF3AC0-5410-45B6-AFEE-EE56030C1833}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{C4BA6D8D-FE33-4F0D-A271-C2AB55CDE8FE}resource=/ConnectorA/AI2;0;ReadMethodType=U16{C5BDEB7E-8C38-4AB2-8233-E88631C7C1B8}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED3;0;ReadMethodType=bool;WriteMethodType=bool{CA6AF97D-670E-42DA-A6AD-30EA62A587C6}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO13;0;ReadMethodType=bool;WriteMethodType=bool{CA74DB4E-4CB0-4A03-B358-1D14275F76DE}Multiplier=1,000000;Divisor=4,000000{CAE8F047-95C4-4A7F-B106-9A5634F11157}"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"{CED204FD-F713-4350-83FA-5D61A1E25F09}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO11;0;ReadMethodType=bool;WriteMethodType=bool{D065B79A-411E-4A75-B35F-17B6A9F3E6DF}"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;data;DataType=1000800000000001003C005F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{DC78610A-D963-473B-9334-3A4D47E7373D}resource=/ConnectorC/AO1;0;WriteMethodType=I16{DDA08452-6B87-4A1B-BE00-2DD6A8D9C208}"ControlLogic=1;NumberOfElements=1025;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=10008000000000030040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF10000000000000001027072000040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000102706900001C4050000200000001106F757470757420636C7573746572203200000100020000000000000000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{DEAF4226-D9BD-493C-9E9E-DA9CA65F5498}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO1;0;ReadMethodType=bool;WriteMethodType=bool{DFDF44BF-1CA8-40E2-B8A4-5C69469DABB4}resource=/ConnectorA/AI0;0;ReadMethodType=U16{E79DB0D8-7D8B-4040-8CCE-2267EF4737CB}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO2;0;ReadMethodType=bool;WriteMethodType=bool{E896B469-6424-41C1-8B67-BE064C20FA25}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO10;0;ReadMethodType=bool;WriteMethodType=bool{EBF8F206-A3C3-436F-89C2-DD7F797B6BE0}resource=/ConnectorC/AI0;0;ReadMethodType=I16{EF09E35E-1ECA-4D98-BC9F-627727F1BBED}"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001003C005F03510014000000040001001400000004FFFFFFFFFFF800000001001400000004000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"{F3918E3D-AFDC-4021-A260-EE2E5AAC3971}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7;0;ReadMethodType=bool;WriteMethodType=bool{F5A6CBA1-B4D3-46E9-A638-7584FB90A7F3}Actual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000200000002FFFFFFFFFFFFFFFE000100020000000200000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=48969BE300290283E7197926ADC43E9F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3{F9C6FF77-A33A-48A5-BD93-234EEF59444B}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED1;0;ReadMethodType=bool;WriteMethodType=bool{FAC03533-23D6-491B-92F0-AAEE0A1B50A5}ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED2;0;ReadMethodType=bool;WriteMethodType=bool{FE0F6269-05F6-4509-B0D9-8A86B1BEF6D5}ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO3;0;ReadMethodType=bool;WriteMethodType=boolmyRIO-1900/fft,false;/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSMYRIO_1900FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGA</Property>
						<Property Name="configString.name" Type="Str">10MHzMultiplier=1,000000;Divisor=4,00000040 MHz Onboard ClockResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;AccelerationXresource=/AccelerationX;0;ReadMethodType=I16AccelerationYresource=/AccelerationY;0;ReadMethodType=I16AccelerationZresource=/AccelerationZ;0;ReadMethodType=I16audio in to host"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio in to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"audio out to host"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out to host;DataType=1000800000000001000940010002493800000100000000000000;DisableOnOverflowUnderflow=FALSE"audio out"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;audio out;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"AudioIn/Leftresource=/Audio/AudioIn\/Left;0;ReadMethodType=I16AudioIn/Rightresource=/Audio/AudioIn\/Right;0;ReadMethodType=I16AudioOut/Leftresource=/Audio/AudioOut\/Left;0;WriteMethodType=I16AudioOut/Rightresource=/Audio/AudioOut\/Right;0;WriteMethodType=I16Button0NumberOfSyncRegistersForReadInProject=Auto;resource=/Button0;0;ReadMethodType=boolConnectorA/AI0resource=/ConnectorA/AI0;0;ReadMethodType=U16ConnectorA/AI1resource=/ConnectorA/AI1;0;ReadMethodType=U16ConnectorA/AI2resource=/ConnectorA/AI2;0;ReadMethodType=U16ConnectorA/AI3resource=/ConnectorA/AI3;0;ReadMethodType=U16ConnectorA/AO0resource=/ConnectorA/AO0;0;WriteMethodType=U16ConnectorA/AO1resource=/ConnectorA/AO1;0;WriteMethodType=U16ConnectorA/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO0;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO10;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO11;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO12;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO13;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO14;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8ConnectorA/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO15;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO1;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO2;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO3;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO4;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO5;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO6;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8ConnectorA/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO7;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO8;0;ReadMethodType=bool;WriteMethodType=boolConnectorA/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorA/DIO9;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/AI0resource=/ConnectorB/AI0;0;ReadMethodType=U16ConnectorB/AI1resource=/ConnectorB/AI1;0;ReadMethodType=U16ConnectorB/AI2resource=/ConnectorB/AI2;0;ReadMethodType=U16ConnectorB/AI3resource=/ConnectorB/AI3;0;ReadMethodType=U16ConnectorB/AO0resource=/ConnectorB/AO0;0;WriteMethodType=U16ConnectorB/AO1resource=/ConnectorB/AO1;0;WriteMethodType=U16ConnectorB/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO0;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO10ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO10;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO11ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO11;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO12ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO12;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO13ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO13;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO14ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO14;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO15:8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15:8;0;ReadMethodType=u8;WriteMethodType=u8ConnectorB/DIO15ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO15;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO1;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO2;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO3;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO4;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO5;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO6;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8ConnectorB/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO7;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO8ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO8;0;ReadMethodType=bool;WriteMethodType=boolConnectorB/DIO9ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorB/DIO9;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/AI0resource=/ConnectorC/AI0;0;ReadMethodType=I16ConnectorC/AI1resource=/ConnectorC/AI1;0;ReadMethodType=I16ConnectorC/AO0resource=/ConnectorC/AO0;0;WriteMethodType=I16ConnectorC/AO1resource=/ConnectorC/AO1;0;WriteMethodType=I16ConnectorC/DIO0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO0;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO1ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO1;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO2ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO2;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO3ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO3;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO4ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO4;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO5ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO5;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO6ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO6;0;ReadMethodType=bool;WriteMethodType=boolConnectorC/DIO7:0ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7:0;0;ReadMethodType=u8;WriteMethodType=u8ConnectorC/DIO7ArbitrationForOutputData=NeverArbitrate;ArbitrationForOutputEnable=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForOutputEnable=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/ConnectorC/DIO7;0;ReadMethodType=bool;WriteMethodType=boolcosine demodActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=632FF2FE4CFF423FCCC4D7382564F49D;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3cosine modActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000100000002FFFFFFFFFFFFFFFF000000010000000100000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=954795EFF995556337A0537DC3578CEE;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3data"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;data;DataType=1000800000000001003C005F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"get a sample"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"LED0ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED0;0;ReadMethodType=bool;WriteMethodType=boolLED1ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED1;0;ReadMethodType=bool;WriteMethodType=boolLED2ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED2;0;ReadMethodType=bool;WriteMethodType=boolLED3ArbitrationForOutputData=NeverArbitrate;NumberOfSyncRegistersForOutputData=1;NumberOfSyncRegistersForReadInProject=Auto;resource=/LED3;0;ReadMethodType=bool;WriteMethodType=boolmyRIO-1900/fft,false;/Clk40/falsefalseFPGA_EXECUTION_MODEFPGA_TARGETFPGA_TARGET_CLASSMYRIO_1900FPGA_TARGET_FAMILYZYNQTARGET_TYPEFPGAnoise"ControlLogic=0;NumberOfElements=1029;Type=1;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;noise;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"re part"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001003C005F03510014000000040001001400000004FFFFFFFFFFF800000001001400000004000000000007FFFF00000001FFFFFFF1000000000000000100010000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"Scan Clockresource=/Scan Clock;0;ReadMethodType=boolsine demodActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=63FBA03D9757A6641CDCB7F6A323FF1B;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3sine modActual Number of Elements=4;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510002000000020001000200000002FFFFFFFFFFFFFFFE000100020000000200000000000000010000000100000001000000000000000100010000000000000000000000000000;InitDataHash=48969BE300290283E7197926ADC43E9F;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3symbol map imActual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001000100000001FFFFFFFFFFFFFFFF0000000F000000000000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=91B461134396B6DDEB2AE66F3EDF6B42;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=50;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3symbol map reActual Number of Elements=64;ReadArbs=1;WriteArbs=1;Implementation=2;DataType=1000800000000001003C005F03510010000000010001001000000001FFFFFFFFFFFF800000010010000000010000000000007FFF00000001FFFFFFF2000000000000000100010000000000000000000000000000;InitDataHash=D228F0D1F55A88F304BA4469FF9262BC;DRAM Selection=;DRAM Max Outstanding Requests=64;DRAM Include Byte Enables=FALSE;DRAM Grant Time=0;Interface Configuration=Read A-Write B;Multiple Clock Domains=FALSE;Memory Latency=3System Resetresource=/System Reset;0;ReadMethodType=bool;WriteMethodType=boolt2t"ControlLogic=1;NumberOfElements=1025;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=10008000000000030040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF10000000000000001027072000040405F03510014000000040001000100000004FFFFFFFFFFFFFFFF0000001300000003000000000007FFFF00000001FFFFFFF1000000000000000102706900001C4050000200000001106F757470757420636C7573746572203200000100020000000000000000000000000000000000000000;DisableOnOverflowUnderflow=FALSE"transmit"ControlLogic=1;NumberOfElements=513;Type=0;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;;DataType=1000800000000001000A402104426F6F6C00000100000000000000;DisableOnOverflowUnderflow=FALSE"tx"ControlLogic=0;NumberOfElements=1023;Type=2;ReadArbs=Arbitrate if Multiple Requestors Only;ElementsPerRead=1;WriteArbs=Arbitrate if Multiple Requestors Only;ElementsPerWrite=1;Implementation=2;tx;DataType=100080000000000100094002000349313600010000000000000000;DisableOnOverflowUnderflow=FALSE"</Property>
						<Property Name="NI.LV.FPGA.InterfaceBitfile" Type="Str">C:\Users\beck.to.beck\Documents\LabVIEW Data\SDR\FPGA Bitfiles\SDR_FPGATarget_target3_9GDvrDSaf+o.lvbitx</Property>
					</Item>
				</Item>
				<Item Name="40 MHz Onboard Clock" Type="FPGA Base Clock">
					<Property Name="FPGA.PersistentID" Type="Str">{4967C673-96E5-40BB-BEB8-BF4DEA5D7C0A}</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig" Type="Str">ResourceName=40 MHz Onboard Clock;TopSignalConnect=Clk40;ClockSignalName=Clk40;MinFreq=40000000,000000;MaxFreq=40000000,000000;VariableFreq=0;NomFreq=40000000,000000;PeakPeriodJitter=250,000000;MinDutyCycle=50,000000;MaxDutyCycle=50,000000;Accuracy=100,000000;RunTime=0;SpreadSpectrum=0;GenericDataHash=D41D8CD98F00B204E9800998ECF8427E;</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.Accuracy" Type="Dbl">100</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ClockSignalName" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MaxFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinDutyCycle" Type="Dbl">50</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.MinFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.NominalFrequency" Type="Dbl">40000000</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.PeakPeriodJitter" Type="Dbl">250</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.ResourceName" Type="Str">40 MHz Onboard Clock</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.SupportAndRequireRuntimeEnableDisable" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.TopSignalConnect" Type="Str">Clk40</Property>
					<Property Name="NI.LV.FPGA.BaseTSConfig.VariableFrequency" Type="Bool">false</Property>
					<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
					<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
					<Item Name="10MHz" Type="FPGA Derived Clock">
						<Property Name="FPGA.PersistentID" Type="Str">{CA74DB4E-4CB0-4A03-B358-1D14275F76DE}</Property>
						<Property Name="NI.LV.FPGA.DerivedConfig" Type="Str">Multiplier=1,000000;Divisor=4,000000</Property>
						<Property Name="NI.LV.FPGA.DerivedConfig.Divisor" Type="Dbl">4</Property>
						<Property Name="NI.LV.FPGA.DerivedConfig.FromExternalClock" Type="Bool">false</Property>
						<Property Name="NI.LV.FPGA.DerivedConfig.Multiplier" Type="Dbl">1</Property>
						<Property Name="NI.LV.FPGA.DerivedConfig.ParentFrequencyInHertz" Type="Dbl">40000000</Property>
						<Property Name="NI.LV.FPGA.Valid" Type="Bool">true</Property>
						<Property Name="NI.LV.FPGA.Version" Type="Int">5</Property>
					</Item>
				</Item>
				<Item Name="IP Builder" Type="IP Builder Target">
					<Item Name="Dependencies" Type="Dependencies"/>
					<Item Name="Build Specifications" Type="Build"/>
				</Item>
				<Item Name="Dependencies" Type="Dependencies">
					<Item Name="vi.lib" Type="Folder">
						<Item Name="FxpSim.dll" Type="Document" URL="/&lt;vilib&gt;/rvi/FXPMathLib/sim/FxpSim.dll"/>
						<Item Name="LVFixedPointQuantizationPolicyTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/fxp/LVFixedPointQuantizationPolicyTypeDef.ctl"/>
						<Item Name="LVFixedPointOverflowPolicyTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/fxp/LVFixedPointOverflowPolicyTypeDef.ctl"/>
						<Item Name="lvSimController.dll" Type="Document" URL="/&lt;vilib&gt;/rvi/Simulation/lvSimController.dll"/>
					</Item>
					<Item Name="states.ctl" Type="VI" URL="../states.ctl"/>
				</Item>
				<Item Name="Build Specifications" Type="Build">
					<Item Name="target" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">target</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_target_j7D82aTO1lE.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_target_j7D82aTO1lE.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_target_j7D82aTO1lE.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="target2" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">target2</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_target2_mKIg7RTelVg.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_target2_mKIg7RTelVg.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_target2_mKIg7RTelVg.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="target3" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">target3</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_target3_JDPqIcAUdZw.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_target3_JDPqIcAUdZw.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_target3_JDPqIcAUdZw.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="target3_target" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">target3_target</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_target3target_zzxuosyY5B0.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_target3target_zzxuosyY5B0.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_target3target_zzxuosyY5B0.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="target3_target_dc" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">target3_target_dc</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_target3targetdc_TYs-Y6t+4SA.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_target3targetdc_TYs-Y6t+4SA.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_target3targetdc_TYs-Y6t+4SA.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="testing testing" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">testing testing</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_testingtesting_3hX3ZGmM8sU.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_testingtesting_3hX3ZGmM8sU.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_testingtesting_3hX3ZGmM8sU.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="16qamtest" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">16qamtest</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_16qamtest_ve9s+XlVF5s.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_16qamtest_ve9s+XlVF5s.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_16qamtest_ve9s+XlVF5s.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="testing testing testing" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">testing testing testing</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_testingtestingte_KXBQRHDsG8g.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_testingtestingte_KXBQRHDsG8g.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_testingtestingte_KXBQRHDsG8g.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="testing testing testing testing" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">testing testing testing testing</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_testingtestingte_5rV7bEr7Ovs.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_testingtestingte_5rV7bEr7Ovs.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_testingtestingte_5rV7bEr7Ovs.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="target3_target2" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">target3_target2</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_target3target2_fO4jiYwpC34.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_target3target2_fO4jiYwpC34.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_target3target2_fO4jiYwpC34.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="target3_target3" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">target3_target3</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_target3target3_WKzttZzqV5c.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_target3target3_WKzttZzqV5c.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_target3target3_WKzttZzqV5c.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="target3_target4" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">target3_target4</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_target3target4_2054-RmNIJY.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_target3target4_2054-RmNIJY.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_target3target4_2054-RmNIJY.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="target3_target5" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">target3_target5</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_target3target5_NZVqgPju2Dk.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_target3target5_NZVqgPju2Dk.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_target3target5_NZVqgPju2Dk.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="analog teste" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">analog teste</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_analogteste_u0wdVDyYGhw.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_analogteste_u0wdVDyYGhw.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_analogteste_u0wdVDyYGhw.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="analog test 1" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">analog test 1</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_analogtest1_YVCFiwSQbXQ.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_analogtest1_YVCFiwSQbXQ.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_analogtest1_YVCFiwSQbXQ.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="analog test 2" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">analog test 2</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_analogtest2_ifRttZrBdtw.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_analogtest2_ifRttZrBdtw.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_analogtest2_ifRttZrBdtw.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="audio test" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">audio test</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_audiotest_iOeWJJ1re5U.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_audiotest_iOeWJJ1re5U.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_audiotest_iOeWJJ1re5U.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="audio test 2" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">audio test 2</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_audiotest2_Qd6AGFW0sck.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_audiotest2_Qd6AGFW0sck.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_audiotest2_Qd6AGFW0sck.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="white noise" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">white noise</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_whitenoise_9NgcB7U9+Jc.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="audio test_2" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">audio test_2</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_audiotest2_lL5ijq7LZms.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_audiotest2_lL5ijq7LZms.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_audiotest2_lL5ijq7LZms.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="audio test2" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">audio test2</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_audiotest2_dW-o77QZw7k.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_audiotest2_dW-o77QZw7k.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_audiotest2_dW-o77QZw7k.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="target_2" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">target_2</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_target2_gqCJvSn7680.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_target2_gqCJvSn7680.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_target2_gqCJvSn7680.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="target2_2" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">target2_2</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_target22_SqNmUnf28BI.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_target22_SqNmUnf28BI.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_target22_SqNmUnf28BI.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref"></Property>
					</Item>
					<Item Name="target_3" Type="{F4C5E96F-7410-48A5-BB87-3559BC9B167F}">
						<Property Name="AllowEnableRemoval" Type="Bool">false</Property>
						<Property Name="BuildSpecDecription" Type="Str"></Property>
						<Property Name="BuildSpecName" Type="Str">target_3</Property>
						<Property Name="Comp.BitfileName" Type="Str">SDR_FPGATarget_target3_9GDvrDSaf+o.lvbitx</Property>
						<Property Name="Comp.CustomXilinxParameters" Type="Str"></Property>
						<Property Name="Comp.MaxFanout" Type="Int">-1</Property>
						<Property Name="Comp.RandomSeed" Type="Bool">false</Property>
						<Property Name="Comp.Version.Build" Type="Int">0</Property>
						<Property Name="Comp.Version.Fix" Type="Int">0</Property>
						<Property Name="Comp.Version.Major" Type="Int">1</Property>
						<Property Name="Comp.Version.Minor" Type="Int">0</Property>
						<Property Name="Comp.VersionAutoIncrement" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.EnableMultiThreading" Type="Bool">true</Property>
						<Property Name="Comp.Vivado.OptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PhysOptDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.PlaceDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RouteDirective" Type="Str"></Property>
						<Property Name="Comp.Vivado.RunPowerOpt" Type="Bool">false</Property>
						<Property Name="Comp.Vivado.Strategy" Type="Str">Default</Property>
						<Property Name="Comp.Xilinx.DesignStrategy" Type="Str">balanced</Property>
						<Property Name="Comp.Xilinx.MapEffort" Type="Str">default(noTiming)</Property>
						<Property Name="Comp.Xilinx.ParEffort" Type="Str">standard</Property>
						<Property Name="Comp.Xilinx.SynthEffort" Type="Str">normal</Property>
						<Property Name="Comp.Xilinx.SynthGoal" Type="Str">speed</Property>
						<Property Name="Comp.Xilinx.UseRecommended" Type="Bool">true</Property>
						<Property Name="DefaultBuildSpec" Type="Bool">true</Property>
						<Property Name="DestinationDirectory" Type="Path">FPGA Bitfiles</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/FPGA Bitfiles/SDR_FPGATarget_target3_9GDvrDSaf+o.lvbitx</Property>
						<Property Name="NI.LV.FPGA.LastCompiledBitfilePathRelativeToProject" Type="Path">FPGA Bitfiles/SDR_FPGATarget_target3_9GDvrDSaf+o.lvbitx</Property>
						<Property Name="ProjectPath" Type="Path">/C/Users/beck.to.beck/Documents/LabVIEW Data/SDR/SDR.lvproj</Property>
						<Property Name="RelativePath" Type="Bool">true</Property>
						<Property Name="RunWhenLoaded" Type="Bool">false</Property>
						<Property Name="SupportDownload" Type="Bool">true</Property>
						<Property Name="SupportResourceEstimation" Type="Bool">false</Property>
						<Property Name="TargetName" Type="Str">FPGA Target</Property>
						<Property Name="TopLevelVI" Type="Ref">/BeckToMyRio/Chassis/FPGA Target/project/target.vi</Property>
					</Item>
				</Item>
			</Item>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="NI_AALPro.lvlib" Type="Library" URL="/&lt;vilib&gt;/Analysis/NI_AALPro.lvlib"/>
				<Item Name="NI_PtbyPt.lvlib" Type="Library" URL="/&lt;vilib&gt;/ptbypt/NI_PtbyPt.lvlib"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
			</Item>
			<Item Name="lvanlys.dll" Type="Document" URL="/&lt;resource&gt;/lvanlys.dll"/>
			<Item Name="NiFpgaLv.dll" Type="Document" URL="NiFpgaLv.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
