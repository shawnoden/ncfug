<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">

<cfoutput>
<head>
	<title>#event.getArg("pageTitle", getProperty("siteName"))#</title>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<meta name="Description" content="Cleveland ColdFusion User Group" />
	<meta name="Keywords" content="ColdFusion, CFML, Web Development, Flex, CFCs, Mach-ii, Fusebox" />
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
	<meta name="Distribution" content="Global" />
	<meta name="Author" content="Brian Meloche - brianmeloche@gmail.com, Dan Vega - danvega@gmail.com" />
	<meta name="Robots" content="index,follow" />
	<!-- **** layout stylesheet **** -->
	<link rel="stylesheet" type="text/css" href="#getProperty('applicationRoot')#skins/#getProperty('skin')#/style/style.css" />


	<!-- **** colour scheme stylesheet **** -->
	<link rel="stylesheet" type="text/css" href="#getProperty('applicationRoot')#skins/#getProperty('skin')#/style/colour.css" />

	<!--- include the form validation libraries if needed --->
	<cfif event.isArgDefined("includeqForms") AND event.getArg("includeqForms")>
		<script type="text/javascript" src="js/lib/qforms.js"></script>
		<script type="text/javascript">
			<!--//--><![CDATA[//><!--
			qFormAPI.setLibraryPath("js/lib/");
			qFormAPI.include("*");
			//--><!]]>
		</script>
	</cfif>
	
	<!--- include the calendar if needed --->	
	<cfif event.isArgDefined("includeCalendar") AND event.getArg("includeCalendar")>
		<style type="text/css">@import url(js/calendar/skins/aqua/theme.css);</style>
		<script type="text/javascript" src="js/calendar/calendar.js"></script>
		<script type="text/javascript" src="js/calendar/lang/calendar-en.js"></script>
		<script type="text/javascript" src="js/calendar/calendar-setup.js"></script>
	</cfif>
</head>

<body>
	<!-- header starts here -->
	<div id="header">
		<div id="header-content">
			<div id="logo"></div>
			<h1 id="logo-text"><a href="index.cfm" title="#getProperty("sitename")#">#getProperty("sitename")#</a></h1>
			<h2 id="slogan">Serving ColdFusion developers in Northeast Ohio...</h2>
			<div id="header-links">
				<p>
					<cfif event.getArg("authType") is not "none">
						#getProperty("resourceBundleService").getResourceBundle().getResource("welcome")# #session.storage.user.getFirstName()# | 
					</cfif>
					<a href="index.cfm">#getProperty("resourceBundleService").getResourceBundle().getResource("home")#</a> | 
					<a href="index.cfm?#getProperty('eventParameter')#=showcontactForm">#getProperty("resourceBundleService").getResourceBundle().getResource("contact")#</a> | 
					<cfif event.getArg("authType") is not "none">
						<a href="index.cfm?#getProperty('eventParameter')#=logout">#getProperty("resourceBundleService").getResourceBundle().getResource("logout")#</a>
					<cfelse>
						<a href="index.cfm?#getProperty('eventParameter')#=showLogin">#getProperty("resourceBundleService").getResourceBundle().getResource("login")#</a>
					</cfif>
				</p>
			</div>
			<div id="adobelogo"><a href="http://www.adobe.com/cfusion/usergroups/index.cfm"><img src="#getProperty('applicationRoot')#skins/#getProperty('skin')#/images/AdobeUserGroups224x79.gif" width="224" height="79"/></a></div>
		</div>
	</div>
	<!-- navigation starts here -->
	<div id="nav-wrap">
		<div id="nav">
			<ul>
				<li<cfif event.getRequestName() is "showHome"> id="current"</cfif>>
					<a href="index.cfm?#getProperty('eventParameter')#=showHome">
						#getProperty("resourceBundleService").getResourceBundle().getResource("home")#
					</a>
				</li>
				<li<cfif event.getRequestName() is "showMeetings"> id="current"</cfif>>
					<a href="index.cfm?#getProperty('eventParameter')#=showMeetings">
						#getProperty("resourceBundleService").getResourceBundle().getResource("meetings")#
					</a>
				</li>
				<li<cfif event.getRequestName() is "showNews"> id="current"</cfif>>
					<a href="index.cfm?#getProperty('eventParameter')#=showNews">
						#getProperty("resourceBundleService").getResourceBundle().getResource("news")#
					</a>
				</li> 
				<li>
					<a<cfif event.getRequestName() is "showArticles"> id="current"</cfif> href="index.cfm?#getProperty('eventParameter')#=showArticles">
						#getProperty("resourceBundleService").getResourceBundle().getResource("articles")#
					</a>
				</li>
				<!--- <li>
					<a<cfif event.getRequestName() is "showBooks"> id="current"</cfif> href="index.cfm?#getProperty('eventParameter')#=showBooks">
						#getProperty("resourceBundleService").getResourceBundle().getResource("books")#
					</a>
				</li>
				<li>
					<a<cfif event.getRequestName() is "showPhotos"> id="current"</cfif> href="index.cfm?#getProperty('eventParameter')#=showPhotos">
						#getProperty("resourceBundleService").getResourceBundle().getResource("photos")#
					</a>
				</li> --->
				<li<cfif event.getRequestName() is "showBoard"> id="current"</cfif>>
					<a href="index.cfm?#getProperty('eventParameter')#=showBoard">
						#getProperty("resourceBundleService").getResourceBundle().getResource("board")#
					</a>
				</li>
				<li<cfif event.getRequestName() is "showContactForm"> id="current"</cfif>>
					<a href="index.cfm?#getProperty('eventParameter')#=showContactForm">
						#getProperty("resourceBundleService").getResourceBundle().getResource("contact")#
					</a>
				</li>
				<li>
					<cfif event.getArg("authType") is not "none">
						<a href="index.cfm?#getProperty('eventParameter')#=logout">#getProperty("resourceBundleService").getResourceBundle().getResource("logout")#</a>
					<cfelse>
						<a href="index.cfm?#getProperty('eventParameter')#=showLogin">#getProperty("resourceBundleService").getResourceBundle().getResource("login")#</a>
					</cfif>
				</li>
			</ul>
		</div>
	</div>
	<!-- content-wrap starts here -->
	<div id="content-wrap">
		<div id="content">
			<div id="sidebar" >
				<div id="sidebox" >
					<h1>Are you a member?</h1>
					<ul class="sidemenu">
						<cfif event.getArg("authType") is not "none">
							<h2>#getProperty("resourceBundleService").getResourceBundle().getResource("welcome")# #session.storage.user.getFirstName()#!</h2>
							<li><a href="index.cfm?#getProperty('eventParameter')#=logout">#getProperty("resourceBundleService").getResourceBundle().getResource("logout")#</a></li>
						<cfelse>
							<li><a href="index.cfm?#getProperty('eventParameter')#=showLogin">Yes -  #getProperty("resourceBundleService").getResourceBundle().getResource("login")#</a></li>
							<li><a href="index.cfm?#getProperty('eventParameter')#=showRegistrationForm">No - #getProperty("resourceBundleService").getResourceBundle().getResource("register")#</li>
						</cfif>
					</ul>
				</div>
				<!--- <div class="sep"></div>
				<div class="sidebox">
					<h1>Search Box</h1>	
					<form name="search" action="" method="post" class="searchform">
						<p>
							<input type="text" name="searchText" class="textbox" />
							<input class="button" type="submit" value="#getProperty('resourceBundleService').getResourceBundle().getResource('search')#" />
						</p>
					</form>
				</div> --->
				<div class="sep"></div>
				<div class="sidebox">
					<h1>#getProperty("resourceBundleService").getResourceBundle().getResource("upcomingmeetings")#</h1>
					<cfif arrayLen(upcomingMeetings) gt 0>
						<cfloop index="i" from="1" to="#arrayLen(upcomingMeetings)#" step="1">
							<cfif nextMeeting.getLocation().getMapLink() is not "">
								<cfset tempLinkMain = Replace(nextMeeting.getLocation().getMapLink(),"&","&amp;","ALL")>
							</cfif>
							<h2>#getProperty("resourceBundleService").getLocaleUtils().i18nDateTimeFormat(upcomingMeetings[i].getDTMeeting(), 3, 3)#</h2>
							<p><a href="index.cfm?#getProperty('eventParameter')#=showMeeting&meetingID=#upcomingMeetings[i].getMeetingID()#">#upcomingMeetings[i].getTitle()#</a><br />
							#upcomingMeetings[i].getLocation().getLocation()#</p>
							<p>#nextMeeting.getLocation().getAddress().getAddress1()#,<br />
							#nextMeeting.getLocation().getAddress().getCity()#, #nextMeeting.getLocation().getAddress().getState()# #nextMeeting.getLocation().getAddress().getPostalCode()#</p>
							<cfif isDefined("tempLinkMain")>
								<p><a href="#tempLinkMain#">#getProperty("resourceBundleService").getResourceBundle().getResource("mapoflocation")#</a></p>
							</cfif>
							<p><a href="index.cfm?#getProperty('eventParameter')#=showRSVPForm&amp;meetingID=#nextMeeting.getMeetingID()#">#getProperty("resourceBundleService").getResourceBundle().getResource("rsvpforthismeeting")#</a></p>
						</cfloop>
					<cfelse>
						<p>#getProperty("resourceBundleService").getResourceBundle().getResource("noupcomingmeetings")#</p>
					</cfif>
					<cfif getProperty("groupCalendar","") is not "">
						<div align="center">
							<a target="_blank" href="http://www.google.com/calendar/render?cid=#getProperty('groupCalendar')#%40group.calendar.google.com">
								<img src="http://www.google.com/calendar/images/ext/gc_button1_en.gif" border="0" />
							</a>
						</div>
					</cfif>
				</div>
				<cfif event.getArg("authType") is "admin">
					<div class="sep"></div>
					<div class="sidebox">
						<h1>#getProperty("resourceBundleService").getResourceBundle().getResource("adminmenu")#</h1>
						<ul class="sidemenu">
							<li>
								<a href="index.cfm?#getProperty('eventParameter')#=admin.showMainMenu">
									#getProperty("resourceBundleService").getResourceBundle().getResource("adminmenu")#
								</a>
							</li>
							<li>
								<a href="index.cfm?#getProperty('eventParameter')#=admin.showPeopleMenu">
									#getProperty("resourceBundleService").getResourceBundle().getResource("managepeople")#
								</a>
							</li>
							<li>
								<a href="index.cfm?#getProperty('eventParameter')#=admin.showMeetingMenu">
									#getProperty("resourceBundleService").getResourceBundle().getResource("managemeetings")#
								</a>
							</li>
							<li>
								<a href="index.cfm?#getProperty('eventParameter')#=admin.showNewsMenu">
									#getProperty("resourceBundleService").getResourceBundle().getResource("managenews")#
								</a>
							</li>
							<li>
								<a href="index.cfm?#getProperty('eventParameter')#=admin.showArticleMenu">
									#getProperty("resourceBundleService").getResourceBundle().getResource("managearticles")#
								</a>
							</li>
							<li>
								<a href="index.cfm?#getProperty('eventParameter')#=admin.showBookMenu">
									#getProperty("resourceBundleService").getResourceBundle().getResource("managebooks")#
								</a>
							</li>
							<li>
								<a href="index.cfm?#getProperty('eventParameter')#=admin.showPhotoMenu">
									#getProperty("resourceBundleService").getResourceBundle().getResource("managephotos")#
								</a>
							</li>
						</ul>
					</div>
				</cfif>
				<cfif event.getArg("authType") is "admin" or event.getArg("authType") is "member">
					<div class="sep"></div>
					<div class="sidebox">
						<h1>#getProperty("resourceBundleService").getResourceBundle().getResource("membermenu")#</h1>
						<ul class="sidemenu">
							<li>
								<a href="index.cfm?#getProperty('eventParameter')#=member.showMainMenu">
									#getProperty("resourceBundleService").getResourceBundle().getResource("membermenu")#
								</a>
							</li>
							<li>
								<a href="index.cfm?#getProperty('eventParameter')#=member.showProfile">
									#getProperty("resourceBundleService").getResourceBundle().getResource("manageyourprofile")#
								</a>
							</li>
						</ul>
					</div>
				</cfif>
				<cfif news.recordCount gt 0>
					<div class="sep"></div>
					<div class="sidebox">
						<h1>#getProperty("resourceBundleService").getResourceBundle().getResource("latestnews")#</h1>
						<cfloop query="news">
							<h2>#getProperty("resourceBundleService").getLocaleUtils().i18nDateTimeFormat(news.dt_to_post, 3, 3)#</h2>
							<p>#news.headline#</p>
							<p><a href="index.cfm?#getProperty('eventParameter')#=showNewsDetail&newsID=#news.news_id#">#getProperty("resourceBundleService").getResourceBundle().getResource("readmore")#</a></p>
						</cfloop>
					</div>
				</cfif>
				<div class="sep"></div>
				<div class="sidebox">
					<h1>#getProperty("resourceBundleService").getResourceBundle().getResource("links")#</h1>
					<ul class="sidemenu">
						<li><a href="http://www.adobe.com/cfusion/usergroups/index.cfm">Adobe User Groups</a></li>
						<li><a href="http://www.adobe.com/products/coldfusion">ColdFusion</a></li>
						<li><a href="http://www.adobe.com/products/flex">Flex</a></li>
						<li><a href="http://www.adobe.com/go/air/">AIR</a></li>
						<li><a href="http://www.mozilla.com/firefox">Get Firefox</a></li>
					</ul>
				</div>
				<div class="sep"></div>
				<div class="sidebox">
					<h1>#getProperty("resourceBundleService").getResourceBundle().getResource("contact")#</h1>
					<p>
						#getProperty("siteName")#<br />
						<a href="mailto:#getProperty('contactEmail')#">#getProperty("contactEmail")#</a><br />
						#getProperty("siteLocation")#<br />
						<br />
					</p>
				</div>
			</div>
			<div id="main">
				<div class="boxborder">
					<div class="box">#event.getArg("content")#</div>
				</div>
				<br />
			</div>
		</div>
	</div>
	<!-- footer starts here-->
	<div id="footer-wrap">
		<!--- <div id="footer-columns"></div> --->
		<div id="footer-bottom">
			#getProperty("copyrightNotice")# | <a href="mailto:#getProperty('contactEmail')#">#getProperty("contactEmail")#</a> | 
			<a href="http://www.styleshout.com/">#getProperty("resourceBundleService").getResourceBundle().getResource("designby")# styleshout</a>
		</div>
	</div>
</body>
</cfoutput>
</html>
