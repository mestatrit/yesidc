<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<div id="Loading"
	style="position: absolute; z-index: 3; top: 0px; left: 0px; width: 100%; height: 100%; border-width: 1; border-style: ridge; background-color: #8E8E8E; padding-top: 10px;filter:alpha(opacity=50);">
	<center>
		<table width="100%" height="100%">
			<tr>
				<td style="border-color: transparent;" class="tdWait">
					<table style="background-color: white;">
						<tr>
							<td valign="middle" style="border-color: transparent;">
								<s:if test="%{#session.userPathS == null}">
									<img src="../img/loading-bar.gif"
										border="0" >
								</s:if>
								<s:else>
									<img src="../img/loading-circle1.gif"
										border="0" >
								</s:else>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</center>
</div>