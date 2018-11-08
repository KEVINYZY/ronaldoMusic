<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分类歌单</title>
    <link rel="stylesheet" href="../staticFile/UIframe/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/public.css" media="all">
    <link rel="stylesheet" href="../staticFile/css/songsheet/songsheet.css" media="all">
    <link rel="stylesheet" href="../staticFile/UIframe/paging/paging.css" media="all">
    <style>
        #ssheet_box {
            padding-top: 30px;
        }

        #ssheet_box li {
            display: inline-block;
            width: 160px;
            padding-bottom: 20px;
            padding-left: 30px;
        }

        #ssheet_box li img {
            width: 160px;
            height: 160px;
            background: url(../staticFile/images/loading.gif) 50% no-repeat;
        }
    </style>
</head>
<body>

<div>
    <div class="classify-nav">
        <span style="font-size: 16px;padding-left: 10px">全 部 分 类</span>
        <div style="padding-top: 15px">
            <ul>
                <li><span>流行</span></li>
                <li><span>华语</span></li>
                <li><span>清晨</span></li>
                <li><span>怀旧</span></li>
                <li><span>摇滚</span></li>
                <li><span>电子</span></li>
                <li><span>下午茶</span></li>
                <li><span>影视原声</span></li>
            </ul>
        </div>
        <br>
        <div style="padding-top: 20px">
            <ul>
                <li><span>清新</span></li>
                <li><span>夜晚</span></li>
                <li><span>欧美</span></li>
                <li><span>民谣</span></li>
                <li><span>校园</span></li>
                <li><span>治愈</span></li>
                <li><span>轻音乐</span></li>
                <li><span>网络电影</span></li>
            </ul>
        </div>
        <br>
    </div>
    <ul id="ssheet_box"></ul>
    <div class="pagger-box pagger" id="box"></div>
</div>

<script src="../staticFile/UIframe/jquery-2.1.1.min.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/paging/paging.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/jquery.tmpl.min.js" charset="utf-8"></script>
<script src="../staticFile/js/songsheet/songsheet.js" charset="utf-8"></script>
<script src="../staticFile/UIframe/jquery.lazyload.js" charset="utf-8"></script>

<script id="data" type="text/x-jquery-tmpl">
    <li>
       <div style="height: 215px">
            <i style="display: none;">{{= id}}</i>
            <b style="display: none;">{{= creator.avatarUrl}}</b>
            <s style="display: none;">{{= creator.nickname}}</s>
            <d style="display: none;">{{= creator.userId}}</d>
            <w style="display: none;">{{= tags}}</w>
            <div>
                <a class="songlist__link mod_cover">
                    <img class="songlist__pic" width="160" height="160" data-original="{{= coverImgUrl}}" />
                    <i class="mod_cover__mask"></i>
                    <i class="mod_cover__icon_play"></i>
                </a>
            </div>
            <div>
                 <div>
                    <p style="font-size: 13px;overflow: hidden;text-overflow:ellipsis;white-space:nowrap;width:160px;">{{= name}}</p>
                 </div>
                 <div style="height: 5px"></div>
                 <div>
                    <span style="font-size: 10px;color: #666">{{= creator.nickname}}</span>
                 </div>
            </div>
       </div>
   </li>
</script>
<script src="../staticFile/js/songsheet/songsheet-reload.js" charset="utf-8"></script>
</body>
</html>
