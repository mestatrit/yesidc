package security;

import java.security.*;
import java.io.*;
import java.util.*;

public class TestQQPwd {
	public static void main(String[] args) {
		if (args == null || args.length < 2) {
			usage();
			return;
		}
		FS fs;
		List<String> list;
		MessageDigest md;
		try {
			InputStream fis = new FileInputStream(args[0]);
			fs = FS.get(fis);
			fis.close();
			BufferedReader br = new BufferedReader(new InputStreamReader(new FileInputStream(args[1])));
			String pw;
			list = new ArrayList<String>();
			while ((pw = br.readLine()) != null) {
				list.add(pw);
			}
			br.close();
			md = MessageDigest.getInstance("MD5");
		} catch (IOException e) {
			System.out.println("err: " + e.getMessage());
			return;
		} catch (NoSuchAlgorithmException ne) {
			System.out.println("err: " + ne.getMessage());
			return;
		}

		int num = btoi(fs.block[0].data);
		System.out.printf("加密轮次: %d\n", num);
		byte[] pwd = fs.block[1].data;
		for (int i = 0, len = list.size(); i < len; i++) {
			byte[] src = list.get(i).getBytes();
			long start = System.currentTimeMillis();
			byte[] dst = digestN(md, src, num);
			System.out.println("cost time: " + (System.currentTimeMillis() - start));
			if (be(pwd, dst)) {
				System.out.println("hi, baby, you've got it pw: " + list.get(i));
				return;
			} else {
				System.out.println(list.get(i) + " isn't match pw, try next");
			}
		}
	}

	private static boolean be(byte[] src, byte[] dst) {
		for (int i = 0; i < src.length; i++) {
			if (src[i] != dst[i]) {
				return false;
			}
		}
		return true;
	}

	private static byte[] digestN(MessageDigest md, byte[] src, int n) {
		int i;
		for (i = 0; i < n / 3; i += 3) {
			src = md.digest(src);
			src = md.digest(src);
			src = md.digest(src);
		}
		while (i++ < n) {
			src = md.digest(src);
		}
		for (i = 0; i < src.length; i++) {
			src[i] = (byte) (~src[i] ^ 0x10);
		}
		return src;
	}

	private static class FS {
		static final int fl = 4;
		byte[] fh;
		short bn;
		Block[] block;

		static FS get(InputStream in) throws IOException {
			FS fs = new FS();
			fs.fh = new byte[4];
			in.read(fs.fh);
			fs.bn = (short) ((in.read() & 0xff) | (in.read() & 0xff) << 8);
			fs.block = new Block[fs.bn];
			for (int i = 0; i < fs.bn; i++) {
				fs.block[i] = Block.get(in);
			}
			return fs;
		}

		void print(PrintStream out) throws IOException {
			out.printf("%2x %2x %2x %2x %2x %2x ", fh[0], fh[1], fh[2], fh[3], (byte) bn, (byte) (bn >> 8));
			for (int i = 0; i < block.length; i++) {
				block[i].print(out);
			}
		}
	};

	private static class Block {
		byte type;
		short nl;
		byte[] name;
		int dl;
		byte[] data;

		static Block get(InputStream in) throws IOException {
			Block block = new Block();
			block.type = (byte) in.read();
			block.nl = (short) ((in.read() & 0xff) | (in.read() & 0xff) << 8);
			block.name = new byte[block.nl];
			in.read(block.name);
			block.dl = ((in.read() & 0xff) << 0 | (in.read() & 0xff) << 8 | (in.read() & 0xff) << 16 | (in.read() & 0xff) << 24);
			block.data = new byte[block.dl];
			in.read(block.data);
			return block;
		}

		void print(PrintStream out) throws IOException {
			out.printf("%2x %2x %2x ", type, (byte) nl, (byte) (nl >> 8));
			for (int i = 0; i < nl; i++) {
				out.printf("%2x ", name[i]);
			}
			out.printf("%2x %2x %2x %2x ", (byte) dl, (byte) (dl >> 8), (byte) (dl >> 16), (byte) (dl >> 24));
			for (int i = 0; i < dl; i++) {
				out.printf("%2x ", data[i]);
			}
		}
	};

	private static int btoi(byte[] src) {
		return (int) ((src[0] & 0xff) << 0 | (src[1] & 0xff) << 8 | (src[2] & 0xff) << 16 | (src[3] & 0xff) << 24);
	}

	private static void usage() {
		System.out.println("usage: java A1 密码文件 字典文件\n");
	}

}
