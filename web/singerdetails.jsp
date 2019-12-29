<%@ page import="com.mrddy.music.dao.SingerDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page import="com.mrddy.music.dao.MusicDaoImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String id = request.getParameter("id");
    SingerDaoImpl dao = new SingerDaoImpl();
    List list = dao.queryByid(id);
    Map singerdata = (Map) list.get(0);


    MusicDaoImpl mdao = new MusicDaoImpl();


    String indexpage = request.getParameter("indexpage");
    int index = 1;
    if(indexpage != null){
        index = Integer.parseInt(indexpage);
    }


    int countrow = mdao.queryCount(singerdata.get("id").toString());
    int pagecount = countrow % 8 == 0 ? countrow / 8 : countrow / 8 + 1;

    List musicData = mdao.query(index, singerdata.get("id").toString());



%>


<!DOCTYPE html>
<html>
<head>
    <title>singerdetails</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
    <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
    <link href="data/styles.css" type="text/css" rel="stylesheet"/>
    <link href="files/singerdetails/styles.css" type="text/css" rel="stylesheet"/>
    <script src="resources/scripts/jquery-1.7.1.min.js"></script>
    <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
    <script src="resources/scripts/prototypePre.js"></script>
    <script src="data/document.js"></script>
    <script src="resources/scripts/prototypePost.js"></script>
    <script src="files/singerdetails/data.js"></script>
    <script type="text/javascript">
        $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
        $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
        $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
    </script>
</head>
<body>
<div id="base" class="">

    <!-- Unnamed (矩形) -->
    <div id="u415" class="ax_default box_1 selected">
        <div id="u415_div" class="selected"></div>
    </div>

    <!-- Unnamed (图片) -->
    <div id="u416" class="ax_default image">
        <img id="u416_img" class="img " src="<%=singerdata.get("pic")%>"/>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u417" class="ax_default flow_shape">
        <div id="u417_div" class=""></div>
        <div id="u417_text" class="text ">
            <p><span><%=singerdata.get("singername")%></span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u418" class="ax_default flow_shape">
        <div id="u418_div" class=""></div>
        <div id="u418_text" class="text ">
            <p><span>国籍: </span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u419" class="ax_default flow_shape selected">
        <div id="u419_div" class="selected"></div>
        <div id="u419_text" class="text ">
            <p><span>语言: </span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u420" class="ax_default flow_shape selected">
        <div id="u420_div" class="selected"></div>
        <div id="u420_text" class="text ">
            <p><span>出生地: </span></p>
        </div>
    </div>

    <!-- Unnamed (图片) -->
    <div id="u421" class="ax_default image">
        <img id="u421_img" class="img " src="images/usersinger/u128.png"/>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u422" class="ax_default flow_shape">
        <div id="u422_div" class=""></div>
        <div id="u422_text" class="text ">
            <p><span>单曲: </span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u423" class="ax_default flow_shape">
        <div id="u423_div" class=""></div>
        <div id="u423_text" class="text ">
            <p><span>专辑: </span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u424" class="ax_default flow_shape">
        <div id="u424_div" class=""></div>
        <div id="u424_text" class="text ">
            <p><span>粉丝: </span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u425" class="ax_default flow_shape">
        <div id="u425_div" class=""></div>
        <div id="u425_text" class="text ">
            <p><span>单曲</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u426" class="ax_default flow_shape">
        <div id="u426_div" class=""></div>
        <div id="u426_text" class="text ">
            <p><span>专辑</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u427" class="ax_default flow_shape">
        <div id="u427_div" class=""></div>
        <div id="u427_text" class="text ">
            <p><span>简介</span></p>
        </div>
    </div>

    <!-- Unnamed (表格) -->
    <div id="u428" class="ax_default">



        <!-- Unnamed (单元格) -->
        <div id="u430" class="ax_default table_cell">

            <div id="u430_text" class="text ">
                <a href="singerdetails.jsp?indexpage=1&id=<%=id%>"> <p><span>首页</span></p></a>
            </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u431" class="ax_default table_cell">

            <div id="u431_text" class="text ">
                <a href="singerdetails.jsp?indexpage=<%=index - 1%>&id=<%=id%>"> <p><span>&lt;</span></p></a>
            </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u432" class="ax_default table_cell">

            <div id="u432_text" class="text ">
                <p><span><%=index%>/<%=pagecount%>></span></p>
            </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u433" class="ax_default table_cell">

            <div id="u433_text" class="text ">
                <a href="singerdetails.jsp?indexpage=<%=index + 1%>&id=<%=id%>"><p><span>&gt;</span></p></a>
            </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u434" class="ax_default table_cell">

            <div id="u434_text" class="text ">
                <a href="singerdetails.jsp?indexpage=<%=pagecount%>&id=<%=id%>"><p><span>尾页</span></p></a>
            </div>
        </div>
    </div>



    <!-- Unnamed (矩形) -->
    <div id="u436" class="ax_default box_1">
        <div id="u436_div" class=""></div>
        <div id="u436_text" class="text ">
            <p><span></span></p><p><span><br></span></p><p><span>黄旭民&nbsp; 王亚飞&nbsp; 曾紫玲&nbsp; 黄伟强&nbsp; 李谟函</span></p>
        </div>
    </div>

    <!-- Unnamed (表格) -->
    <div id="u437" class="ax_default">

        <!-- Unnamed (单元格) -->
        <div id="u438" class="ax_default table_cell">
            <img id="u438_img" class="img " src="images/usersinger/u94.png"/>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u439" class="ax_default table_cell">
            <img id="u439_img" class="img " src="images/singerdetails/u439.png"/>
            <div id="u439_text" class="text ">
                <p><span>&nbsp; 歌曲</span></p>
            </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u440" class="ax_default table_cell">
            <img id="u440_img" class="img " src="images/singerdetails/u440.png"/>
            <div id="u440_text" class="text ">
                <p><span>&nbsp; 专辑</span></p>
            </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u441" class="ax_default table_cell">
            <img id="u441_img" class="img " src="images/usersinger/u97.png"/>
            <div id="u441_text" class="text ">
                <p><span>&nbsp; 时长</span></p>
            </div>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u442" class="ax_default table_cell">
            <img id="u442_img" class="img " src="images/usersinger/u98.png"/>
        </div>

        <!-- Unnamed (单元格) -->
        <div id="u443" class="ax_default table_cell">
            <img id="u443_img" class="img " src="images/usersinger/u98.png"/>
        </div>

        <%
            int temp = 0;
            for (int i = 0; i < musicData.size() ; i++) {

                Map music = (Map) musicData.get(i);

                String html = "<!-- Unnamed (单元格) -->\n" +
                        "        <div id=\"u"+(444+temp)+"\" class=\"ax_default table_cell\">\n" +
                        "            <img id=\"u"+(444+temp)+"_img\" class=\"img \" src=\"images/usersinger/u100.png\"/>\n" +
                        "            <div id=\"u"+(444+temp)+"_text\" class=\"text \">\n" +
                        "                <p><span>"+(i+1)+"</span></p>\n" +
                        "            </div>\n" +
                        "        </div>\n" +
                        "\n" +
                        "        <!-- Unnamed (单元格) -->\n" +
                        "        <div id=\"u"+(444+temp+1)+"\" class=\"ax_default table_cell\">\n" +
                        "            <img id=\"u"+(444+temp+1)+"_img\" class=\"img \" src=\"images/singerdetails/u445.png\"/>\n" +
                        "            <div id=\"u"+(444+temp+1)+"_text\" class=\"text \">\n" +
                        "                <p><span>&nbsp; "+music.get("musicname")+"</span></p>\n" +
                        "            </div>\n" +
                        "        </div>\n" +
                        "\n" +
                        "        <!-- Unnamed (单元格) -->\n" +
                        "        <div id=\"u"+(444+temp+2)+"\" class=\"ax_default table_cell\">\n" +
                        "            <img id=\"u"+(444+temp+2)+"_img\" class=\"img \" src=\"images/singerdetails/u446.png\"/>\n" +
                        "            <div id=\"u"+(444+temp+2)+"_text\" class=\"text \">\n" +
                        "                <p><span>&nbsp; "+music.get("album")+"</span></p>\n" +
                        "            </div>\n" +
                        "        </div>\n" +
                        "\n" +
                        "        <!-- Unnamed (单元格) -->\n" +
                        "        <div id=\"u"+(444+temp+3)+"\" class=\"ax_default table_cell\">\n" +
                        "            <img id=\"u"+(444+temp+3)+"_img\" class=\"img \" src=\"images/usersinger/u103.png\"/>\n" +
                        "            <div id=\"u"+(444+temp+3)+"_text\" class=\"text \">\n" +
                        "                <p><span>&nbsp; "+music.get("songtimeminutes")+"</span></p>\n" +
                        "            </div>\n" +
                        "        </div>\n" +
                        "\n" +
                        "        <!-- Unnamed (单元格) -->\n" +
                        "        <div id=\"u"+(444+temp+4)+"\" class=\"ax_default table_cell\">\n" +
                        "            <img id=\"u"+(444+temp+4)+"_img\" class=\"img \" src=\"images/index/u48.png\"/>\n" +
                        "            <div id=\"u"+(444+temp+4)+"_text\" class=\"text \">\n" +
                        "                <a href=\"music.jsp?musicid="+music.get("rid")+"\"><p><span>▶</span></p></a>\n" +
                        "            </div>\n" +
                        "        </div>\n" +
                        "\n" +
                        "        <!-- Unnamed (单元格) -->\n" +
                        "        <div id=\"u"+(444+temp+5)+"\" class=\"ax_default table_cell\">\n" +
                        "            <img id=\"u"+(444+temp+5)+"_img\" class=\"img \" src=\"images/index/u48.png\"/>\n" +
                        "            <div id=\"u"+(444+temp+5)+"_text\" class=\"text \">\n" +
                        "                <p><span>＋</span></p>\n" +
                        "            </div>\n" +
                        "        </div>";
                out.print(html);
                temp += 6;
            }
        %>




    </div>

    <!-- Unnamed (矩形) -->
    <div id="u492" class="ax_default box_1">
        <div id="u492_div" class=""></div>
        <div id="u492_text" class="text ">
            <p><span><%=singerdata.get("musicnum")%></span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u493" class="ax_default box_1">
        <div id="u493_div" class=""></div>
        <div id="u493_text" class="text ">
            <p><span><%=singerdata.get("albumnum")%></span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u494" class="ax_default box_1">
        <div id="u494_div" class=""></div>
        <div id="u494_text" class="text ">
            <p><span><%=singerdata.get("artistfans")%></span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u495" class="ax_default box_1">
        <div id="u495_div" class=""></div>
        <div id="u495_text" class="text ">
            <p><span>中国香港</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u496" class="ax_default box_1">
        <div id="u496_div" class=""></div>
        <div id="u496_text" class="text ">
            <p><span>国语;粤语</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u497" class="ax_default box_1">
        <div id="u497_div" class=""></div>
        <div id="u497_text" class="text ">
            <p><span>中国上海</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u498" class="ax_default box_1">
        <div id="u498_div" class=""></div>
    </div>

    <!-- Unnamed (图片) -->
    <div id="u499" class="ax_default image">
        <img id="u499_img" class="img " src="images/logo.png"/>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u500" class="ax_default box_1">
        <div id="u500_div" class=""></div>
        <div id="u500_text" class="text ">
            <p><span>发现音乐</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u501" class="ax_default box_1">
        <div id="u501_div" class=""></div>
        <div id="u501_text" class="text ">
            <p><span>我的音乐</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u502" class="ax_default box_1">
        <div id="u502_div" class=""></div>
        <div id="u502_text" class="text ">
            <p><span>音乐人</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u503" class="ax_default box_1">
        <div id="u503_div" class=""></div>
        <div id="u503_text" class="text ">
            <p><span>朋友</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u504" class="ax_default box_1">
        <div id="u504_div" class=""></div>
        <div id="u504_text" class="text ">
            <p><span>商城</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u505" class="ax_default box_1">
        <div id="u505_div" class=""></div>
        <div id="u505_text" class="text ">
            <p><span>登录 </span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u506" class="ax_default box_1">
        <div id="u506_div" class=""></div>
        <div id="u506_text" class="text ">
            <p><span>推荐</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u507" class="ax_default box_1">
        <div id="u507_div" class=""></div>
        <div id="u507_text" class="text ">
            <p><span>phb</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u508" class="ax_default box_1">
        <div id="u508_div" class=""></div>
        <div id="u508_text" class="text ">
            <p><span>歌手</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u509" class="ax_default box_1">
        <div id="u509_div" class=""></div>
        <div id="u509_text" class="text ">
            <p><span>歌单</span></p>
        </div>
    </div>

    <!-- Unnamed (矩形) -->
    <div id="u510" class="ax_default flow_shape">
        <div id="u510_div" class=""></div>
        <div id="u510_text" class="text ">
            <p><span>单曲</span></p>
        </div>
    </div>

    <!-- back (动态面板) -->
    <div id="u511" class="ax_default" data-label="back">
        <div id="u511_state0" class="panel_state" data-label="State1" style="">
            <div id="u511_state0_content" class="panel_state_content">

                <!-- Unnamed (图片) -->
                <div id="u512" class="ax_default image">
                    <img id="u512_img" class="img " src="images/usersinger/u133.png"/>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
