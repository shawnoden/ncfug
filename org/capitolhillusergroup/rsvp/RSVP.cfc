<cfcomponent
	displayname="RSVP"
	output="false"
	hint="A bean which models the RSVP form.">

<!--- This bean was generated by the Rooibos Generator with the following template:
Bean Name: RSVP
Path to Bean: 
Extends: 
Call super.init(): false
Create cfproperties: false
Bean Template:
	rsvpID string 
	meetingID string 
	personID string 
	firstName string 
	lastName string 
	email string 
	comments string 
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
	<cffunction name="init" access="public" returntype="RSVP" output="false">
		<cfargument name="rsvpID" type="string" required="false" default="" />
		<cfargument name="meetingID" type="string" required="false" default="" />
		<cfargument name="personID" type="string" required="false" default="" />
		<cfargument name="firstName" type="string" required="false" default="" />
		<cfargument name="lastName" type="string" required="false" default="" />
		<cfargument name="email" type="string" required="false" default="" />
		<cfargument name="comments" type="string" required="false" default="" />
		<cfargument name="audit" type="org.capitolhillusergroup.audit.Audit" required="false" 
				default="#createObject('component', 'org.capitolhillusergroup.audit.Audit').init()#" />

		<!--- run setters --->
		<cfset setRsvpID(arguments.rsvpID) />
		<cfset setMeetingID(arguments.meetingID) />
		<cfset setPersonID(arguments.personID) />
		<cfset setFirstName(arguments.firstName) />
		<cfset setLastName(arguments.lastName) />
		<cfset setEmail(arguments.email) />
		<cfset setComments(arguments.comments) />
		<cfset setAudit(arguments.audit) />

		<cfreturn this />
 	</cffunction>

	<!---
	ACCESSORS
	--->
	<cffunction name="setRsvpID" access="public" returntype="void" output="false">
		<cfargument name="rsvpID" type="string" required="true" />
		<cfset variables.instance.rsvpID = arguments.rsvpID />
	</cffunction>
	<cffunction name="getRsvpID" access="public" returntype="string" output="false">
		<cfreturn variables.instance.rsvpID />
	</cffunction>

	<cffunction name="setMeetingID" access="public" returntype="void" output="false">
		<cfargument name="meetingID" type="string" required="true" />
		<cfset variables.instance.meetingID = arguments.meetingID />
	</cffunction>
	<cffunction name="getMeetingID" access="public" returntype="string" output="false">
		<cfreturn variables.instance.meetingID />
	</cffunction>

	<cffunction name="setPersonID" access="public" returntype="void" output="false">
		<cfargument name="personID" type="string" required="true" />
		<cfset variables.instance.personID = arguments.personID />
	</cffunction>
	<cffunction name="getPersonID" access="public" returntype="string" output="false">
		<cfreturn variables.instance.personID />
	</cffunction>

	<cffunction name="setFirstName" access="public" returntype="void" output="false">
		<cfargument name="firstName" type="string" required="true" />
		<cfset variables.instance.firstName = arguments.firstName />
	</cffunction>
	<cffunction name="getFirstName" access="public" returntype="string" output="false">
		<cfreturn variables.instance.firstName />
	</cffunction>

	<cffunction name="setLastName" access="public" returntype="void" output="false">
		<cfargument name="lastName" type="string" required="true" />
		<cfset variables.instance.lastName = arguments.lastName />
	</cffunction>
	<cffunction name="getLastName" access="public" returntype="string" output="false">
		<cfreturn variables.instance.lastName />
	</cffunction>

	<cffunction name="setEmail" access="public" returntype="void" output="false">
		<cfargument name="email" type="string" required="true" />
		<cfset variables.instance.email = arguments.email />
	</cffunction>
	<cffunction name="getEmail" access="public" returntype="string" output="false">
		<cfreturn variables.instance.email />
	</cffunction>

	<cffunction name="setComments" access="public" returntype="void" output="false">
		<cfargument name="comments" type="string" required="true" />
		<cfset variables.instance.comments = arguments.comments />
	</cffunction>
	<cffunction name="getComments" access="public" returntype="string" output="false">
		<cfreturn variables.instance.comments />
	</cffunction>

	<cffunction name="setAudit" access="public" returntype="void" output="false">
		<cfargument name="audit" type="org.capitolhillusergroup.audit.Audit" required="true" />
		<cfset variables.instance.audit = arguments.audit />
	</cffunction>
	<cffunction name="getAudit" access="public" returntype="org.capitolhillusergroup.audit.Audit" output="false">
		<cfreturn variables.instance.audit />
	</cffunction>

</cfcomponent>