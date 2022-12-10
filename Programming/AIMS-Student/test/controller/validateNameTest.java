package controller;

import static org.junit.Assert.assertEquals;
import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvSource;

class validateNameTest {

	private PlaceOrderController placeOrderController;
	@BeforeEach
	void setUp() throws Exception {
		placeOrderController = new PlaceOrderController();
	}
	@ParameterizedTest
	@CsvSource({
		"hoang tien,true",
		"hoangtien1234,false",
		"*$ tien,false",
		"null,false",
		" ,false"
	})
	

	void test(String name, boolean expected) {
		//when
		boolean isValid = placeOrderController.validateName(name);
		//then
		assertEquals(expected, isValid);
	}

}
