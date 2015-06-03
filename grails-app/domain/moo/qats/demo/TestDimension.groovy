package moo.qats.demo

class TestDimension {
	String description
	List testCases

	static hasMany = [
		testCases : TestCase	
	]
}