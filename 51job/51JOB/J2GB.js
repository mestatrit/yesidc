function j2gb(url)
{
	if(url != '')
	{
		location.href = "ht" + "tp://www.51job.com/" + url;
		return false;
	}
	
	if(location.hostname == "big5.51job.com")
	{
		location.href = "ht" + "tp://www.51job.com/" + url;
		return false;
	}
	else
	{
		location.href = "ht" + "tp://big5.51job.com" + url;
		return false;
	}
}