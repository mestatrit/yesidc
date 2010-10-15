package jdk;

import java.util.HashSet;

@SuppressWarnings("unchecked")
public class Napoleon {
	private HashSet<Enemy> enemies = new HashSet();

	public int cdpm = 100000;

	Napoleon() {
		enemies.add(new Enemy("Italy", 100));
		enemies.add(new Enemy("Egypt", 100));
		enemies.add(new Enemy("Russia ", 100));
	}

	private void speak() {
		System.out.println("My enemy number: " + enemies.size());
		HashSet trueEnemies = new HashSet();
		for (Enemy e : enemies) {
			if (e.cdpm > cdpm)
				trueEnemies.add(e);
		}
		System.out.println("The number of enemies who can beat me: "
				+ trueEnemies.size());

		for (Enemy e : enemies) {
			do {
				e.shout();
			} while (e.canBeatNapoleon(this));
		}
		for (Enemy e : enemies) {
			e.shout();
		}
		cdpm = 10000000;
		System.out.println("I am Napoleon cdpm " + cdpm);
		System.out.println("Dispose enemy list...");
		enemies.clear();
		System.out.println("Enemy list disposed!");
	}

	public static void main(String[] args) {
		(new Napoleon()).speak();
	}
}

class Enemy {
	private String name;
	public int cdpm;

	Enemy(String name, int cdpm) {
		this.name = name;
		this.cdpm = cdpm;
	}

	public void shout() {
		if (cdpm > 0)
			System.out.println(name + " says: we are invincible!!!");
		else
			System.out.println(name + " says: ......");
	}

	public boolean canBeatNapoleon(Napoleon n) {
		if (cdpm < n.cdpm) {
			cdpm = -1;
			return false;
		}
		return true;
	}

}
