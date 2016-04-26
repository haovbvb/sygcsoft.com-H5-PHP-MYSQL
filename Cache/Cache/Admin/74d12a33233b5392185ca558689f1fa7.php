<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=<?php echo C('DEFAULT_CHARSET');?>" /><title><?php echo L('welcome');?></title><link rel="stylesheet" type="text/css" href="__ROOT__/Public/Css/style.css" /><script type="text/javascript" src="__ROOT__/Public/Js/jquery.min.js"></script><script type="text/javascript" src="__ROOT__/Public/Js/jquery.artDialog.js?skin=default"></script><script type="text/javascript" src="__ROOT__/Public/Js/iframeTools.js"></script><script type="text/javascript" src="__ROOT__/Public/Js/jquery.form.js"></script><script type="text/javascript" src="__ROOT__/Public/Js/jquery.validate.js"></script><script type="text/javascript" src="__ROOT__/Public/Js/MyDate/WdatePicker.js"></script><script type="text/javascript" src="__ROOT__/Public/Js/jquery.colorpicker.js"></script><script type="text/javascript" src="__ROOT__/Public/Js/my.js"></script><script type="text/javascript" src="__ROOT__/Public/Js/swfupload.js"></script><script language="JavaScript"><!--
var ROOT =	 '__ROOT__';
var URL = '__URL__';
var APP	 =	 '__APP__';
var PUBLIC = '__PUBLIC__';
function confirm_delete(url){
	art.dialog.confirm("<?php echo L('real_delete');?>", function(){location.href = url;});
}
//--></script></head><body width="100%"><div id="loader" ><?php echo L('load_page');?></div><div id="result" class="result none"></div><div class="mainbox"><?php if(empty($_GET['isajax'])): ?><div id="nav" class="mainnav_title"><div id="lang"><?php if(APP_LANG): parse_str($_SERVER['QUERY_STRING'],$urlarr); unset($urlarr[l]); $url='index.php?'.http_build_query($urlarr); if(is_array($Lang)): $i = 0; $__LIST__ = $Lang;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$langvo): $mod = ($i % 2 );++$i;?><a href="<?php echo ($url); ?>&l=<?php echo ($langvo["mark"]); ?>" <?php if($langvo[mark]==$_SESSION['YP_lang']): ?>class="on"<?php endif; ?>><?php echo ($langvo["name"]); ?></a><?php endforeach; endif; else: echo "" ;endif; endif; ?></div><ul><a href="<?php echo U($nav[bnav][model].'/'.$nav[bnav][action],$nav[bnav][data]);?>"><?php echo ($nav["bnav"]["name"]); ?></a>|
	<?php if(is_array($nav["nav"])): $i = 0; $__LIST__ = $nav["nav"];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vonav): $mod = ($i % 2 );++$i; if($vonav[data][isajax]): ?><a href="javascript:void(0);" onclick="openwin('<?php echo ($vonav[action]); ?>','<?php echo U($vonav[model].'/'.$vonav[action],$vonav[data]);?>','<?php echo ($vonav["name"]); ?>',600,440)"><?php echo ($vonav["name"]); ?></a>|
	<?php else: ?><a href="<?php echo U($vonav[model].'/'.$vonav[action],$vonav[data]);?>"><?php echo ($vonav["name"]); ?></a>|<?php endif; endforeach; endif; else: echo "" ;endif; ?></ul></div><script>	//|str_replace=__ROOT__.'/index.php','',###
	var onurl ='<?php echo ($_SERVER["REQUEST_URI"]); ?>';
	jQuery(document).ready(function(){
		$('#nav ul a ').each(function(i){
		if($('#nav ul a').length>1){
			var thisurl= $(this).attr('href');
			thisurl = thisurl.replace('&menuid=<?php echo cookie("menuid");?>','');
			if(onurl.indexOf(thisurl) == 0 ) $(this).addClass('on').siblings().removeClass('on');
		}else{
			$('#nav ul').hide();
		}
		});
		if($('#nav ul a ').hasClass('on')==false){
		$('#nav ul a ').eq(0).addClass('on');
		}
	});
	</script><?php endif; ?><form id="myform" name="myform" method="post" action=""><div class="table-list"><table cellpadding=0 cellspacing=0  width="100%"><thead><tr><th style="width:4%">选择</th><th align="left" style="width:20%">名称</th><th align="left" style="width:15%">大小</th><th align="left" style="width:15%">时间</th><th align="left" style="width:8%">下载</th><th align="left" style="width:8%">导入</th></tr></thead><tbody><?php if(is_array($files)): $i = 0; $__LIST__ = $files;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?><tr><td><input type="checkbox" name="files[]" value="<?php echo ($vo["path"]); ?>"></td><td><?php echo ($vo["file"]); ?></td><td><?php echo (byte_format($vo["size"])); ?></td><td><?php echo (todate($vo["time"])); ?></td><td><a href="./Public/Data/<?php echo ($vo["file"]); ?>">下载</a></td><td><a href="javascript:if(confirm('确认要导入数据吗？')) window.location='<?php echo U($module_name.'/recover?do=import&filename='.$vo[name]);?>'">导入</a></td></tr><?php endforeach; endif; else: echo "" ;endif; ?></tbody></table></div><div class="btn"><input type="checkbox" value="" id="check_box" onclick="selectall('files[]');">全选&nbsp;&nbsp;
			 <input type="button" class="button"  name="" value="删除" onclick="myform.action='<?php echo U($module_name.'/recover?do=delete');?>'; $('#myform').submit();"></div></form></body></html>