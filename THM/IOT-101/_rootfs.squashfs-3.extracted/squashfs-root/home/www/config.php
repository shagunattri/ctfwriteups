<?php
	$config	=	Array(
			'TWOGHZ'      =>      array('status'  =>      true),
			'MODE11G'      =>      array('status'  =>      true,
				'SUPERG'       =>      array('status'  =>      false)),
			'FIVEGHZ'      =>      array('status'  =>      false),
			'DUAL_CONCURRENT'      =>      array('status'  =>      false),
			'MODE11N'      =>      array('status'  =>      true),
			'WMM'      =>      array('status'  =>      true,
				'WMM_PS'       =>      array('status'  =>      true)),
			'ROGUEAP'      =>      array('status'  =>      true),
			'MBSSID'      =>      array('status'  =>      true,
				'VLAN'       =>      array('status'  =>      true)),
			'NO_OF_VAPS'      =>      array('count'  =>      8),
			'MACACL'      =>      array('status'  =>	true),
			'CLIENT_SEPARATION'      =>      array('status'  =>        true),
			'AP'      =>      array('status'  =>        true),
			'CLIENT'      =>      array('status'  =>        true,
				'CLIENT_BRIDGE'      =>      array('status'  =>        true)),
			'P2P'      =>      array('status'  =>        true),
			'P2P_AP'      =>      array('status'  =>        true),
			'P2MP'      =>      array('status'  =>        true),
			'REPEATER'      =>      array('status'  =>        true),
			'NO_OF_WDS_VAPS'      =>      array('count'  =>        4),
			'NO_OF_RADIOS'      =>      array('status'  =>        1),
			'MAXSTATION_FEATURE'      =>      array('status'  =>      true),
			'MAXSTATION'      =>      array('count' =>      64),
			'AUTH_SETTINGS'      =>      array('status' =>      true),
			'TRAP_PORT_CONFIG'      =>      array('status' =>      true),
			'MANAGERIP_CONFIG'      =>      array('status' =>      false),
			'ETHERNET_CONFIG'      =>      array('status'  =>      false),
			'DHCPSERVER'      =>      array('status'  =>        true),
			'DHCPCLIENT'      =>      array('status'  =>        true),
			'SNMP'      =>      array('status'  =>        true),
			'CLI'      =>      array('status'  =>        true),
			'TR69'      =>      array('status'  =>      false),
			'APMANAGER'      =>      array('status'  =>      false),
			'HTTPREDIRECT'      =>      array('status'  =>        true),
			'SYSLOGD'      =>      array('status'  =>        true),
			'STP'      =>      array('status'  =>        true),
			'SSH'      =>      array('status'  =>        true),
			'TELNET'      =>      array('status'  =>        true),
			'NTP'      =>      array('status'  =>        true),
			'NETWORK_INTEGRALITY'      =>      array('status'  =>        true),
			'PACKET_CAPTURE'      =>      array('status'  =>        true),
			'ANTENNA_SELECTION'      =>      array('status'  =>        true),
			'DHCP_SNOOPING'      =>      array('status'  =>        false),
			'IGMP_SNOOPING'      =>      array('status'  =>        false),
			'ARIES'      =>      array('status'  =>        false),
			'SCH_WIRELESS_ON_OFF'      =>      array('status'  =>        true),
			'PASSPHRASE_CHAR'      =>      array('status'  =>        true),
			'WN604'      =>      array('status'  =>        false),
			'WPS'      =>      array('status'  =>        false),
			'EXT_CHAN'      =>      array('status'  =>        true),
			'AWSDAP350'      =>      array('status'  =>        false),
			'INDUS'      =>      array('status'  =>        false),
			'AUGMENTIX'      =>      array('status'  =>        false),
			'PRIORITY8021P'      =>      array('status'  =>        false),
			'CENTRALIZED_VLAN'      =>      array('status'  =>        true),
			'FMU_GUI_TFTP'      =>      array('status'  =>        true)
	);
	require_once('getJsonData.php');
?>