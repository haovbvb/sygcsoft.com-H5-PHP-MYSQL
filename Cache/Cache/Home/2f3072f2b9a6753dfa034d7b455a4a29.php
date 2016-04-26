<?php if (!defined('THINK_PATH')) exit();?><!doctype html><html><head><meta charset="utf-8"><meta http-equiv="X-UA-Compatible" content="IE=edge"><meta name="viewport" content="width=device-width, initial-scale=1"><meta name="keywords" content="<?php echo ($seo_keywords); ?>" /><meta name="description" content="<?php echo ($seo_description); ?>" /><meta name="robots" content="index, follow" /><meta name="Copyright" content="Copyright (c) HuangShaoping" /><meta name="author" content="<?php echo ($site_name); ?>--HuangShaoping"><title><?php echo ($seo_title); ?>-<?php echo ($site_name); ?></title><link rel="stylesheet" href="../Public/css/bootstrap.min.css"><link href="../Public/css/style.css" rel="stylesheet" type="text/css"><script src="../Public/js/jquery.min.js"></script><script src="../Public/js/bootstrap.min.js"></script><script src="../Public/js/jquery.lazyload.js"></script><link rel="shortcut icon" href="/favicon.png"><!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries --><!-- WARNING: Respond.js doesn't work if you view the page via file:// --><!--[if lt IE 9]><script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script><script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script><![endif]--></head><body><!--头部--><!--
    <div class="container top"><div class="row"><div class="col-xs-12 col-sm-4 col-md-4"><div class="logo"><a href="/" style="float:left"><img src="../Public/images/logo.png" alt="思远高创" title="思远高创" width="212" height="47"></a></div></div><div class="col-xs-12 col-sm-8 col-md-8"><div class="top_rgt"></div></div></div></div>
    --><!--头部结束--><nav id="navbar-example" class="navbar navbar-default navbar-static"><div class="container top"><div class="navbar-header"><button class="navbar-toggle collapsed" type="button" data-toggle="collapse" data-target=".bs-example-js-navbar-collapse"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a class="navbar-brand" href="#"><img src="../Public/images/logo.png"  alt="思远高创" title="思远高创" class="logo-img" ></a></div><div class="navbar-collapse bs-example-js-navbar-collapse collapse" aria-expanded="false" style="height: 1px;"><ul class="nav navbar-nav navbar-right"><li id="nav_0"><a href="/www/PINGPHP/" title="首页" >首页</a></li><li id="nav_20" class="first file"><a href="/www/PINGPHP/index.php?m=Page&a=index&id=20" title="服务">服务</a></li><li id="nav_21" class="folder"><a href="/www/PINGPHP/index.php?m=Article&a=index&id=21" title="案例">案例</a></li><li id="nav_22" class="file"><a href="/www/PINGPHP/index.php?m=Article&a=index&id=22" title="方案">方案</a></li><li id="nav_1" class="folder"><a href="/www/PINGPHP/index.php?m=Article&a=index&id=1" title="资讯">资讯</a></li><li id="nav_8" class="foot folder"><a href="/www/PINGPHP/index.php?m=Page&a=index&id=8" title="关于">关于</a></li></ul></div><!-- /.nav-collapse --></div><!-- /.container-fluid --></nav><!--头部结束--><!--banner--><div class="jumbotron about_bg_fluid"><div class="container"><div class="ly"></div><?php if($_GET[id]==21) : ?><h1>成功合作案例</h1><?php else :?><h1>创造交给我们，价值留给你们</h1><?php endif;?><div class="ly2"></div><p>以技术得人心, 以质量占市场; 以诚信得发展, 以服务赢客户</p></div></div><!--banner end--><!--合作案例--><div class="container"><h3>解决方案 <small>聚焦焦点—用事实说话。请欣赏！</small></h3></div><div class="container-fluid about-bg"><div class="ly"></div><div class="container"><div class="row"><?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$r): $mod = ($i % 2 );++$i;?><div class="col-xs-6 col-md-3"><div class="thumbnail-project"  ><div class="box1"><div class="toll_img"><img class="lazy"  data-original="<?php echo (thumb($r['thumb'],245,190,1)); ?>" alt="<?php echo ($r[title]); ?>"></div><div class="toll_info"><a href="<?php echo ($r["url"]); ?>"><h3><?php echo ($r[title]); ?><br/><br/><small><button class="btn btn-default" >点击了解详情></button></small></h3></a></div></div></div></div><?php endforeach; endif; else: echo "" ;endif; ?></div><div id="pages" class="page"><?php echo ($pages); ?></div><br></div></div><!--合作案例结束--><script>
$(document).ready(function(){
  	if(<?php echo ($_GET[id]); ?>==1){
		$('.tab:first').addClass('on');
	}else{
		$('#tab<?php echo ($_GET[id]); ?>').addClass('on');
	}
});

</script><script type="text/javascript">
$(document).ready(function(){
	$('.thumbnail-project .box1').mouseover(function(){
		$(this).stop().animate({"top":"-190px"}, 200); 
	})
	$('.thumbnail-project .box1').mouseout(function(){
		$(this).stop().animate({"top":"0"}, 200); 
	})
})
</script><!--底部--><div class="footer">© 2008-2016 北京思远高创信息技术有限公司版权所有 京ICP备12033387号</div><!--底部结束--><script>
	$("img.lazy").lazyload({
    effect : "fadeIn"
});
	</script></body></html>