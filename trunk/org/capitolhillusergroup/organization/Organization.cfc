<cfcomponent
	displayname="Organization"
	output="false"
	hint="A bean which models the Organization form.">

<!--- This bean was generated by the Rooibos Generator with the following template:
Bean Name: Organization
Path to Bean: 
Extends: 
Call super.init(): false
Create cfproperties: false
Bean Template:
	organizationID string 
	organization string 
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
	<cffunction name="init" access="public" returntype="Organization" output="false">
		<cfargument name="organizationID" type="string" required="false" default="" />
		<cfargument name="organization" type="string" required="false" default="" />
		<cfargument name="audit" type="org.capitolhillusergroup.audit.Audit" required="false" 
				default="#createObject('component', 'org.capitolhillusergroup.audit.Audit').init()#" />

		<!--- run setters --->
		<cfset setOrganizationID(arguments.organizationID) />
		<cfset setOrganization(arguments.organization) />
		<cfset setAudit(arguments.audit) />

		<cfreturn this />
 	</cffunction>

	<!---
	ACCESSORS
	--->
	<cffunction name="setOrganizationID" access="public" returntype="void" output="false">
		<cfargument name="organizationID" type="string" required="true" />
		<cfset variables.instance.organizationID = arguments.organizationID />
	</cffunction>
	<cffunction name="getOrganizationID" access="public" returntype="string" output="false">
		<cfreturn variables.instance.organizationID />
	</cffunction>

	<cffunction name="setOrganization" access="public" returntype="void" output="false">
		<cfargument name="organization" type="string" required="true" />
		<cfset variables.instance.organization = arguments.organization />
	</cffunction>
	<cffunction name="getOrganization" access="public" returntype="string" output="false">
		<cfreturn variables.instance.organization />
	</cffunction>

	<cffunction name="setAudit" access="public" returntype="void" output="false">
		<cfargument name="audit" type="org.capitolhillusergroup.audit.Audit" required="true" />
		<cfset variables.instance.audit = arguments.audit />
	</cffunction>
	<cffunction name="getAudit" access="public" returntype="org.capitolhillusergroup.audit.Audit" output="false">
		<cfreturn variables.instance.audit />
	</cffunction>

</cfcomponent>