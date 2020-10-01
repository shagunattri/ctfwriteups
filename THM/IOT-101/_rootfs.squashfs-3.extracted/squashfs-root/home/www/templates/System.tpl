	<tr>
		<td>
			<table class="tableStyle">
				<tr>
					<td colspan="3"><script>tbhdr('Access Point Information','accessPointInformation')</script></td>
				</tr>
				<tr>
					<td class="subSectionBodyDot">&nbsp;</td>
					<td class="spacer100Percent paddingsubSectionBody">
						<table class="tableStyle">
							<tr>
								<td class="DatablockLabel">Access Point Name</td>
								<td class="DatablockContent">{$data.basicSettings.apName}</td>
							</tr>
							<tr>
								<td class="DatablockLabel">Ethernet MAC Address</td>
								<td class="DatablockContent">{$data.monitor.ethernetMacAddress|replace:"-":":"}</td>
							</tr>
							{if NOT $config.DUAL_CONCURRENT.status}
							<tr>
								<td class="DatablockLabel">Wireless MAC Address</td>
                                {if $config.TWOGHZ.status AND $data.radioStatus0 eq '1'}
                                    <td class="DatablockContent">{$data.monitor.macAddress.wlan0|replace:"-":":"}</td>
                                {/if}
<!--@@@FIVEGHZSTART@@@-->
                                {if $config.FIVEGHZ.status AND $data.radioStatus1 eq '1'}
                                    <td class="DatablockContent">{$data.monitor.macAddress.wlan1|replace:"-":":"}</td>
                                {/if}
<!--@@@FIVEGHZEND@@@-->
							</tr>
<!--@@@DUAL_CONCURRENTSTART@@@-->
							{else}
							{if $config.TWOGHZ.status}
							<tr>
								<td class="DatablockLabel">Wireless MAC Address for 2.4GHz</td>
								<td class="DatablockContent">{$data.monitor.macAddress.wlan0|replace:"-":":"}</td>
							</tr>
							{/if}
<!--@@@FIVEGHZSTART@@@-->
							{if $config.FIVEGHZ.status}
							<tr>
								<td class="DatablockLabel">Wireless MAC Address for 5GHz</td>
								<td class="DatablockContent">{$data.monitor.macAddress.wlan1|replace:"-":":"}</td>
							</tr>
							{/if}
<!--@@@FIVEGHZEND@@@-->
<!--@@@DUAL_CONCURRENTEND@@@-->

							{/if}
							<tr>
								<td class="DatablockLabel">Country / Region</td>
								<td class="DatablockContent">{php}echo $this->_tpl_vars[countryList][$this->_tpl_vars[data][basicSettings][sysCountryRegion]];{/php}</td>
							</tr>
							<tr>
								<td class="DatablockLabel">Firmware Version</td>
								<td class="DatablockContent">{$data.monitor.sysVersion}</td>
							</tr>
							<tr>
								<td class="DatablockLabel" >Current Time</td>
								<td class="DatablockContent">{php} echo `/usr/local/bin/date.sh `;{/php}</td>
							</tr>
						</table>
					</td>
					<td class="subSectionBodyDotRight">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="3" class="subSectionBottom">&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td class="spacerHeight21"></td>
	</tr>
	<tr>
		<td>
			<table class="tableStyle">
				<tr>
					<td colspan="3"><script>tbhdr('Current IP Settings','currentIPSettings')</script></td>
				</tr>
				<tr>
					<td class="subSectionBodyDot">&nbsp;</td>
					<td class="spacer100Percent paddingsubSectionBody">
						<table class="tableStyle">
							<tr>
								<td class="DatablockLabel">IP Address</td>
								<td class="DatablockContent">{$data.monitor.ipAddress}</td>
							</tr>
							<tr>
								<td class="DatablockLabel">Subnet Mask</td>
								<td class="DatablockContent">{$data.monitor.subNetMask}</td>
							</tr>
							<tr>
								<td class="DatablockLabel">Default Gateway</td>
								<td class="DatablockContent">{$data.monitor.defaultGateway|replace:'0.0.0.0':''}</td>
							</tr>
{if $config.DHCPCLIENT.status}
							<tr>
								<td class="DatablockLabel">DHCP Client</td>
								<td class="DatablockContent">{if $data.basicSettings.dhcpClientStatus eq 0}Disabled{else}Enabled{/if}</td>
							</tr>
{/if}
						</table>
					</td>
					<td class="subSectionBodyDotRight">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="3" class="subSectionBottom">&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td class="spacerHeight21">&nbsp;</td>
	</tr>
{if $config.TWOGHZ.status AND $data.radioStatus0 eq '1'}
	<tr id="wlan1">
		<td>
			<table class="tableStyle">
				<tr>
					<td colspan="3" style="width: 560px;"><script>tbhdr('Current Wireless Settings for 802.11{$wlan0ModeString}','currentWirelessSettings')</script></td>
				</tr>
				<tr>
					<td class="subSectionBodyDot">&nbsp;</td>
					<td class="spacer100Percent paddingsubSectionBody">
						<table class="tableStyle">
							<tr>
								<td class="DatablockLabel">Access Point Mode</td>
								<td class="DatablockContent">{php}
								switch ($this->_tpl_vars['data']['wlanSettings']['wlanSettingTable']['wlan0']['apMode']) {
									case '0':
										echo "Access Point";
										break;
									case '1':
										echo "Point to Point";
										break;
									case '2':
										echo "Point to Point (with Client Association)";
										break;
									case '3':
										echo "Point to Multi point (with Client Association)";
										break;
									case '4':
										echo "Point to Multi point";
										break;
									case '5':
										echo "Client";
										break;
								}
								{/php}</td>
							</tr>
							<tr>
								<td class="DatablockLabel">Channel / Frequency</td>
								<td class="DatablockContent">{if $data.wlanSettings.wlanSettingTable.wlan0.channel eq '0'}Auto ({$data.monitor.currentChannel.wlan0}){else}{$data.monitor.currentChannel.wlan0}{/if}</td>
							</tr>
{if $config.ROGUEAP.status}
							<tr>
								<td class="DatablockLabel">Rogue AP Detection</td>
								<td class="DatablockContent">{if $data.wlanSettings.wlanSettingTable.wlan0.rogueApDetection eq '0'}Disabled{else}Enabled{/if}</td>
							</tr>
{/if}
						</table>
					</td>
					<td class="subSectionBodyDotRight">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="3" class="subSectionBottom">&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td class="spacerHeight21">&nbsp;</td>
	</tr>
{/if}
<!--@@@FIVEGHZSTART@@@-->
{if $config.FIVEGHZ.status AND $data.radioStatus1 eq '1'}
	<tr id="wlan2" >
		<td>
			<table class="tableStyle">
				<tr>
					<td colspan="3" style="width: 560px;"><script>tbhdr('Current Wireless Settings for 802.11{$wlan1ModeString}','currentWirelessSettings')</script></td>
				</tr>
				<tr>
					<td class="subSectionBodyDot">&nbsp;</td>
					<td class="spacer100Percent paddingsubSectionBody">
						<table class="tableStyle">
							<tr>
								<td class="DatablockLabel">Access Point Mode</td>
								<td class="DatablockContent">{php}
								switch ($this->_tpl_vars['data']['wlanSettings']['wlanSettingTable']['wlan1']['apMode']) {
									case '0':
										echo "Access Point";
										break;
									case '1':
										echo "Point to Point";
										break;
									case '2':
										echo "Point to Point (with Client Association)";
										break;
									case '3':
										echo "Point to Multi point (with Client Association)";
										break;
									case '4':
										echo "Point to Multi point";
										break;
								}
								{/php}</td>
							</tr>
							<tr>
								<td class="DatablockLabel">Channel / Frequency</td>
								<td class="DatablockContent">{if $data.wlanSettings.wlanSettingTable.wlan1.channel eq '0'}Auto ({$data.monitor.currentChannel.wlan1}){else}{$data.monitor.currentChannel.wlan1}{/if}</td>
							</tr>
{if $config.ROGUEAP.status}
							<tr>
								<td class="DatablockLabel">Rogue AP Detection</td>
								<td class="DatablockContent">{if $data.wlanSettings.wlanSettingTable.wlan1.rogueApDetection eq '0'}Disabled{else}Enabled{/if}</td>
							</tr>
{/if}
						</table>
					</td>
					<td class="subSectionBodyDotRight">&nbsp;</td>
				</tr>
				<tr>
					<td colspan="3" class="subSectionBottom">&nbsp;</td>
				</tr>
			</table>
		</td>
	</tr>
{/if}
<!--@@@FIVEGHZEND@@@-->