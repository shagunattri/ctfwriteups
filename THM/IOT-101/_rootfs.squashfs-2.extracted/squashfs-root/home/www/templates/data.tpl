<form name="dataForm" id="dataForm" enctype="multipart/form-data" action="index.php?page=master" method="post">
	<input type="hidden" id="loading" value="true">
	<input type="hidden" name="menu1" id="menu1" value="{$navigation.1}">
	<input type="hidden" name="menu2" id="menu2" value="{$navigation.2}">
	<input type="hidden" name="menu3" id="menu3" value="{$navigation.3}">
	<input type="hidden" name="menu4" id="menu4" value="{$navigation.4}">
	<input type="hidden" name="mode7" id="mode7" value="">
	<input type="hidden" name="mode8" id="mode8" value="">
	<input type="hidden" name="mode9" id="mode9" value="">
	<input type="hidden" name="Action" id="Action" value="">
	<input type="hidden" id="logout">
{include file="help.tpl"}
	<div id="bodyblock" {if $templateName eq 'Login.tpl'}align="center"{/if} style="background-color: #FFFFFF;">
		<table {if $templateName eq "Login.tpl"}align="center"{else}id="bodyContainer"{/if}>
			<tr>
				<td class="font15Bold">{if $templateName neq 'Login.tpl'}{$navigation.0|replace:"&nbsp;":""}{/if}&nbsp;</td>
			</tr>
			<tr>
				<td class="spacerHeight9" style="text-align: center;" align="center">
					<table id="errorMessageBlock" align="center" style="margin: 4px auto 10px auto; {if $errorString eq ''}display: none;{elseif $templateName eq "Login.tpl"}margin-left: 10px; text-align: center;{/if}">
						<tr>
							<td style="padding: 5px; vertical-align: top;"><img src="images/alert.gif" style="border: 0px; padding: 0px; margin: 0px;"></td>
							<td style="padding: 5px 5px 5px 0px; vertical-align: middle;"><b id="br_head">{if $errorString eq ''}Please address the fields highlighted!{else}{$errorString}{/if}</b></td>
						</tr>
						<tr>
							<td style="padding: 0px; vertical-align: top;"></td>
							<td style="padding: 0px 5px 5px 0px; text-align: left;"></td>
						</tr>
					</table>
				</td>
			</tr>
			{*include file="sample_datablock.tpl"*}
			{php}
			//echo $this->_tpl_vars['templateName'];
			if (file_exists("templates/".$this->_tpl_vars['templateName'])) {
			{/php}{include file=$templateName}{php}
			}
			else {
			{/php}{include file="404.tpl"}{php}
			}
			{/php}
		</table>
	</div>
	
</form>
