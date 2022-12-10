package controller;
import static org.junit.Assert.assertEquals;
import static org.junit.jupiter.api.Assertions.fail;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;

class validatePhoneNumberTest {

	private PlaceOrderController placeOrderController;
	@BeforeEach
	void setUp() throws Exception {
		placeOrderController = new PlaceOrderController();
	}
	@ParameterizedTest
	@CsvSource({
		"0123456789,true",
		"01234,false",
		"abcd123,false",
		"1234567890,false",
		"9092634383, false",
	})

	public void test(String phone, boolean expected) {
		//when
		boolean isValid = placeOrderController.validatePhoneNumber(phone);
		
		//then
		assertEquals(expected, isValid);
	}

}
