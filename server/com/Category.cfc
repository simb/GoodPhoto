<cfcomponent persistent="true" table="Category"  output="false">
	<!---- properties ---->
	
	<cfproperty name="cid" column="id" type="numeric" ormtype="int" fieldtype="id" generator="identity"/> 
	<cfproperty name="title" column="title" type="string" ormtype="string"  /> 
	<cfproperty name="description" column="description" type="string" ormtype="string"  /> 
	<cfproperty name="creationDate" column="creationDate" type="date" ormtype="timestamp"  /> 
	<cfproperty name="photos" type="array" fieldType="one-to-many" cfc="Photo" fkcolumn="id" cascade="all-delete-orphan"  />
</cfcomponent> 
