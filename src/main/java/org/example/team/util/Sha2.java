package org.example.team.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.binary.Hex;

public class Sha2 {

    public static void main(String[] args) throws NoSuchAlgorithmException, UnsupportedEncodingException {

        String text = "SHA Test Text";

        System.out.println("-------------------------------------------------------");

        System.out.println("암호화 전: " + text);

        System.out.println("-------------------------------------------------------");

        // SHA-256만 처리하고 앞의 25자만 출력
        String encryptedHex = shaAndHex(text);
        System.out.println("SHA-256 (앞 25자): " + encryptedHex.substring(0, 25));

        System.out.println("-------------------------------------------------------");

        System.out.println("[SHA2]");
        System.out.println("SHA-256 (Base64): " + shaAndBase64(text));

        System.out.println("-------------------------------------------------------");
    }

    // SHA-256 암호화와 Hex(16진수) 인코딩
    public static String shaAndHex(String plainText) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        // MessageDigest 인스턴스 생성 (SHA-256)
        MessageDigest md = MessageDigest.getInstance("SHA-256");

        // 해시값 업데이트
        md.update(plainText.getBytes("utf-8"));

        // Byte To Hex
        return Hex.encodeHexString(md.digest());
    }

    // SHA-256 암호화와 Base64 인코딩
    public static String shaAndBase64(String plainText) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        // MessageDigest 인스턴스 생성 (SHA-256)
        MessageDigest md = MessageDigest.getInstance("SHA-256");

        // 해시값 업데이트
        md.update(plainText.getBytes("utf-8"));

        // Byte To Base64 String
        return Base64.encodeBase64String(md.digest());
    }

}
