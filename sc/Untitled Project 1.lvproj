<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="14008000">
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
		<Item Name="smith chart" Type="Folder">
			<Item Name="main" Type="Folder">
				<Item Name="controlSC.ctl" Type="VI" URL="../main/controlSC.ctl"/>
				<Item Name="dataSC.ctl" Type="VI" URL="../main/dataSC.ctl"/>
				<Item Name="graph configuration.vi" Type="VI" URL="../main/graph configuration.vi"/>
				<Item Name="mainSC.vi" Type="VI" URL="../main/mainSC.vi"/>
				<Item Name="R and X plane.vi" Type="VI" URL="../main/R and X plane.vi"/>
			</Item>
			<Item Name="circle generator.vi" Type="VI" URL="../circle generator.vi"/>
			<Item Name="start angle vi.vi" Type="VI" URL="../start angle vi.vi"/>
			<Item Name="Z to xyr.vi" Type="VI" URL="../Z to xyr.vi"/>
		</Item>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="LVMajorAndMinorColorsTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVMajorAndMinorColorsTypeDef.ctl"/>
				<Item Name="LVRectTypeDef.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/miscctls.llb/LVRectTypeDef.ctl"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
