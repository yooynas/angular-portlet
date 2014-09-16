<%@ taglib uri="http://java.sun.com/portlet_2_0" prefix="portlet" %>
<%@ taglib uri="http://liferay.com/tld/ui" prefix="liferay-ui" %>
<%@ taglib uri="http://liferay.com/tld/aui" prefix="aui" %>

<portlet:defineObjects />

<div id="<portlet:namespace />main" ng-controller="MainCtrl" ng-cloak>
	<div ng-hide="model.loggedIn">You need to be logged in to use this portlet</div>
	<div ng-include src="page" ng-show="model.loggedIn"></div>
</div>

<aui:script use="liferay-portlet-url,liferay-service,liferay-language,aui-base">

	// Pass namespace so Angular can be correctly namespaced
	//      https://www.liferay.com/community/forums/-/message_boards/view_message/18488646
	bootstrap('<portlet:namespace />main', '<portlet:namespace />');

</aui:script>