<cfcomponent 
	displayname="RSVPDAO" 
	output="false" 
	hint="Base RSVPDAO">

	<!---
	INITIALIZATION / CONFIGURATION
	--->
	<cffunction name="init" access="public" output="false" returntype="RSVPDAO" hint="Constructor for this CFC.">
		<cfreturn this />
	</cffunction>

	<cffunction name="setDatasource" access="public" output="false" returntype="void"
		hint="Dependency: injected">
		<cfargument name="datasource" type="org.capitolhillusergroup.datasource.Datasource" required="true" />
		<cfset variables.datasource = arguments.datasource />
	</cffunction>	
	<cffunction name="getDatasource" access="private" output="false" returntype="org.capitolhillusergroup.datasource.Datasource">
		<cfreturn variables.datasource />
	</cffunction>
	
	<!---
	PUBLIC FUNCTIONS - CRUD - DATABASE SPECIFIC OBJECTS THAT EXTEND THIS OBJECT MUST OVERRIDE THESE METHODS
	--->
	<cffunction name="fetch" access="public" output="false" returntype="void" hint="Populates an RSVP bean">
		<cfargument name="rsvp" type="RSVP" required="true" />
	</cffunction>
	
	<cffunction name="save" access="public" output="false" returntype="void" hint="Saves an RSVP">
		<cfargument name="rsvp" type="RSVP" required="true" />
	</cffunction>
	
	<cffunction name="create" access="private" output="false" returntype="void" hint="Creates a new RSVP">
		<cfargument name="rsvp" type="RSVP" required="true" />
	</cffunction>

	<cffunction name="update" access="private" output="false" returntype="void" hint="Updates an RSVP">
		<cfargument name="rsvp" type="RSVP" required="true" />
	</cffunction>
	
	<cffunction name="delete" access="public" output="false" returntype="void" hint="Deletes an RSVP">
		<cfargument name="rsvp" type="RSVP" required="true" />
	</cffunction>
	
</cfcomponent>