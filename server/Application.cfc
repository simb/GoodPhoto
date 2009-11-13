component 
{
		this.datasource = "goodphoto";
		this.name = "GoodPhoto";
		this.ormenabled = true;
		this.ormsettings = { logsql="true",dbcreate="update"};
	
	
	public boolean function onRequestStart()
	 output="false"
	{
		if ( isDefined('url.reset') ) {
			ormReload();
		}
		return true;
	}
	private void function setApplication()
	{
		
	}
}