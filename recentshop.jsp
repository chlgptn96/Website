<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<style>
    .skyscraper.open {
    right: -90px;
    background: #fff;
    font-size: 14px;
    position: fixed;
    right: 465;
    bottom: 0;
    right: -465px;
    width: 465px;
    height: 100%;
    min-height: 360px;
    z-index: 110;
    transition: right 0.3s ease-in-out;
}
.skyscraper {
    position: fixed;
    right: 0;
    bottom: 0;
    right: 0px;
    width: 465px;
    height: 100%;
    min-height: 360px;
    z-index: 110;
    transition: right 0.3s ease-in-out;
    list-style: none;
}
.skyscraper .sky_bnr {
    position: absolute;
    left: -80px;
    bottom: 60px;
    width: 80px;
    max-height: 179px;
    text-align: center;
    background: #fff;
    font-size: 14px;
	display: block;
    color: -internal-root-color;
     
    
}

.sky_bnr li{
	display: list-item;
    text-align: -webkit-match-parent;
    color: #fff;
}


.sky_bnr li a {
    display: block;
    width: 100%;
    height: 100%;
}

.sky_bnr a{
	text-decoration: none;
    color: inherit;
}
.sky_bnr .recently {
    height: 68px;
    padding-top: 16px;
    background-color: #000;
    font-size: 12px;
    overflow: hidden;
    
    padding: 16px 0px 0px;
   
}


.sky_bnr .recently  a {
    display: block;
    width: 100%;
    height: 100%;
	text-decoration: none;
    color: inherit;

}
.sky_bnr .recently p {
    height: 29px;
    font-size: 14px;
    color: #8d685a;
    
}
.sky_bnr .recently .a span {
    display: block;
    height: 13px;
    margin-top: 10px;
    line-height: 0;

}
.sky_bnr .gotop {
    height: 43px;
    padding-bottom: 16px;
    background-color: #000;
    color: #fff;
    font-size: 12px;
    border-right: 0;
    overflow: hidden;
    padding: 0px 0px 16px;
    
}

.sky_bnr .gotop a {
    
    text-decoration: none;
    color: inherit;
    
    
}
.sky_bnr .gotop :before {
    content: '';
    display: block;
    width: 66px;
    height: 1px;
    background-color: rgba(255,255,255,0.2);
    margin: 0 auto 12px;
}
.sky_bnr .gotop a:-webkit-any-link {
    color: -webkit-link;
    cursor: pointer;
    text-decoration: underline;
}

.skyscraper html {
    color: -internal-root-color;
}

body, h1, h2, h3, h4, h5, h6, ul, ol, dl, li, dt, dd, p, img, button {
    margin: 0;
    padding: 0;
}
    
    </style>
<body>
	<div class="skyscraper">
			<div class="sky_bnr">
				<ul>
					
					<li class="recently">
					<a href="javascript:void(0);" 
					onClick="gaEventCommon('PC_공통_액션바', '최근 본 쇼핑', '최근 본 쇼핑', '', '');">
					<span>최근 본 쇼핑</span>
					<p class="recent_shopping_infomation_count">0</p></a></li>
					
					<li class="gotop"><a href="#top">TOP</a></li>
				</ul>
			</div>
			<div class="sky_cont">
				<div class="sky_wrap recently_wrap">
					<h2>최근 본 쇼핑정보 <span class="counter recent_shopping_infomation_count">0</span></h2>
					<p class="close"><button type="button"><span class="ico_closer"><span class="a11y_sr-only">닫기</span></span></button></p>
					<div class="list nodata" style="display: none;" id="recent_shopping_infomation_none">최근 본 쇼핑정보가 없습니다.</div>
					<div class="list">
						<p class="clear_items"><button type="button" id="remove-recent_shopping_infomation">전체 삭제</button></p>
						<template id="recent_shopping_infomation_goods_tmpl">
							<li class="item">
								<div class="figure">
									<p class="photo"><a href="#"><img src="" alt=""/></a></p>
								</div>
								<a href="#" class="info">
									<p class="seller"></p>
									<p class="title"></p>
									<p class="price"></p>
								</a>
								<div class="favorite">
									<button type="button" role="checkbox" aria-checked="false" class="manual_fn"><span class="ico_favorite"><span class="a11y_sr-only">찜하기</span></span></button>
								</div>
							</li>
						</template>
						<template id="recent_shopping_infomation_category_tmpl">
							<li class="item">
								<div class="figure">
									<p class="category"><a href="javascript:void(0);">카테고리</a></p>
								</div>
								<a href="#" class="info"></a>
							</li>
						</template>
						<template id="recent_shopping_infomation_search_tmpl">
							<li class="item">
								<div class="figure">
									<p class="search"><a href="javascript:void(0);">검색</a></p>
								</div>
								<a href="#" class="info"></a>
							</li>
						</template>
						<ul id="area_recent_shopping_infomation">
						</ul>
					</div>
				</div>
			</div>
		</div>
</body>
</html>