<%@ page import="com.mrddy.music.dao.SingerDaoImpl" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%

  String indexpage = request.getParameter("indexpage");
  int index = 1;
  if(indexpage != null){
    index = Integer.parseInt(indexpage);
  }









  SingerDaoImpl dao = new SingerDaoImpl();

  int countrow = dao.queryCount();
  int pagecount = countrow % 20 == 0 ? countrow / 20 : countrow / 20 + 1;



  List datas = dao.query(index);
%>

<!DOCTYPE html>
<html>
<head>
  <title>歌手列表</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
  <meta name="apple-mobile-web-app-capable" content="yes"/>
  <link href="resources/css/jquery-ui-themes.css" type="text/css" rel="stylesheet"/>
  <link href="resources/css/axure_rp_page.css" type="text/css" rel="stylesheet"/>
  <link href="data/styles.css" type="text/css" rel="stylesheet"/>
  <link href="files/singer/styles.css" type="text/css" rel="stylesheet"/>
  <script src="resources/scripts/jquery-1.7.1.min.js"></script>
  <script src="resources/scripts/jquery-ui-1.8.10.custom.min.js"></script>
  <script src="resources/scripts/prototypePre.js"></script>
  <script src="data/document.js"></script>
  <script src="resources/scripts/prototypePost.js"></script>
  <script src="files/singer/data.js"></script>
  <script type="text/javascript">
    $axure.utils.getTransparentGifPath = function() { return 'resources/images/transparent.gif'; };
    $axure.utils.getOtherPath = function() { return 'resources/Other.html'; };
    $axure.utils.getReloadPath = function() { return 'resources/reload.html'; };
  </script>
</head>
<body>
<div id="base" class="">

  <!-- Unnamed (矩形) -->
  <div id="u237" class="ax_default flow_shape">
    <div id="u237_div" class=""></div>
  </div>

  <!-- Unnamed (矩形) -->
  <div id="u238" class="ax_default box_3">
    <div id="u238_div" class=""></div>
    <div id="u238_text" class="text ">
      <p><span>热门</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u239" class="ax_default button">
    <img id="u239_img" class="img " src="images/singer/u239.png"/>
    <div id="u239_text" class="text ">
      <p><span>A</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u240" class="ax_default button">
    <img id="u240_img" class="img " src="images/singer/u239.png"/>
    <div id="u240_text" class="text ">
      <p><span>B</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u241" class="ax_default button">
    <img id="u241_img" class="img " src="images/singer/u239.png"/>
    <div id="u241_text" class="text ">
      <p><span>C</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u242" class="ax_default button">
    <img id="u242_img" class="img " src="images/singer/u239.png"/>
    <div id="u242_text" class="text ">
      <p><span>D</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u243" class="ax_default button">
    <img id="u243_img" class="img " src="images/singer/u239.png"/>
    <div id="u243_text" class="text ">
      <p><span>E</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u244" class="ax_default button">
    <img id="u244_img" class="img " src="images/singer/u239.png"/>
    <div id="u244_text" class="text ">
      <p><span>F</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u245" class="ax_default button">
    <img id="u245_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u245_text" class="text ">
      <p><span>G</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u246" class="ax_default button">
    <img id="u246_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u246_text" class="text ">
      <p><span>H</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u247" class="ax_default button">
    <img id="u247_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u247_text" class="text ">
      <p><span>I</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u248" class="ax_default button">
    <img id="u248_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u248_text" class="text ">
      <p><span>J</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u249" class="ax_default button">
    <img id="u249_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u249_text" class="text ">
      <p><span>K</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u250" class="ax_default button">
    <img id="u250_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u250_text" class="text ">
      <p><span>L</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u251" class="ax_default button">
    <img id="u251_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u251_text" class="text ">
      <p><span>M</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u252" class="ax_default button">
    <img id="u252_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u252_text" class="text ">
      <p><span>N</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u253" class="ax_default button">
    <img id="u253_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u253_text" class="text ">
      <p><span>O</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u254" class="ax_default button">
    <img id="u254_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u254_text" class="text ">
      <p><span>P</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u255" class="ax_default button">
    <img id="u255_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u255_text" class="text ">
      <p><span>Q</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u256" class="ax_default button">
    <img id="u256_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u256_text" class="text ">
      <p><span>R</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u257" class="ax_default button">
    <img id="u257_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u257_text" class="text ">
      <p><span>S</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u258" class="ax_default button">
    <img id="u258_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u258_text" class="text ">
      <p><span>T</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u259" class="ax_default button">
    <img id="u259_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u259_text" class="text ">
      <p><span>U</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u260" class="ax_default button">
    <img id="u260_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u260_text" class="text ">
      <p><span>V</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u261" class="ax_default button">
    <img id="u261_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u261_text" class="text ">
      <p><span>W</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u262" class="ax_default button">
    <img id="u262_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u262_text" class="text ">
      <p><span>X</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u263" class="ax_default button">
    <img id="u263_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u263_text" class="text ">
      <p><span>X</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u264" class="ax_default button">
    <img id="u264_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u264_text" class="text ">
      <p><span>Y</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u265" class="ax_default button">
    <img id="u265_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u265_text" class="text ">
      <p><span>Z</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u266" class="ax_default button">
    <img id="u266_img" class="img " src="images/歌手列表/u239.png"/>
    <div id="u266_text" class="text ">
      <p><span>#</span></p>
    </div>
  </div>

  <!-- Unnamed (矩形) -->
  <div id="u267" class="ax_default box_3">
    <div id="u267_div" class=""></div>
    <div id="u267_text" class="text ">
      <p><span>热门</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u268" class="ax_default button">
    <img id="u268_img" class="img " src="images/歌手列表/u268.png"/>
    <div id="u268_text" class="text ">
      <p><span>华语男</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u269" class="ax_default button">
    <img id="u269_img" class="img " src="images/歌手列表/u268.png"/>
    <div id="u269_text" class="text ">
      <p><span>华语女</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u270" class="ax_default button">
    <img id="u270_img" class="img " src="images/歌手列表/u268.png"/>
    <div id="u270_text" class="text ">
      <p><span>华语组合</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u271" class="ax_default button">
    <img id="u271_img" class="img " src="images/歌手列表/u268.png"/>
    <div id="u271_text" class="text ">
      <p><span>日韩男</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u272" class="ax_default button">
    <img id="u272_img" class="img " src="images/歌手列表/u268.png"/>
    <div id="u272_text" class="text ">
      <p><span>日韩女</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u273" class="ax_default button">
    <img id="u273_img" class="img " src="images/歌手列表/u268.png"/>
    <div id="u273_text" class="text ">
      <p><span>日韩组合</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u274" class="ax_default button">
    <img id="u274_img" class="img " src="images/歌手列表/u268.png"/>
    <div id="u274_text" class="text ">
      <p><span>欧美男</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u275" class="ax_default button">
    <img id="u275_img" class="img " src="images/歌手列表/u268.png"/>
    <div id="u275_text" class="text ">
      <p><span>欧美女</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u276" class="ax_default button">
    <img id="u276_img" class="img " src="images/歌手列表/u268.png"/>
    <div id="u276_text" class="text ">
      <p><span>欧美组合</span></p>
    </div>
  </div>

  <!-- Unnamed (形状) -->
  <div id="u277" class="ax_default button">
    <img id="u277_img" class="img " src="images/歌手列表/u268.png"/>
    <div id="u277_text" class="text ">
      <p><span>其他</span></p>
    </div>
  </div>
  <%Map m = (Map) datas.get(0);%>
  <!-- Unnamed (图片) -->
  <div id="u278" class="ax_default image">
    <img id="u278_img" class="img " src="<%=m.get("pic120")%>"/>
  </div>

  <!-- Unnamed (矩形) -->
  <div id="u279" class="ax_default link_button">
    <div id="u279_div" class=""></div>
    <div id="u279_text" class="text ">
      <p><span><%=m.get("singername")%></span></p>
    </div>
  </div>

  <!-- Unnamed (菜单) -->
  <div id="u280" class="ax_default ax_default_hidden" style="display:none; visibility: hidden">
    <img id="u280_menu" class="img " src="images/歌手列表/u280_menu.png" alt="u280_menu"/>

    <!-- Unnamed (表格) -->
    <div id="u281" class="ax_default">

      <!-- Unnamed (Menu Item) -->
      <div id="u282" class="ax_default menu_item">
        <img id="u282_img" class="img " src="images/歌手列表/u280_menu.png"/>
      </div>
    </div>
  </div>

  <!-- Unnamed (矩形) -->
  <div id="u283" class="ax_default flow_shape">
    <div id="u283_div" class=""></div>
    <div id="u283_text" class="text ">
      <p><span><%=m.get("musicnum")%>首歌曲</span></p>
    </div>
  </div>

  <%
    int temp = 0;
    for (int i = 1; i < datas.size(); i++) {
      Map o = (Map) datas.get(i);


      String html = "<!-- Unnamed (图片) -->\n" +
              "  <div id=\"u"+(284+temp)+"\" class=\"ax_default image\">\n" +
              "    <a href='singerdetails.jsp?id="+o.get("singerid")+"'><img id=\"u"+(284+temp)+"_img\" class=\"img \" src=\""+o.get("pic120")+"\"/></a>\n" +
              "  </div>\n" +
              "\n" +
              "  <!-- Unnamed (矩形) -->\n" +
              "  <div id=\"u"+(284+temp+1)+"\" class=\"ax_default link_button\">\n" +
              "    <div id=\"u"+(284+temp+1)+"_div\" class=\"\"></div>\n" +
              "    <div id=\"u"+(284+temp+1)+"_text\" class=\"text \">\n" +
              "      <p><span>"+o.get("singername")+"</span></p>\n" +
              "    </div>\n" +
              "  </div>\n" +
              "\n" +
              "  <!-- Unnamed (矩形) -->\n" +
              "  <div id=\"u"+(284+temp+2)+"\" class=\"ax_default flow_shape\">\n" +
              "    <div id=\"u"+(284+temp+2)+"_div\" class=\"\"></div>\n" +
              "    <div id=\"u"+(284+temp+2)+"_text\" class=\"text \">\n" +
              "      <p><span>"+o.get("musicnum")+"首歌曲</span></p>\n" +
              "    </div>\n" +
              "  </div>";
      temp+=3;
      out.print(html);

    }
  %>



  <!-- Unnamed (表格) -->
  <div id="u341" class="ax_default">

    <!-- Unnamed (单元格) -->
    <div id="u342" class="ax_default table_cell">

      <div id="u342_text" class="text ">
        <p><a href="index.jsp?indexpage=1"><span>首页</span></a></p>
      </div>
    </div>

    <!-- Unnamed (单元格) -->
    <div id="u343" class="ax_default table_cell">

      <div id="u343_text" class="text ">
        <p><a href="index.jsp?indexpage=<%=index - 1%>"><span>&lt;</span></a></p>
      </div>
    </div>

    <!-- Unnamed (单元格) -->
    <div id="u344" class="ax_default table_cell">

      <div id="u344_text" class="text ">
        <p><span><%=index%>/<%=pagecount%></span></p>
      </div>
    </div>

    <!-- Unnamed (单元格) -->
    <div id="u345" class="ax_default table_cell">

      <div id="u345_text" class="text ">
        <p><a href="index.jsp?indexpage=<%=index + 1%>"><span>&gt;</span></a></p>
      </div>
    </div>

    <!-- Unnamed (单元格) -->
    <div id="u346" class="ax_default table_cell">

      <div id="u346_text" class="text ">
        <p><a href="index.jsp?indexpage=<%=pagecount%>"><span>尾页</span></a></p>
      </div>
    </div>


  </div>

  <!-- Unnamed (矩形) -->
  <div id="u348" class="ax_default box_1">
    <div id="u348_div" class=""></div>
    <div id="u348_text" class="text ">
      <p><span>&copy;mrddy</span></p><p><span><br></span></p>
    </div>
  </div>

  <!-- Unnamed (矩形) -->
  <div id="u349" class="ax_default box_1">
    <div id="u349_div" class=""></div>
  </div>

  <!-- Unnamed (图片) -->
  <div id="u350" class="ax_default image">
    <img id="u350_img" class="img " src="images/logo.png"/>
  </div>

  <!-- Unnamed (矩形) -->
  <div id="u351" class="ax_default box_1">
    <div id="u351_div" class=""></div>
    <div id="u351_text" class="text ">
      <p><span>发现音乐</span></p>
    </div>
  </div>

  <!-- Unnamed (矩形) -->
  <div id="u352" class="ax_default box_1">
    <div id="u352_div" class=""></div>
    <div id="u352_text" class="text ">
      <p><span>我的音乐</span></p>
    </div>
  </div>

  <!-- Unnamed (矩形) -->
  <div id="u353" class="ax_default box_1">
    <div id="u353_div" class=""></div>
    <div id="u353_text" class="text ">
      <p><span>音乐人</span></p>
    </div>
  </div>

  <!-- Unnamed (矩形) -->
  <div id="u354" class="ax_default box_1">
    <div id="u354_div" class=""></div>
    <div id="u354_text" class="text ">
      <p><span>朋友</span></p>
    </div>
  </div>

  <!-- Unnamed (矩形) -->
  <div id="u355" class="ax_default box_1">
    <div id="u355_div" class=""></div>
    <div id="u355_text" class="text ">
      <p><span>商城</span></p>
    </div>
  </div>

  <!-- Unnamed (矩形) -->
  <div id="u356" class="ax_default box_1">
    <div id="u356_div" class=""></div>
    <div id="u356_text" class="text ">
      <p><span><a href="login.html">登录</a>  </span></p>
    </div>
  </div>

  <!-- Unnamed (矩形) -->
  <div id="u357" class="ax_default box_1">
    <div id="u357_div" class=""></div>
    <div id="u357_text" class="text ">
      <p><span>推荐</span></p>
    </div>
  </div>

  <!-- Unnamed (矩形) -->
  <div id="u358" class="ax_default box_1">
    <div id="u358_div" class=""></div>
    <div id="u358_text" class="text ">
      <p><span>排行榜</span></p>
    </div>
  </div>

  <!-- Unnamed (矩形) -->
  <div id="u359" class="ax_default box_1">
    <div id="u359_div" class=""></div>
    <div id="u359_text" class="text ">
      <p><span>歌手</span></p>
    </div>
  </div>

  <!-- Unnamed (矩形) -->
  <div id="u360" class="ax_default box_1">
    <div id="u360_div" class=""></div>
    <div id="u360_text" class="text ">
      <p><span>歌单</span></p>
    </div>
  </div>

  <!-- back (动态面板) -->
  <div id="u361" class="ax_default" data-label="back">
    <div id="u361_state0" class="panel_state" data-label="State1" style="">
      <div id="u361_state0_content" class="panel_state_content">

        <!-- Unnamed (图片) -->
        <div id="u362" class="ax_default image">
          <img id="u362_img" class="img " src="images/用户歌单详情/u133.png"/>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
