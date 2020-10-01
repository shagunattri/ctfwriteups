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
					<td colspan="3"><script>tbhdr('Radius Server Settings','radiusServerConfiguration')</script></td>
				</tr>
				<tr>
					<td class="subSectionBodyDot">&nbsp;</td>
					<td class="spacer100Percent paddingsubSectionBody" style="padding: 0px;">
						<table class="tableStyle">
					<tr>
						<td>
							<div  id="BlockContentTable" name="station">
								<table class="BlockContentTable">
									<tr>
										<th>&nbsp;</th>
										<th>IP Address</th>
										<th>Port</th>
										<th class="Last">Shared Secret</th>
									</tr>
									<tr>
										<th>Primary Authentication Server</th>
										<td>{ip_field name=$parentStr.info802dot1x.authinfo.priRadIpAddr type="ipfield" id="priRadIpAddr" value=$data.info802dot1x.authinfo.priRadIpAddr|replace:'0.0.0.0':'' masked="true" onchange="this.setAttribute('masked',(this.value != '')?false:true)" label="Primary Auth Server IP Address" validate="IpAddress, (( allowZero: false ))"}</td>
										<td>{ip_field name=$parentStr.info802dot1x.authinfo.priRadPort type="text" id="priRadPort" label="Primary Auth Server Port Number" value=$data.info802dot1x.authinfo.priRadPort size="5" maxlength="5" validate="Numericality, (( minimum:1, maximum: 65535, onlyInteger: true ))^Presence" onkeypress="checkNum()"}</td>
										<td>{ip_field name=$parentStr.info802dot1x.authinfo.priRadSharedSecret type="password" id="priRadSharedSecret" label="Primary Auth Server Shared Secret" value=$data.info802dot1x.authinfo.priRadSharedSecret size="20" maxlength="127"  validate="Presence, (( allowQuotes: true, allowSpace: true ))"}</td>
									</tr>
									<tr class="Alternate">
										<th>Secondary Authentication Server</th>
										<td>{ip_field name=$parentStr.info802dot1x.authinfo.sndRadIpAddr type="ipfield" id="sndRadIpAddr" value=$data.info802dot1x.authinfo.sndRadIpAddr|replace:'0.0.0.0':'' masked="true" onchange="this.setAttribute('masked',(this.value != '')?false:true)" label="Secondary Auth Server IP Address" validate="IpAddress, (( allowZero: false ))"}</td>
										<td>{ip_field name=$parentStr.info802dot1x.authinfo.sndRadPort type="text" id="sndRadPort" label="Secondary Auth Server Port Number" value=$data.info802dot1x.authinfo.sndRadPort size="5" maxlength="5" validate="Numericality, (( minimum:1, maximum: 65535, onlyInteger: true ))^Presence" onkeypress="checkNum()"}</td>
										<td>{ip_field name=$parentStr.info802dot1x.authinfo.sndRadSharedSecret type="password" id="sndRadSharedSecret" label="Secondary Auth Server Shared Secret" value=$data.info802dot1x.authinfo.sndRadSharedSecret size="20" maxlength="127" validate="Presence, (( allowQuotes: true, allowSpace: true ))"}</td>
									</tr>
{if !$config.WN604.status}
									<tr>
										<th>Primary Accounting Server</th>
										<td>{ip_field name=$parentStr.info802dot1x.accntinfo.priAcntIpAddr type="ipfield" id="priAcntIpAddr" value=$data.info802dot1x.accntinfo.priAcntIpAddr|replace:'0.0.0.0':'' masked="true" onchange="this.setAttribute('masked',(this.value != '')?false:true)" label="Primary Acct Server IP Address" validate="IpAddress, (( allowZero: false ))"}</td>
										<td>{ip_field name=$parentStr.info802dot1x.accntinfo.priAcntPort type="text" id="priAcntPort" label="Primary Acct Server Port Number" value=$data.info802dot1x.accntinfo.priAcntPort size="5" maxlength="5" validate="Numericality, (( minimum:1, maximum: 65535, onlyInteger: true ))^Presence" onkeypress="checkNum()"}</td>
										<td>{ip_field name=$parentStr.info802dot1x.accntinfo.priAcntSharedSecret type="password" id="priAcntSharedSecret" label="Primary Acct Server Shared Secret" value=$data.info802dot1x.accntinfo.priAcntSharedSecret size="20" maxlength="127" validate="Presence, (( allowQuotes: true, allowSpace: true ))"}</td>
									</tr>
									<tr class="Alternate">
										<th>Secondary Accounting Server</th>
										<td>{ip_field name=$parentStr.info802dot1x.accntinfo.sndAcntIpAddr type="ipfield" id="sndAcntIpAddr" value=$data.info802dot1x.accntinfo.sndAcntIpAddr|replace:'0.0.0.0':'' masked="true" onchange="this.setAttribute('masked',(this.value != '')?false:true)" label="Secondary Acct Server IP Address" validate="IpAddress, (( allowZero: false ))"}</td>
										<td>{ip_field name=$parentStr.info802dot1x.accntinfo.sndAcntPort type="text" id="sndAcntPort" label="Secondary Acct Server Port Number" value=$data.info802dot1x.accntinfo.sndAcntPort size="5" maxlength="5" validate="Numericality, (( minimum:1, maximum: 65535, onlyInteger: true ))^Presence" onkeypress="checkNum()"}</td>
										<td>{ip_field name=$parentStr.info802dot1x.accntinfo.sndAcntSharedSecret type="password" id="sndAcntSharedSecret" label="Secondary Acct Server Shared Secret" value=$data.info802dot1x.accntinfo.sndAcntSharedSecret size="20" maxlength="127" validate="Presence, (( allowQuotes: true, allowSpace: true ))"}</td>
									</tr>
{/if}
								</table>
							</div>
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
{if $config.AUTH_SETTINGS.status}
	<tr>
		<td class="spacerHeight21">&nbsp;</td>
	</tr>
	<tr>
		<td>
			<table class="tableStyle">
				<tr>
					<td colspan="3"><script>tbhdr('Authentication Settings','authenticationSettings')</script></td>
				</tr>
				<tr>
					<td class="subSectionBodyDot">&nbsp;</td>
					<td class="spacer100Percent paddingsubSectionBody">
						<table class="tableStyle">
							{input_row label="Reauthentication Time (Seconds)" id="reauthTime" name=$parentStr.info802dot1x.authSetting.reauthTime type="text" size="6" maxlength="5" validate="Presence^Numericality, (( minimum:1, maximum: 99999, onlyInteger: true ))" value=$data.info802dot1x.authSetting.reauthTime  onkeydown="setActiveContent();"}

							<tr>
								{assign var="wpaGroupRekeyStatus" value=$data.info802dot1x.authSetting.wpaGroupKeyUpdateCondition}
								<td class="DatablockLabel">{ip_field id="wpaGroupRekeyStatus" name=$parentStr.info802dot1x.authSetting.wpaGroupKeyUpdateCondition type="checkbox" value="$wpaGroupRekeyStatus" selectCondition="==1" onclick="fetchObjectById('wpaGroupRekey').disabled=!this.checked;" onkeydown="setActiveContent();"}&nbsp;Update Global Key Every (Seconds)</td>
								<td class="DatablockContent"><input class="input" id="wpaGroupRekey" name="{$parentStr.info802dot1x.authSetting.wpaGroupKeyUpdateIntervalSecond}" value="{$data.info802dot1x.authSetting.wpaGroupKeyUpdateIntervalSecond}" size="6" maxlength="5" type="text" {if $data.info802dot1x.authSetting.wpaGroupKeyUpdateCondition neq 1}disabled="disabled"{/if} label="Global Key Update Frequency" onkeydown="setActiveContent();" validate="Presence^Numericality,{literal}{ minimum:1, maximum: 99999, onlyInteger: true }{/literal}"></td>
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
{/if}
	<input type="hidden" id="authType" name="authType" value="{$radiusUsed}">
	
<script language="javascript">
<!--
{if $config.TWOGHZ.status AND $data.wlanSettings.wlanSettingTable.wlan0.apMode eq 5}
	Form.disable(document.dataForm);
{/if}
{if $config.FIVEGHZ.status AND $data.wlanSettings.wlanSettingTable.wlan1.apMode eq 5}
	Form.disable(document.dataForm);
{/if}
-->
</script>