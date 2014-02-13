<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="11008008">
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
		<Item Name="LVH-Adept.lvlib" Type="Library" URL="../LVH-Adept.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="depp.dll" Type="Document" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Private/Resources/depp.dll"/>
				<Item Name="djtg.dll" Type="Document" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Private/Resources/djtg.dll"/>
				<Item Name="dmgr.dll" Type="Document" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Private/Resources/dmgr.dll"/>
				<Item Name="dpcutil.dll" Type="Document" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Private/Resources/dpcutil.dll"/>
				<Item Name="dstm.dll" Type="Document" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Private/Resources/dstm.dll"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Version To Dotted String.vi" Type="VI" URL="/&lt;vilib&gt;/_xctls/Version To Dotted String.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="XControlSupport.lvlib" Type="Library" URL="/&lt;vilib&gt;/_xctls/XControlSupport.lvlib"/>
			</Item>
			<Item Name="Find Devices.vi" Type="VI" URL="../Public/Find Devices.vi"/>
			<Item Name="LVH-Adept Helper.dll" Type="Document" URL="../Private/Resources/LVH-Adept Helper/LVH-Adept Helper/Debug/LVH-Adept Helper.dll"/>
			<Item Name="lvimptsl.dll" Type="Document" URL="../../../../../../../../Program Files (x86)/National Instruments/LabVIEW 2011/resource/lvimptsl.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
