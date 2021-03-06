<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<title>新巴巴运动网-电子商城</title>
<link rel="stylesheet" href="/res/css/style.css" />
<script src="/res/js/jquery.js"></script>
<script src="/res/js/com.js"></script>
<script type="text/javascript">
//登陆
function login(){
	window.location.href = "/login.shtml?returnUrl="+window.location.href;
}
</script>
</head>
<body>
<%@ include file="../common/bar.jsp" %>
<div class="w loc">
	<div class="h-title">
		<div class="h-logo"><a href="http://localhost:8080"><img src="/res/img/pic/logo-1.png" /></a></div>
	    <div class="h-search">
	      	<input type="text" />
	        <div class="h-se-btn"><a href="#">搜索</a></div>
	    </div>
	</div>
	<%@ include file="../common/cart.jsp" %>
</div>

<div class="w ofc">
	<%@ include file="../common/left.jsp" %>
	<div class="r wr">
		<h2 class="h2 h2_r rel"><samp></samp><em title="热卖推荐">&nbsp;&nbsp;&nbsp;热卖推荐</em></h2>
		<div class="box bg_white">
			<ul class="uls i_150x150 x4_150x150">
				<li>
					<a href="productDetail.jsp" title="富一代" target="_blank" class="pic"><img src="	/res/img/pic/ppp.jpg" alt="依琦莲2014瑜伽服套装新" /></a>
					<dl>
						<dt><a href="productDetail.jsp" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
						<dd class="h40">依琦莲2014瑜伽服套装新！</dd>
						<dd class="orange">￥120 ~ ￥150</dd>
						<dd><a href="productDetail.jsp" title="立即抢购" class="inb btn70x21 mr">立即抢购</a></dd>
					</dl>
				</li>
				<li>
					<a href="productDetail.jsp" title="富一代" target="_blank" class="pic"><img src="	/res/img/pic/ppp.jpg" alt="依琦莲2014瑜伽服套装新" /></a>
					<dl>
						<dt><a href="productDetail.jsp" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
						<dd class="h40">依琦莲2014瑜伽服套装新！</dd>
						<dd class="orange">￥120 ~ ￥150</dd>
						<dd><a href="productDetail.jsp" title="立即抢购" class="inb btn70x21 mr">立即抢购</a></dd>
					</dl>
				</li>
				<li>
					<a href="productDetail.jsp" title="富一代" target="_blank" class="pic"><img src="	/res/img/pic/ppp.jpg" alt="依琦莲2014瑜伽服套装新" /></a>
					<dl>
						<dt><a href="productDetail.jsp" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
						<dd class="h40">依琦莲2014瑜伽服套装新！</dd>
						<dd class="orange">￥120 ~ ￥150</dd>
						<dd><a href="productDetail.jsp" title="立即抢购" class="inb btn70x21 mr">立即抢购</a></dd>
					</dl>
				</li>
				<li>
					<a href="productDetail.jsp" title="富一代" target="_blank" class="pic"><img src="	/res/img/pic/ppp.jpg" alt="依琦莲2014瑜伽服套装新" /></a>
					<dl>
						<dt><a href="productDetail.jsp" title="依琦莲2014瑜伽服套装新" target="_blank">依琦莲2014瑜伽服套装新</a></dt>
						<dd class="h40">依琦莲2014瑜伽服套装新！</dd>
						<dd class="orange">￥120 ~ ￥150</dd>
						<dd><a href="productDetail.jsp" title="立即抢购" class="inb btn70x21 mr">立即抢购</a></dd>
					</dl>
				</li>
			</ul>
		</div>

		<h2 class="h2 h2_filter mt"><em title="商品筛选">商品筛选</em><cite><a href="javascript:void(0);" id="filterRest" title="重置筛选条件">重置筛选条件</a></cite></h2>
			<ul class="uls filter">
				<c:if test="${filter}">
					<li><label>已选条件：</label>
						<p class="sel">
							<c:forEach items="${filterMap}" var="fm">
								<a href="javascript:void(0);">
									<em>${fm.key}：</em>${fm.value}
									<cite title="关闭此筛选条件">X</cite></a>
							</c:forEach>
						</p>
					</li>
				</c:if>
				<c:if test="${params.brandId == null}">
					<li><b>品牌：</b><p>
						<a href="javascript:void(0);" title="不限" class="here">不限</a>
						<c:forEach items="${brands}" var="brand">
							<a href="javascript:void(0);" onclick="window.location.href='/product/display/list.shtml?brandId=${brand.id}&brandName=${brand.name}&typeId=${params.typeId}&typeName=${params.typeName}&feature=${params.feature}&featureName=${params.featureName}'" title="${brand.name}">${brand.name}</a>
						</c:forEach>
					</p></li>
				</c:if>
				<%--<li><b>价格：</b><p>
					<a href="javascript:void(0);" title="不限" class="here">不限</a>
					<a href="javascript:void(0);" title="1-99">0-79</a>
					<a href="javascript:void(0);" title="100-199">80-199</a>
					<a href="javascript:void(0);" title="200-499">200-299</a>
					<a href="javascript:void(0);" title="200-499">300-499</a>
					<a href="javascript:void(0);" title="200-499">500-599</a>
					<a href="javascript:void(0);" title="200-499">600以上</a>
				</p></li>--%>
				<c:if test="${params.typeId == null}">
					<li><b>类型：</b><p>
						<a href="javascript:void(0);" title="不限" class="here">不限</a>
						<c:forEach items="${types}" var="type">
							<a href="javascript:void(0);" onclick="window.location.href='/product/display/list.shtml?brandId=${params.brandId}&brandName=${params.brandName}&typeId=${type.id}&typeName=${type.name}&feature=${params.feature}&featureName=${params.featureName}'" title="${type.name}'">${type.name}</a>
						</c:forEach>
					</p></li>
				</c:if>
				<c:if test="${params.feature == null || '' == params.feature}">
					<li><b>材质：</b><p>
						<a href="javascript:void(0);" title="不限" class="here">不限</a>
						<c:forEach items="${materials}" var="material">
							<a href="javascript:void(0);" onclick="window.location.href='/product/display/list.shtml?brandId=${params.brandId}&brandName=${params.brandName}&typeId=${params.typeId}&typeName=${params.typeName}&feature=${material.id}&featureName=${material.name}'" title="${material.name}">${material.name}</a>
						</c:forEach>
					</p></li>
				</c:if>
				<%--<li><b>适用人群：</b><p>
					<a href="javascript:void(0);" title="不限" class="here">不限</a>
					<a href="javascript:void(0);" title="男士">男士</a>
					<a href="javascript:void(0);" title="女士">女士</a>
					<a href="javascript:void(0);" title="儿童">儿童</a>
					<a href="javascript:void(0);" title="中性">中性</a>
				</p></li>--%>
			</ul>
			<div class="sort_type">
				<a href="javascript:void(0);" title="销量" class="sales">销量</a>
				<a href="javascript:void(0);" title="价格" class="price">价格</a>
				<a href="javascript:void(0);" title="上架时间" class="time">上架时间</a>
			</div>
			<div class="mt ofc">
				<ul class="uls i_150x150 x4_150x150b">
					<c:forEach items="${products.results}" var="product">
						<li>
							<a href="/html/product/${product.id}.html" title="${product.name}" target="_blank" class="pic"><img src="${product.imageUrl}" alt="${product.name}" /></a>
							<dl>
								<!-- dt 10个文字+... -->
								<dt><a href="/product/detail.shtml?id=${product.id}" title="${product.name}" target="_blank">${product.name}</a></dt>
								<!-- dt 25个文字+... -->
								<dd class="h40">${product.name}</dd>
								<dd class="orange">￥128.00</dd>
								<dd>北京有货</dd>
								<dd><a href="#" title="加入购物车" class="inb btn70x21 mr">加入购物车</a></dd>
							</dl>
							<img src="/res/img/pic/hot.gif" alt="热门" class="type" />
						</li>
					</c:forEach>
				</ul>
			<div class="page pb15">
				<span class="r inb_a page_b">
					<span id="previousNo" class="inb" title="上一页"><samp>&lt;&lt;</samp>上一页</span><a href="javascript:void(0);" id="previous" title="上一页" style="display:none"><samp>&lt;&lt;</samp>上一页</a><span title="第1页" class="inb current">1</span><!--a href="#" title="第1页">1</a--><a href="#" title="第2页">2</a><a href="#" title="第3页">3</a><a href="#" title="第4页">4</a><a href="#" title="第5页">5</a><span class="break">...</span><a href="#" title="第16页">16</a><span id="nextNo" class="inb" title="下一页" style="display:none">下一页<samp>&gt;&gt;</samp></span><a href="javascript:void(0);" id="next" title="下一页">下一页<samp>&gt;&gt;</samp></a>共<var id="pageTotal" class="orange">0</var>页 到第<input type="text" id="number" name="number" class="txts" size="3" />页 <input type="button" id="skip" class="hand btn60x20" value='确定' />
				</span>
			</div>
	</div>
</div>
</div>
<%@ include file="../common/footer.jsp" %>
</body>
</html>