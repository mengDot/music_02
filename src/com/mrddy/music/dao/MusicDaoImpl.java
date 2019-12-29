package com.mrddy.music.dao;

import com.mrddy.music.utils.JDBCUtils;

import java.util.List;
import java.util.Map;

public class MusicDaoImpl {

    /**
     *
     * @param indexpage 当前页码
     * @return
     */
    public List query(int indexpage,String singerid){

        int beginrow = (indexpage - 1 ) * 8;


        String sql = "select musicrid,artist,pic120,pic,musicname,rid,releasedate,album,songtimeminutes from tb_music where singerid = "+singerid+" limit "+beginrow+",8";
        JDBCUtils util = new JDBCUtils();

        List list = util.executeQuery(sql,null);

        return list;
    }


    public List query(String musicid){




        String sql = "select musicrid,artist,pic120,pic,musicname,rid,releasedate,album,songtimeminutes from tb_music where rid = "+musicid;
        JDBCUtils util = new JDBCUtils();

        List list = util.executeQuery(sql,null);

        return list;
    }


    public int queryCount(String singerid) {
        String sql = "select count(1) countnum from tb_music where singerid = "+singerid;
        JDBCUtils util = new JDBCUtils();

        List list = util.executeQuery(sql,null);
        Map o = (Map) list.get(0);
        Long count = (Long) o.get("countnum");
        System.out.println("---------"+count);
        return  count.intValue();
    }
}
