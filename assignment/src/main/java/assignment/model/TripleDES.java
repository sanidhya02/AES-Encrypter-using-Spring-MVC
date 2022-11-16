package assignment.model;

import java.nio.charset.StandardCharsets;
import java.security.spec.KeySpec;
import java.util.Base64;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

public class TripleDES {
private static final String SECRET_KEY= "9mng65v8jf4lxn93nabf981m";
	
	private static final String SALT = "ssshhhhhhhhhhh!!!!";

	public static String encrypt(String strToEncrypt)
	{
		try {

			byte[] iv = "a76nb5h9".getBytes();
			IvParameterSpec ivspec= new IvParameterSpec(iv);

			
			SecretKeyFactory factory= SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256");
			
//		System.out.println("factory");
			KeySpec spec = new PBEKeySpec(SECRET_KEY.toCharArray(), SALT.getBytes(),65536, 256);
			SecretKey tmp = factory.generateSecret(spec);
			SecretKeySpec secretKey = new SecretKeySpec(SECRET_KEY.getBytes(), "TripleDES");
//			byte[] buf = new byte[1024];
			Cipher cipher = Cipher.getInstance(
				"TripleDES/CBC/PKCS5Padding");
			cipher.init(Cipher.ENCRYPT_MODE, secretKey,
						ivspec);

			return Base64.getEncoder().encodeToString(
				cipher.doFinal(strToEncrypt.getBytes(
					StandardCharsets.UTF_8)));
		}
		catch (Exception e) {
			System.out.println("Error while encrypting: "+ e.toString());
		}
		return null;
	}

	
	public static String decrypt(String strToDecrypt)
	{
		try {

			
			byte[] iv = "a76nb5h9".getBytes();
		
			IvParameterSpec ivspec
				= new IvParameterSpec(iv);

			
			SecretKeyFactory factory
				= SecretKeyFactory.getInstance(
					"PBKDF2WithHmacSHA256");

			KeySpec spec = new PBEKeySpec(
				SECRET_KEY.toCharArray(), SALT.getBytes(),
				65536, 256);
			SecretKey tmp = factory.generateSecret(spec);
			SecretKeySpec secretKey = new SecretKeySpec(
					SECRET_KEY.getBytes(), "TripleDES");
//			byte[] buf = new byte[1024];
			Cipher cipher = Cipher.getInstance(
				"TripleDES/CBC/PKCS5Padding");
			cipher.init(Cipher.DECRYPT_MODE, secretKey,
						ivspec);
			
			return new String(cipher.doFinal(
				Base64.getDecoder().decode(strToDecrypt)));
		}
		catch (Exception e) {
			System.out.println("Error while decrypting: "
							+ e.toString());
		}
		return null;
	}
//	public static void main(String[] args)
//    {
//        
//        String originalString = "Admin";
//        
//        
//        String encryptedString
//            = TripleDES.encrypt(originalString);
//        
//   
//        String decryptedString = TripleDES.decrypt(encryptedString);
//  
//        System.out.println(originalString);
//        System.out.println(encryptedString);
//        System.out.println(decryptedString);
//    }
}
