package controller;

import static org.junit.Assert.assertEquals;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;

class validateAddressTest {

	private PlaceOrderController placeOrderController;
	@BeforeEach
	void setUp() throws Exception {
		placeOrderController = new PlaceOrderController();
	}
	@ParameterizedTest
	@CsvSource({
		"hanoi,true",
		"so 1 Dai Co Viet Hanoi,true",
		"$# Hanoi,false",
		"null,false",
	})
	
	void test(String address, boolean expected) {
		//when
		boolean isValid = placeOrderController.validateAddress(address);
				
		//then
		assertEquals(expected, isValid);
	}

}
