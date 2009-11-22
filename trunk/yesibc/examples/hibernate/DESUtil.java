package hibernate;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.security.Key;
import java.security.SecureRandom;

import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;

public class DESUtil {
	public static void main(String[] args) {
		try {
			if (args[0].equals("-genKey")) {
				generateKey(args[1]);
			} else {

				// if (args[0].equals("-encrypt"))encrypt();

				// else decrypt();
			}
		} catch (Exception e) {

		}
	}

	public static String encrypt(String plainText, String encryptString,
			File keyFile) throws IOException, ClassNotFoundException,
			GeneralSecurityException {
		ObjectInputStream keyIn = new ObjectInputStream(new FileInputStream(
				keyFile));
		int mode = Cipher.ENCRYPT_MODE;
		Key key = (Key) keyIn.readObject();
		keyIn.close();

		InputStream in = new FileInputStream(plainText);
		OutputStream out = new FileOutputStream(encryptString);

		Cipher cipher = Cipher.getInstance("DES");
		cipher.init(mode, key);

		doEncryptAndDecrypt(in, out, cipher);

		String result = out.toString();
		System.out.print(result);
		in.close();
		out.close();
		return result;
	}

	public static String decrypt(String encryptString, String plainText,
			File keyFile) throws IOException, ClassNotFoundException,
			GeneralSecurityException {
		ObjectInputStream keyIn = new ObjectInputStream(new FileInputStream(
				keyFile));
		int mode = Cipher.DECRYPT_MODE;
		Key key = (Key) keyIn.readObject();
		keyIn.close();

		InputStream in = new FileInputStream(encryptString);
		OutputStream out = new FileOutputStream(plainText);

		Cipher cipher = Cipher.getInstance("DES");
		cipher.init(mode, key);

		doEncryptAndDecrypt(in, out, cipher);

		String result = out.toString();
		System.out.print(result);
		in.close();
		out.close();
		return result;
	}

	public static void doEncryptAndDecrypt(InputStream in, OutputStream out,
			Cipher cipher) throws IOException, GeneralSecurityException {
		int blockSize = cipher.getBlockSize();
		int outputSize = cipher.getOutputSize(blockSize);

		byte[] inBytes = new byte[blockSize];
		byte[] outBytes = new byte[outputSize];

		int inLength = 0;
		boolean more = true;

		while (more) {
			inLength = in.read(inBytes);
			if (inLength == blockSize) {
				int outLength = cipher.update(inBytes, 0, blockSize, outBytes);
				out.write(outBytes, 0, outLength);
			} else
				more = false;
		}

		if (inLength > 0)
			outBytes = cipher.doFinal(inBytes, 0, inLength);
		else
			outBytes = cipher.doFinal();

		out.write(outBytes);

	}

	public static void generateKey(String path) throws Exception {
		KeyGenerator keygen = KeyGenerator.getInstance("DES");
		SecureRandom random = new SecureRandom();

		keygen.init(random);
		SecretKey key = keygen.generateKey();

		ObjectOutputStream out = new ObjectOutputStream(new FileOutputStream(
				path));
		out.writeObject(key);
		out.close();
	}
}
