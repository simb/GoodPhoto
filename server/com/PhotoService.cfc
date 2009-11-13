<cfcomponent output="false" hint="CFBuilder-Generated:Photo">

	
	<!----
	PHOTO SERVICES

	---->
	<!---- Add Photo ---->

	<cffunction name="createPhoto" returntype="Photo" access="remote">
		<cfargument name="item" type="Photo" required="true" />
		<!---- Auto-generated method
		  Insert a new record in Photo ---->
		<cfset entitysave(item) />

		<!---- return created item ---->
		<cfreturn item/>
	</cffunction>

	<!---- Remove Photo ---->
	<cffunction name="deletePhoto" returntype="void" access="remote">
		<cfargument name="id" type="any" required="true" />
		
		<!---- Auto-generated method
		         Delete a record in the database ---->
		<cfset var primaryKeysMap = { id = id }>
		<cfset var item=entityload("Photo",primaryKeysMap,true)>
		<cfif isnull(item) eq false>
			<cfset entitydelete(item) />
		</cfif>
		<cfreturn />
	</cffunction>

	<!---- Get All Photo ---->
	<cffunction name="getAllPhoto" returntype="Photo[]" access="remote">
		<!---- Auto-generated method
		        Retrieve set of records and return them as a query or array ---->
		<!---- return items ---->
		<cfreturn entityload("Photo") />
	</cffunction>

	<!---- Get All Paged Photo ---->
	<cffunction name="getPhoto_paged" returntype="Photo[]" access="remote">
		<cfargument name="startIndex" type="numeric" required="true" />
		<cfargument name="numItems" type="numeric" required="true" />
		<!---- Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow ---->
		<!---- return paged items ---->
		<cfreturn entityload("Photo",{},"",{offset=startIndex,maxresults=numItems})/>
	</cffunction>

	<!---- Get Photo ---->
	<cffunction name="getPhoto" returntype="Photo" access="remote">
		 <cfargument name="id" type="any" required="true" /> 
		<!---- Auto-generated method
		         Retrieve a single record and return it ---->
		<!---- return item ---->
		<cfset var primaryKeysMap = { id = id }>
		<cfreturn entityload("Photo",primaryKeysMap,true)>
	</cffunction>

	<!---- Save Photo ---->
		<cffunction name="updatePhoto" returntype="Photo" access="remote">
		<cfargument name="item" type="Photo" required="true" />
		<!---- Auto-generated method
		         Update an existing record in the database ---->
		<!---- update Photo ---->
		<cfset entitysave(item) />
		<cfreturn item/>
	</cffunction>

	<!---- Count Photo ---->
	<cffunction name="count" returntype="numeric" access="remote">
	
		<cfreturn ormexecutequery("select count(*) from Photo",true)>
	</cffunction>

</cfcomponent> 
