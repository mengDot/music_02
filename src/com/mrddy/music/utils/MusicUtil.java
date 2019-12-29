package com.mrddy.music.utils;

import org.json.JSONObject;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

import java.io.IOException;

public class MusicUtil {



    public static String getMusic(int rid) throws IOException {
        Connection connect = Jsoup.connect("http://www.kuwo.cn/url?format=mp3&rid=" + rid + "&response=url&type=convert_url3&br=128kmp3&from=web&t=1576631457979&reqId=3f736fc1-2133-11ea-9c64-89f7f37d7421");
        Document document = connect.get();

        String text = document.text();

        JSONObject obj = new JSONObject(text);
        String url = obj.getString("url");
        return url;





    }
}
