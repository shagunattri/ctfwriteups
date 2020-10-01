	<tr>
		<td>
			<table class="tableStyle">
				<tr>
					<td colspan="3"><script>tbhdr('Change Password','changePassword')</script></td>
				</tr>
				<tr>
					<td class="subSectionBodyDot">&nbsp;</td>
					<td class="spacer100Percent paddingsubSectionBody">
						<table class="tableStyle">
							{input_row label="Current Password" id="oldAdminPasswd" name="oldAdminPasswd" type="password" value="" size="20" maxlength="32" validate="Presence^Ascii" onchange="if (this.value!='') $('dummy').setAttribute('checked',true);"}
							{input_row label="New Password" id="adminPasswd" name=$parentStr.basicSettings.adminPasswd type="password" value=""  size="20" maxlength="32" validate="Presence, (( onlyIfChecked: 'dummy' ))^Ascii"}
							{input_row label="Repeat New Password" id="adminPasswdConfirm" name="adminPasswdConfirm" type="password" value=""  size="20" maxlength="32"  validate="Confirmation, (( match: 'adminPasswd' ))"}

							{input_row label="Restore Default Password" id="restorePassword" name="restorePassword" type="radio" options="1-Yes,0-No" onclick="graysomething(this);$('dummy').checked=(this.value=='1')?false:true;" selectCondition="==0"}
							<input type="hidden" id='dummy' checked="false">
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
