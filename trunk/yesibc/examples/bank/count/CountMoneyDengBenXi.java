package bank.count;

public class CountMoneyDengBenXi {
	public static void count(double totalmoney, double monthactive, double totalmonth) {

		// 每月利息额
		for (int i = 0; i < totalmonth; i++) {
			double monthinterestmoney = totalmoney * monthactive
					* (Math.pow((1 + monthactive), totalmonth) - Math.pow((1 + monthactive), (i - 1)))
					/ (Math.pow((1 + monthactive), totalmonth) - 1);

			System.out.println("每月利息额:" + monthinterestmoney);

			// 每月还款额
			double monthmoney = totalmoney * monthactive * (Math.pow((1 + monthactive), totalmonth))
					/ (Math.pow((1 + monthactive), totalmonth) - 1);

			System.out.println("每月还款额:" + monthmoney);

			// 每月本金
			double principalmoney = monthmoney - monthinterestmoney;
			System.out.println("每月本金:" + principalmoney);

			// 实际每月利率
			double monthacive = monthinterestmoney / monthmoney;
			System.out.println("实际每月利率:" + monthacive);
		}

	}

	public static void main(String[] args) {
		count(40000, 0.00925, 24);
	}
}
