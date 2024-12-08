package org.example.team.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.binary.Hex;

public class Sha2 {

    // SHA-256 암호화와 Hex(16진수) 인코딩
    public static String shaAndHex(String plainText) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        // MessageDigest 인스턴스 생성 (SHA-256)
        MessageDigest md = MessageDigest.getInstance("SHA-256");

        // 해시값 업데이트
        md.update(plainText.getBytes("utf-8"));

        // Byte To Hex
        return Hex.encodeHexString(md.digest());
    }


}
