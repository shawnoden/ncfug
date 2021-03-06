<cfcomponent
	displayname="Meeting"
	output="false"
	hint="A bean which models the Meeting form.">

<!--- This bean was generated by the Rooibos Generator with the following template:
Bean Name: Meeting
Path to Bean: 
Extends: 
Call super.init(): false
Create cfproperties: false
Bean Template:
	meetingID string
	title string
	description string
	dtMeeting numeric 0
	location org.capitolhillusergroup.location.Location #createObject('component', 'org.capitolhillusergroup.location.Location').init()
	connectURL string
	presentations array #arrayNew(1)#
	audit org.capitolhillusergroup.audit.Audit #createObject('component', 'org.capitolhillusergroup.audit.Audit').init()#
Create getMemento method: false
Create setMemento method: false
Create setStepInstance method: false
Create validate method: false
Create validate interior: false
Date Format: MM/DD/YYYY
--->

	<!---
	PROPERTIES
	--->
	<cfset variables.instance = StructNew() />

	<!---
	INITIALIZATION / CONFIGURATION
	--->
	<cffunction name="init" access="public" returntype="Meeting" output="false">
		<cfargument name="meetingID" type="string" required="false" default="" />
		<cfargument name="title" type="string" required="false" default="" />
		<cfargument name="description" type="string" required="false" default="" />
		<cfargument name="dtMeeting" type="numeric" required="false" default="0" />
		<cfargument name="location" type="org.capitolhillusergroup.location.Location" required="false" 
				default="#createObject('component', 'org.capitolhillusergroup.location.Location').init()#" />
		<cfargument name="connectURL" type="string" required="false" default="" />
		<cfargument name="presentations" type="array" required="false" default="#arrayNew(1)#" />
		<cfargument name="audit" type="org.capitolhillusergroup.audit.Audit" required="false" 
				default="#createObject('component', 'org.capitolhillusergroup.audit.Audit').init()#" />

		<!--- run setters --->
		<cfset setMeetingID(arguments.meetingID) />
		<cfset setTitle(arguments.title) />
		<cfset setDescription(arguments.description) />
		<cfset setDtMeeting(arguments.dtMeeting) />
		<cfset setLocation(arguments.location) />
		<cfset setConnectURL(arguments.connectURL) />
		<cfset setPresentations(arguments.presentations) />
		<cfset setAudit(arguments.audit) />

		<cfreturn this />
 	</cffunction>

	<!---
	ACCESSORS
	--->
	<cffunction name="setMeetingID" access="public" returntype="void" output="false">
		<cfargument name="meetingID" type="string" required="true" />
		<cfset variables.instance.meetingID = arguments.meetingID />
	</cffunction>
	<cffunction name="getMeetingID" access="public" returntype="string" output="false">
		<cfreturn variables.instance.meetingID />
	</cffunction>

	<cffunction name="setTitle" access="public" returntype="void" output="false">
		<cfargument name="title" type="string" required="true" />
		<cfset variables.instance.title = arguments.title />
	</cffunction>
	<cffunction name="getTitle" access="public" returntype="string" output="false">
		<cfreturn variables.instance.title />
	</cffunction>

	<cffunction name="setDescription" access="public" returntype="void" output="false">
		<cfargument name="description" type="string" required="true" />
		<cfset variables.instance.description = arguments.description />
	</cffunction>
	<cffunction name="getDescription" access="public" returntype="string" output="false">
		<cfreturn variables.instance.description />
	</cffunction>

	<cffunction name="setDtMeeting" access="public" returntype="void" output="false">
		<cfargument name="dtMeeting" type="numeric" required="true" />
		<cfset variables.instance.dtMeeting = arguments.dtMeeting />
	</cffunction>
	<cffunction name="getDtMeeting" access="public" returntype="numeric" output="false">
		<cfreturn variables.instance.dtMeeting />
	</cffunction>
	
	<cffunction name="setLocation" access="public" output="false" returntype="void">
		<cfargument name="location" type="org.capitolhillusergroup.location.Location" required="true" />
		<cfset variables.instance.location = arguments.location />
	</cffunction>
	<cffunction name="getLocation" access="public" output="false" returntype="org.capitolhillusergroup.location.Location">
		<cfreturn variables.instance.location />
	</cffunction>

	<cffunction name="setConnectURL" access="public" returntype="void" output="false">
		<cfargument name="connectURL" type="string" required="true" />
		<cfset variables.instance.connectURL = arguments.connectURL />
	</cffunction>
	<cffunction name="getConnectURL" access="public" returntype="string" output="false">
		<cfreturn variables.instance.connectURL />
	</cffunction>

	<cffunction name="setPresentations" access="public" returntype="void" output="false">
		<cfargument name="presentations" type="array" required="true" />
		<cfset variables.instance.presentations = arguments.presentations />
	</cffunction>
	<cffunction name="getPresentations" access="public" returntype="array" output="false">
		<cfreturn variables.instance.presentations />
	</cffunction>

	<cffunction name="setAudit" access="public" returntype="void" output="false">
		<cfargument name="audit" type="org.capitolhillusergroup.audit.Audit" required="true" />
		<cfset variables.instance.audit = arguments.audit />
	</cffunction>
	<cffunction name="getAudit" access="public" returntype="org.capitolhillusergroup.audit.Audit" output="false">
		<cfreturn variables.instance.audit />
	</cffunction>

</cfcomponent>