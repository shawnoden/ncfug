<cfcomponent
	displayname="PhotoAlbum"
	output="false"
	hint="A bean which models the PhotoAlbum form.">

<!--- This bean was generated by the Rooibos Generator with the following template:
Bean Name: PhotoAlbum
Path to Bean: 
Extends: 
Call super.init(): false
Create cfproperties: false
Bean Template:
	photoAlbumID string 
	title string 
	description string 
	photos query #queryNew()#
	audit org.capitolhillusergroup.audit.Audit #createObject('component', 'org.capitolhillusergroup.audit.Audit')#
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
	<cffunction name="init" access="public" returntype="PhotoAlbum" output="false">
		<cfargument name="photoAlbumID" type="string" required="false" default="" />
		<cfargument name="title" type="string" required="false" default="" />
		<cfargument name="description" type="string" required="false" default="" />
		<cfargument name="photos" type="query" required="false" default="#queryNew('id')#" />
		<cfargument name="audit" type="org.capitolhillusergroup.audit.Audit" required="false" 
				default="#createObject('component', 'org.capitolhillusergroup.audit.Audit').init()#" />

		<!--- run setters --->
		<cfset setPhotoAlbumID(arguments.photoAlbumID) />
		<cfset setTitle(arguments.title) />
		<cfset setDescription(arguments.description) />
		<cfset setPhotos(arguments.photos) />
		<cfset setAudit(arguments.audit) />

		<cfreturn this />
 	</cffunction>

	<!---
	ACCESSORS
	--->
	<cffunction name="setPhotoAlbumID" access="public" returntype="void" output="false">
		<cfargument name="photoAlbumID" type="string" required="true" />
		<cfset variables.instance.photoAlbumID = arguments.photoAlbumID />
	</cffunction>
	<cffunction name="getPhotoAlbumID" access="public" returntype="string" output="false">
		<cfreturn variables.instance.photoAlbumID />
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

	<cffunction name="setPhotos" access="public" returntype="void" output="false">
		<cfargument name="photos" type="query" required="true" />
		<cfset variables.instance.photos = arguments.photos />
	</cffunction>
	<cffunction name="getPhotos" access="public" returntype="query" output="false">
		<cfreturn variables.instance.photos />
	</cffunction>

	<cffunction name="setAudit" access="public" returntype="void" output="false">
		<cfargument name="audit" type="org.capitolhillusergroup.audit.Audit" required="true" />
		<cfset variables.instance.audit = arguments.audit />
	</cffunction>
	<cffunction name="getAudit" access="public" returntype="org.capitolhillusergroup.audit.Audit" output="false">
		<cfreturn variables.instance.audit />
	</cffunction>

</cfcomponent>