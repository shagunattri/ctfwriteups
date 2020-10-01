<script language="javascript">
<!--
{literal}
	var spaceMask=/^\s{0,}$/g
{/literal}
-->
</script>
	<tr>
		<td>	
			<table class="tableStyle">
				<tr>
					<td colspan="3"><script>tbhdr('DHCP Server Settings','dhcpServerConfiguration')</script></td>
				</tr>
				<tr>
					<td class="subSectionBodyDot">&nbsp;</td>
					<td class="spacer100Percent paddingsubSectionBody">
						<table class="tableStyle">
							{assign var="dhcpServerStatus" value=$data.dhcpsSettings.dhcpServerStatus}
{if $config.WNDAP330.status}
                            {if $data.httpRedirectSettings.httpRedirectStatus eq '1'}
								{assign var="onclickStr"  value="displayHotspotError(this);"}
							{else}
								{assign var="onclickStr"  value="graysomething(this,true);"}
							{/if}
{else}
                            {assign var="onclickStr"  value="graysomething(this,true);"}
{/if}
							{input_row label="DHCP Server" id="dhcpServerStatus" name="system[dhcpsSettings][dhcpServerStatus]" type="radio" options="1-Enable,0-Disable" onclick="$onclickStr" selectCondition="==$dhcpServerStatus"}
{if $config.MBSSID.status}
							{input_row label="DHCP Server VLAN ID" id="dhcpsVlanId" name="system[dhcpsSettings][dhcpsVlanId]" type="text"  value=$data.dhcpsSettings.dhcpsVlanId disableCondition="1!=$dhcpServerStatus" validate="Numericality, (( minimum:1, maximum: 4094, onlyInteger: true ))^Presence"}
{/if}
							{input_row label="Starting IP Address" id="dhcpsIpStart" name="system[dhcpsSettings][dhcpsIpStart]" type="ipfield"  value=$data.dhcpsSettings.dhcpsIpStart disableCondition="1!=$dhcpServerStatus" validate="IpAddress, (( allowZero: false ))^Presence"}

							{input_row label="Ending IP Address" id="dhcpsIpEnd" name="system[dhcpsSettings][dhcpsIpEnd]" type="ipfield"  value=$data.dhcpsSettings.dhcpsIpEnd disableCondition="1!=$dhcpServerStatus" validate="IpAddress, (( allowZero: false ))^Presence"}

							{input_row label="Subnet Mask" id="dhcpsNetMask" name="system[dhcpsSettings][dhcpsNetMask]" type="ipfield"  value=$data.dhcpsSettings.dhcpsNetMask disableCondition="1!=$dhcpServerStatus" validate="IpAddress, (( onlyNetMask: true ))^Presence"}

							{input_row label="Gateway IP Address" id="dhcpsGateway" name="system[dhcpsSettings][dhcpsGateway]" type="ipfield"  value=$data.dhcpsSettings.dhcpsGateway disableCondition="1!=$dhcpServerStatus" validate="IpAddress, (( allowZero: false ))^Presence"}

							{input_row label="Primary DNS Server" id="dhcpsPriDns" name="system[dhcpsSettings][dhcpsPriDns]" type="ipfield" value=$data.dhcpsSettings.dhcpsPriDns|replace:'0.0.0.0':'' masked="true" onchange="this.setAttribute('masked',(this.value != '')?false:true)" disableCondition="1!=$dhcpServerStatus" validate="IpAddress, (( allowZero: false ))"}

							{input_row label="Secondary DNS Server" id="dhcpsSndDns" name="system[dhcpsSettings][dhcpsSndDns]" type="ipfield"  value=$data.dhcpsSettings.dhcpsSndDns|replace:'0.0.0.0':'' masked="true" onchange="this.setAttribute('masked',(this.value != '')?false:true)" disableCondition="1!=$dhcpServerStatus" validate="IpAddress, (( allowZero: false ))"}

							{input_row label="Primary WINS Server" id="dhcpsPriWins" name="system[dhcpsSettings][dhcpsPriWins]" type="ipfield"  value=$data.dhcpsSettings.dhcpsPriWins|replace:'0.0.0.0':'' masked="true" onchange="this.setAttribute('masked',(this.value != '')?false:true)" disableCondition="1!=$dhcpServerStatus" validate="IpAddress, (( allowZero: false ))"}

							{input_row label="Secondary WINS Server" id="dhcpsSndWins" name="system[dhcpsSettings][dhcpsSndWins]" type="ipfield"  value=$data.dhcpsSettings.dhcpsSndWins|replace:'0.0.0.0':'' masked="true" onchange="this.setAttribute('masked',(this.value != '')?false:true)" disableCondition="1!=$dhcpServerStatus" validate="IpAddress, (( allowZero: false ))"}

							<tr>
								<td class="DatablockLabel">Lease</td>
								<td class="DatablockContent">
									<input class="input" size="2" maxlength="2" id="dhcpsLeaseDays" label="Lease Days" value="" type="text" onblur="convertLeaseTime2Seconds()" {if $dhcpServerStatus neq 1}disabled="disabled"{/if} validate="Numericality^Presence" onkeydown="setActiveContent();"> <small>days</small>
									<input class="input" size="2" maxlength="2" id="dhcpsLeaseHours" label="Lease Hours" value="" type="text" onblur="convertLeaseTime2Seconds()" {if $dhcpServerStatus neq 1}disabled="disabled"{/if} validate="Numericality, {literal}{ minimum:0, maximum: 23, onlyInteger: true }^Presence"{/literal} onkeydown="setActiveContent();"> <small>hours</small>
									<input class="input" size="2" maxlength="2" id="dhcpsLeaseMinutes" label="Lease Minutes" value="" type="text" onblur="convertLeaseTime2Seconds()" {if $dhcpServerStatus neq 1}disabled="disabled"{/if} validate="Numericality, {literal}{ minimum:0, maximum: 59, onlyInteger: true }^Presence"{/literal} onkeydown="setActiveContent();"> <small>minutes</small>
									<input type="hidden" name="{$parentStr.dhcpsSettings.dhcpsLeaseTime}" id="dhcpsLeaseTime" value="{$data.dhcpsSettings.dhcpsLeaseTime}">
									<script type="text/javascript">
									<!--
										$('dhcpsLeaseDays').value = convertLeaseTime($('dhcpsLeaseTime').value,'days');
										$('dhcpsLeaseHours').value = convertLeaseTime($('dhcpsLeaseTime').value,'hours');
										$('dhcpsLeaseMinutes').value = convertLeaseTime($('dhcpsLeaseTime').value,'minutes');
									-->
									</script>
								</td>
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
	<script language="javascript">
	<!--
	{if ($data.wlanSettings.wlanSettingTable.wlan0.apMode eq 5)}
		Form.disable(document.dataForm);
	{/if}
	-->
	</script>