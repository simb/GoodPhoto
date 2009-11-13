<cfcomponent>
<cfset this.name = "myORMApplication">
<cfset this.ormenabled = "true">
<cfset this.datasource = "goodphoto">
<!---- ORM Setting not suggeted for production use---->
<cfset this.ormsettings = {autorebuild="true"}>
</cfcomponent>
