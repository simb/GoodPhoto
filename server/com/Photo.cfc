<cfcomponent persistent="true" table="Photo"  output="false">
	<!---- properties ---->
	
	<cfproperty name="pid" column="id" type="numeric" ormtype="int" fieldtype="id" generator="identity" /> 
	<cfproperty name="title" column="title" type="string" ormtype="string"  /> 
	<cfproperty name="description" column="description" type="string" ormtype="string"  /> 
	<cfproperty name="category" fieldtype="many-to-one" fkcolumn="cid" cfc="Category" missingRowIgnored="true" />
</cfcomponent> 
