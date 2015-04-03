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
		<Item Name="Help" Type="Folder">
			<Item Name="Forums.vi" Type="VI" URL="/&lt;helpdir&gt;/MakerHub/Adept/Forums.vi"/>
			<Item Name="Getting Started.vi" Type="VI" URL="/&lt;helpdir&gt;/MakerHub/Adept/Getting Started.vi"/>
			<Item Name="GitHub.vi" Type="VI" URL="/&lt;helpdir&gt;/MakerHub/Adept/GitHub.vi"/>
		</Item>
		<Item Name="Test Apps" Type="Folder">
			<Item Name="DEPP" Type="Folder">
				<Item Name="DEPP Set Test.vi" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Test Apps/DEPP/DEPP Set Test.vi"/>
				<Item Name="DEPP Stream.vi" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Test Apps/DEPP/DEPP Stream.vi"/>
				<Item Name="DEPP Write Read.vi" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Test Apps/DEPP/DEPP Write Read.vi"/>
				<Item Name="Enable Disable.vi" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Test Apps/DEPP/Enable Disable.vi"/>
			</Item>
			<Item Name="DJTG" Type="Folder">
				<Item Name="Get JTAG ID Code.vi" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Test Apps/DJTG/Get JTAG ID Code.vi"/>
				<Item Name="Get Port Properties.vi" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Test Apps/DJTG/Get Port Properties.vi"/>
				<Item Name="Get Set Speed.vi" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Test Apps/DJTG/Get Set Speed.vi"/>
				<Item Name="JTAG Test App.vi" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Test Apps/DJTG/JTAG Test App.vi"/>
				<Item Name="Reset Device.vi" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Test Apps/DJTG/Reset Device.vi"/>
			</Item>
			<Item Name="DMGR" Type="Folder">
				<Item Name="Get Dev Info.vi" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Test Apps/DMGR/Get Dev Info.vi"/>
				<Item Name="Open Close Device.vi" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Test Apps/DMGR/Open Close Device.vi"/>
			</Item>
			<Item Name="DPCUTIL" Type="Folder">
				<Item Name="Put Get.vi" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Test Apps/DPCUTIL/Put Get.vi"/>
			</Item>
			<Item Name="DSTM" Type="Folder">
				<Item Name="Open Close.vi" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Test Apps/DSTM/Open Close.vi"/>
			</Item>
			<Item Name="Demo.vi" Type="VI" URL="/&lt;vilib&gt;/LabVIEW Hacker/Adept/Test Apps/Demo.vi"/>
		</Item>
		<Item Name="Check Dependencies.vi" Type="VI" URL="../../../../project/LabVIEW Hacker/Adept/Check Dependencies.vi"/>
		<Item Name="LVH-Adept.lvlib" Type="Library" URL="../LVH-Adept.lvlib"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Check if File or Folder Exists.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/libraryn.llb/Check if File or Folder Exists.vi"/>
				<Item Name="Close Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Close Registry Key.vi"/>
				<Item Name="Enum Registry Keys.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Enum Registry Keys.vi"/>
				<Item Name="Error Cluster From Error Code.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Error Cluster From Error Code.vi"/>
				<Item Name="ex_CorrectErrorChain.vi" Type="VI" URL="/&lt;vilib&gt;/express/express shared/ex_CorrectErrorChain.vi"/>
				<Item Name="NI_FileType.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/lvfile.llb/NI_FileType.lvlib"/>
				<Item Name="NI_PackedLibraryUtility.lvlib" Type="Library" URL="/&lt;vilib&gt;/Utility/LVLibp/NI_PackedLibraryUtility.lvlib"/>
				<Item Name="Open Registry Key.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Open Registry Key.vi"/>
				<Item Name="Query Registry Key Info.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Query Registry Key Info.vi"/>
				<Item Name="Registry Handle Master.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry Handle Master.vi"/>
				<Item Name="Registry refnum.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry refnum.ctl"/>
				<Item Name="Registry RtKey.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry RtKey.ctl"/>
				<Item Name="Registry SAM.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry SAM.ctl"/>
				<Item Name="Registry View.ctl" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry View.ctl"/>
				<Item Name="Registry WinErr-LVErr.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/Registry WinErr-LVErr.vi"/>
				<Item Name="STR_ASCII-Unicode.vi" Type="VI" URL="/&lt;vilib&gt;/registry/registry.llb/STR_ASCII-Unicode.vi"/>
				<Item Name="subFile Dialog.vi" Type="VI" URL="/&lt;vilib&gt;/express/express input/FileDialogBlock.llb/subFile Dialog.vi"/>
				<Item Name="System Exec.vi" Type="VI" URL="/&lt;vilib&gt;/Platform/system.llb/System Exec.vi"/>
				<Item Name="Trim Whitespace.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Trim Whitespace.vi"/>
				<Item Name="Version To Dotted String.vi" Type="VI" URL="/&lt;vilib&gt;/_xctls/Version To Dotted String.vi"/>
				<Item Name="whitespace.ctl" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/whitespace.ctl"/>
				<Item Name="XControlSupport.lvlib" Type="Library" URL="/&lt;vilib&gt;/_xctls/XControlSupport.lvlib"/>
			</Item>
			<Item Name="Advapi32.dll" Type="Document" URL="Advapi32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="depp.dll" Type="Document" URL="../Private/Resources/depp.dll"/>
			<Item Name="djtg.dll" Type="Document" URL="../Private/Resources/djtg.dll"/>
			<Item Name="dmgr.dll" Type="Document" URL="../Private/Resources/dmgr.dll"/>
			<Item Name="dpcutil.dll" Type="Document" URL="../Private/Resources/dpcutil.dll"/>
			<Item Name="dstm.dll" Type="Document" URL="../Private/Resources/dstm.dll"/>
			<Item Name="Find Devices.vi" Type="VI" URL="../Public/Find Devices.vi"/>
			<Item Name="kernel32.dll" Type="Document" URL="kernel32.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
			<Item Name="LVH-Adept Helper.dll" Type="Document" URL="../Private/Resources/LVH-Adept Helper.dll"/>
			<Item Name="lvimptsl.dll" Type="Document" URL="../../../../../../../../Program Files (x86)/National Instruments/LabVIEW 2011/resource/lvimptsl.dll"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
