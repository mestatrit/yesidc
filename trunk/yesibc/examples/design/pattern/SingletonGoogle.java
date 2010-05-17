package design.pattern;

/**
 * 单例模式创新！google的ioc作者写的。只有在调用的时候才会初始化！而且线程安全 超级牛！
 */

public class SingletonGoogle {

	static class SingletonHolder {

		static SingletonGoogle instance = new SingletonGoogle();

	}

	public static SingletonGoogle getInstance() {

		return SingletonHolder.instance;

	}
}