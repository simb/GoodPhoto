<cfcomponent output="false" hint="CFBuilder-Generated:Category">

	
	<!----
	CATEGORY SERVICES

	---->
	<!---- Add Category ---->

	<cffunction name="createCategory" returntype="Category" access="remote">
		<cfargument name="item" type="Category" required="true" />
		<!---- Auto-generated method
		  Insert a new record in Category ---->
		<cfset entitysave(item) />

		<!---- return created item ---->
		<cfreturn item/>
	</cffunction>

	<!---- Remove Category ---->
	<cffunction name="deleteCategory" returntype="void" access="remote">
		<cfargument name="id" type="any" required="true" />
		
		<!---- Auto-generated method
		         Delete a record in the database ---->
		<cfset var primaryKeysMap = { id = id }>
		<cfset var item=entityload("Category",primaryKeysMap,true)>
		<cfif isnull(item) eq false>
			<cfset entitydelete(item) />
		</cfif>
		<cfreturn />
	</cffunction>

	<!---- Get All Category ---->
	<cffunction name="getAllCategory" returntype="Category[]" access="remote">
		<!---- Auto-generated method
		        Retrieve set of records and return them as a query or array ---->
		<!---- return items ---->
		<cfreturn entityload("Category") />
	</cffunction>

	<!---- Get All Paged Category ---->
	<cffunction name="getCategory_paged" returntype="Category[]" access="remote">
		<cfargument name="startIndex" type="numeric" required="true" />
		<cfargument name="numItems" type="numeric" required="true" />
		<!---- Auto-generated method
		         Return a page of numRows number of records as an array or query from the database for this startRow ---->
		<!---- return paged items ---->
		<cfreturn entityload("Category",{},"",{offset=startIndex,maxresults=numItems})/>
	</cffunction>

	<!---- Get Category ---->
	<cffunction name="getCategory" returntype="Category" access="remote">
		 <cfargument name="id" type="any" required="true" /> 
		<!---- Auto-generated method
		         Retrieve a single record and return it ---->
		<!---- return item ---->
		<cfset var primaryKeysMap = { id = id }>
		<cfreturn entityload("Category",primaryKeysMap,true)>
	</cffunction>

	<!---- Save Category ---->
		<cffunction name="updateCategory" returntype="Category" access="remote">
		<cfargument name="item" type="Category" required="true" />
		<!---- Auto-generated method
		         Update an existing record in the database ---->
		<!---- update Category ---->
		<cfset entitysave(item) />
		<cfreturn item/>
	</cffunction>

	<!---- Count Category ---->
	<cffunction name="count" returntype="numeric" access="remote">
	
		<cfreturn ormexecutequery("select count(*) from Category",true)>
	</cffunction>

</cfcomponent> 
