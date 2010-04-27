<cfsilent>
<!---
License:
Copyright 2008 GreatBizTools, LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

Copyright: GreatBizTools, LLC
$Id: header.cfm 1077 2008-09-22 18:52:43Z peterfarrell $

Created version: 1.0.0
Updated version: 1.0.0

Notes:
--->
<cfset variables.eventName = event.getRequestName() />

<!--- This is a hack --->
<cffunction name="highlight" access="public" returntype="string" output="false">
	<cfargument name="level" type="string" required="true" />
	
	<cfset var result = "" />
	
	<cfif variables.eventName.toLowerCase().startsWith(arguments.level)>
		<cfset result = ' class="highlight"' />
	</cfif>
	
	<cfreturn result />
</cffunction>

</cfsilent>
<cfoutput>
<div id="logo">
	<h3><a href="#BuildUrl(getProperty("defaultEvent"))#"><img src="#BuildUrl("sys.serveAsset", "path=@img@machiiLogo.gif")#" width="218" height="60" alt="Mach-II" /></a></h3>
</div>
<cfif NOT event.getArg("suppressHeadElements", false)>
<div id="serverInfo">
	<cfset variables.instanceName = createObject("java", "java.lang.System").getProperty("jrun.server.name") />
	<form name="logout" action="#BuildUrl(event.getRequestName())#" method="post">
		<input type="hidden" name="logout" value="true" />
	<ul>
		<li>
			<img src="#BuildUrl("sys.serveAsset", "path=@img@icons@time.png")#" width="16" height="16" alt="Date" title="Date" />
			 #DateFormat(now(), "short")# - #TimeFormat(now(), "short")#</li>
		<li>
			<img src="#BuildUrl("sys.serveAsset", "path=@img@icons@world_link.png")#" width="16" height="16" alt="Domain Name" title="Domain Name" />
			 #cgi.server_name#</li>
		<li>
			<img src="#BuildUrl("sys.serveAsset", "path=@img@icons@server.png")#" width="16" height="16" alt="Machine Name" title="Machine Name" />
			 #CreateObject("java", "java.net.InetAddress").getLocalHost().getHostName()#
		</li>
		<li>
			<img src="#BuildUrl("sys.serveAsset", "path=@img@icons@instance.png")#" width="16" height="16" alt="Instance Name" title="Instance Name" />
			<cfif Len(variables.instanceName)> #variables.instanceName#<cfelse><em> n/a</em></cfif></li>
		<li>
			<img src="#BuildUrl("sys.serveAsset", "path=@img@icons@application.png")#" width="16" height="16" alt="Application Name" title="Application Name" />
			 #application.applicationName#</li>
		<li class="red">
			<img src="#BuildUrl("sys.serveAsset", "path=@img@icons@cancel.png")#" width="16" height="16" alt="Logout" title="Logout" />
			 <a href="##" onclick="document.logout.submit()">Logout</a></li>
	</ul>
	</form>
</div>

<div id="navTabs">
	<ul>
		<li><a href="#BuildUrl("config.index")#" #highlight("config.")#>Config</a></li>
		<li><a href="#BuildUrl("logging.index")#" #highlight("logging.")#>Logging</a></li>
		<li><a href="#BuildUrl("caching.index")#" #highlight("caching.")#>Caching</a></li>
		<li><a href="#BuildUrl("debugging.index")#" #highlight("debugging.")#>Debugging</a></li>
	</ul>
</div>
</cfif>
</cfoutput>