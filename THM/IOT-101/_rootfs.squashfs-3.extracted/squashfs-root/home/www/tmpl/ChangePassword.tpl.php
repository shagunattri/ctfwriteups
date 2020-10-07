<?php /* Smarty version 2.6.18, created on 2009-02-17 11:52:05
         compiled from ChangePassword.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('function', 'input_row', 'ChangePassword.tpl', 11, false),)), $this); ?>
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
							<?php echo smarty_function_input_row(array('label' => 'Current Password','id' => 'oldAdminPasswd','name' => 'oldAdminPasswd','type' => 'password','value' => "",'size' => '20','maxlength' => '32','validate' => "Presence^Ascii",'onchange' => "if (this.value!='') $('dummy').setAttribute('checked',true);"), $this);?>

							<?php echo smarty_function_input_row(array('label' => 'New Password','id' => 'adminPasswd','name' => $this->_tpl_vars['parentStr']['basicSettings']['adminPasswd'],'type' => 'password','value' => "",'size' => '20','maxlength' => '32','validate' => "Presence, (( onlyIfChecked: 'dummy' ))^Ascii"), $this);?>

							<?php echo smarty_function_input_row(array('label' => 'Repeat New Password','id' => 'adminPasswdConfirm','name' => 'adminPasswdConfirm','type' => 'password','value' => "",'size' => '20','maxlength' => '32','validate' => "Confirmation, (( match: 'adminPasswd' ))"), $this);?>


							<?php echo smarty_function_input_row(array('label' => 'Restore Default Password','id' => 'restorePassword','name' => 'restorePassword','type' => 'radio','options' => "1-Yes,0-No",'onclick' => "graysomething(this);$('dummy').checked=(this.value=='1')?false:true;",'selectCondition' => "==0"), $this);?>

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