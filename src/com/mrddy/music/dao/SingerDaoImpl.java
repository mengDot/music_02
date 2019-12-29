package com.mrddy.music.dao;


import com.mrddy.music.utils.JDBCUtils;

import java.util.List;
import java.util.Map;

/**
 * Dao(数据访问对象)
 * 是专门写一个类用来对某张表进行增删改查
 * 开发立的规矩，一个类对应一张表
 */
public class SingerDaoImpl {


    /**
     *
     * @param indexpage 当前页码
     * @return
     */
    public List query(int indexpage){

        int beginrow = (indexpage - 1 ) * 20;


        String sql = "select singerid,id,musicnum,pic120,singername from tb_singer limit "+beginrow+",20";
        JDBCUtils util = new JDBCUtils();

        List list = util.executeQuery(sql,null);

        return list;
    }


    public int queryCount(){




        String sql = "select count(1) as countnum from tb_singer";
        JDBCUtils util = new JDBCUtils();

        List list = util.executeQuery(sql,null);
        Map o = (Map) list.get(0);
        Object countnum = o.get("countnum");
        return Integer.parseInt(countnum.toString());
    }



    public List queryByid(String id ){
        String sql = "select singerid,id,musicnum,artistfans,albumnum,mvnum,pic,singername from tb_singer where singerid = "+id;
        JDBCUtils util = new JDBCUtils();

        List list = util.executeQuery(sql,null);

        return list;
    }






}
