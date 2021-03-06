<!--
 ***********************************************************************************
 * $URL: https://source.sakaiproject.org/contrib/etudes/melete/tags/2.9.9/melete-app/src/webapp/melete/authnavbar.jsp $
 * $Id: authnavbar.jsp 85951 2014-03-14 16:53:27Z mallika@etudes.org $  
 ***********************************************************************************
 *
 * Copyright (c) 2008,2009,2010, 2011 Etudes, Inc.
 *
 * Portions completed before September 1, 2008 Copyright (c) 2004, 2005, 2006, 2007, 2008 Foothill College, ETUDES Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
 * implied. See the License for the specific language governing
 * permissions and limitations under the License.
 *
 **********************************************************************************
-->
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@include file="accesscheck.jsp" %>

<h:panelGrid columns="10" border="0" columnClasses="authBarCol" cellspacing="5" width="75%">
	<h:column>
		<h:commandLink id="addAction" action="#{listAuthModulesPage.AddModuleAction}" styleClass="toolUiLink">
		    <h:graphicImage id="addModuleImg" value="/images/document_add.gif" styleClass="AuthImgClass"/>
	  		<h:outputText  value="#{msgs.authnavbar_add_module}"/>
		</h:commandLink>
	</h:column>
	<h:column>
		<h:commandLink id="addContAction" actionListener="#{listAuthModulesPage.AddContentAction}" styleClass="toolUiLink">
	  		<h:graphicImage id="addContentImg" value="/images/document_add.gif" styleClass="AuthImgClass"/>
	  		<h:outputText  value="#{msgs.authnavbar_add_content}"/>
		</h:commandLink>
	</h:column>
	<h:column>
		<h:commandLink id="BringUpSubSectionAction" action="#{listAuthModulesPage.BringSubSectionLevelUpAction}" styleClass="toolUiLink">
	  	  <h:graphicImage id="indentLeftImg" value="/images/indent_left.png" styleClass="AuthImgClass"/>
	  	  <h:outputText  value="#{msgs.authnavbar_left}"/>
	  	</h:commandLink>
	</h:column>
	<h:column>
	  <h:commandLink id="CreateSubSectionAction" action="#{listAuthModulesPage.CreateSubSectionAction}" styleClass="toolUiLink">
	  	<h:graphicImage id="indentRightImg" value="/images/indent_right.png" styleClass="AuthImgClass"/>
	  	<h:outputText  value="#{msgs.authnavbar_right}"/>
	  </h:commandLink>
	</h:column>
	<h:column>
	  <h:commandLink id="sortgoto" action="#{listAuthModulesPage.goToSortModules}" styleClass="toolUiLink">
	    <h:graphicImage id="MoveUpImg" value="/images/document_exchange.gif" styleClass="AuthImgClass"/>   
	   <h:outputText id="sort" value="#{msgs.modules_author_manage_sort}" />
  	</h:commandLink>
  	</h:column>
  	<h:column>
	<h:commandLink id="moveAction" action="#{listAuthModulesPage.MoveSectionAction}" styleClass="toolUiLink">
	    <h:graphicImage id="moveImg" value="/images/page_go.png" styleClass="AuthImgClass"/>
	  	<h:outputText  value="#{msgs.authnavbar_move_section}"/>
	  </h:commandLink>
	</h:column>
	<h:column>
		<h:commandLink id="delAction" action="#{listAuthModulesPage.deleteAction}" styleClass="toolUiLink">
	        <h:graphicImage id="deleteImg" value="/images/delete.gif" styleClass="AuthImgClass"/>
	        <h:outputText  id="del" value="#{msgs.authnavbar_delete}"></h:outputText>
	     </h:commandLink>
	</h:column>
	<h:column>
		<h:commandLink id="inactiveAction" action="#{listAuthModulesPage.InactivateAction}" styleClass="toolUiLink">
	  	<h:graphicImage id="inactiveImg" value="/images/folder_out.gif" styleClass="AuthImgClass"/>
	  	<h:outputText  value="#{msgs.authnavbar_make_inactive}"/>
	  </h:commandLink>
	</h:column>
	<h:column>
		<h:commandLink id="restoregoto" action="#{listAuthModulesPage.goToRestoreModules}" styleClass="toolUiLink">
			<h:graphicImage id="image" alt="" url="/images/folder_into.gif" styleClass="AuthImgClass"/>
			<h:outputText id="re" value="#{msgs.modules_author_manage_archive_title}" />
		</h:commandLink>
	</h:column>
	<h:column>
		<h:commandLink id="goto_impexp" action="#{listAuthModulesPage.importExportModules}" styleClass="toolUiLink">
			<h:graphicImage id="image_impexp" alt="" url="/images/import1.gif" styleClass="AuthImgClass"/>
			<h:outputText id="import" value="#{msgs.modules_author_manage_import_export}" />
		</h:commandLink>
	</h:column>
</h:panelGrid>
<!-- End code to display images horizontally. -->
