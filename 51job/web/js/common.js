/**
     * 执行等待函数，如果ifLoad=0打开执行等待页面；如果ifLoad=1关闭执行等待界面；
     * @author Kevinb 2009-8-14
     * @param ifLoad 是否载入标志位
     * @return
     */
	function waitLoad(ifLoad)
　　{
	　　if (ifLoad == 0)
	　　{
		　　 document.all['Loading'].style.display = 'block'; //载入等待
	　　}
	　　else
	　　{
		　　 document.all['Loading'].style.display = 'none'; //取消等待
	　　}
　　}