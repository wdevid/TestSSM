package com.springmvc.redis;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
/**
 * 说明：
 * 作者：WangYabin
 * 邮箱：wyb@eningqu.com
 * 时间：19:51
 */
public class SerializeUtil  {
  /**
 * 序列化
 */
public static byte[] serialize(Object object) {
    ObjectOutputStream oos = null;
    ByteArrayOutputStream baos = null;
    try {
        // 序列化
        baos = new ByteArrayOutputStream();
        oos = new ObjectOutputStream(baos);
        oos.writeObject(object);
        byte[] bytes = baos.toByteArray();
        return bytes;
    } catch (Exception e) {
        e.printStackTrace();
    }
    return null;
}

        /**
         * 反序列化
         */
        public static Object unserialize(byte[] bytes) {
            if (bytes != null) {
                ByteArrayInputStream bais = null;
                try {
                    // 反序列化
                    bais = new ByteArrayInputStream(bytes);
                    ObjectInputStream ois = new ObjectInputStream(bais);
                    return ois.readObject();
                } catch (Exception e) {

                }
            }
            return null;
        }
}