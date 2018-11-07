class EvenFibonacciSum {
	
	public static void main(String[] args) {
		int prev = 1;
		int curr = 1;
		int next = prev + curr;
		int limit = 4000000;
		int totalSum = 0;
		while (next < limit) {
			if (next % 2 == 0) {
				totalSum += next;
			}
			prev = curr;
			curr = next;
			next = prev + curr;
		}

		System.out.println(totalSum);
	}

}