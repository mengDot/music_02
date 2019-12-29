package com.mrddy.music.utils;

public class NotFoundTableException extends RuntimeException{
    public NotFoundTableException() {
        super("对不起，请先使用@Table标记Pojo类！");
    }
}
