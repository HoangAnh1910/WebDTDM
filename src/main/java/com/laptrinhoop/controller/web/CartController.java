package com.laptrinhoop.controller.web;

import com.laptrinhoop.entity.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.laptrinhoop.service.ICartService;

import java.util.Collection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
@Controller
public class CartController {

	@Autowired
	ICartService cart;

	@RequestMapping("/header/cart")
	public String info(Model model) {
		model.addAttribute("cart", cart);
		return "non-layout/layout/_header-cart";
	}

	@RequestMapping("/cart/view")
	public String cartView(Model model) {
		model.addAttribute("cart", cart);
		return "cart/view";
	}

//	@RequestMapping("/home/random")
//	public String cartInfo(Model model) {
//		model.addAttribute("cartinfo", cart);
//		return getInfo();
//	}

	@ResponseBody
	@RequestMapping("/product/add-to-cart/{id}")
	public String addCart(@PathVariable("id") Integer id) {
		cart.addCart(id);
		return getInfo();
	}

	@ResponseBody
	@RequestMapping("/product/getCart")
	public String getInfoCart() {
		return getInfo1();
	}

	@ResponseBody
	@RequestMapping("/product/getCount")
	public String getInfoCount() {
		return getInfo();
	}

	@ResponseBody
	@RequestMapping("/cart/remove/{id}")
	public String removeCart(@PathVariable("id") Integer id) {
		cart.removeCart(id);
		return getInfo();
	}

	@ResponseBody
	@RequestMapping("/cart/clear")
	public String clearCart() {
		cart.clear();
		return getInfo();
	}

	@ResponseBody
	@RequestMapping("/cart/update/{id}/{qty}")
	public String changeQuantity(@PathVariable("id") Integer id , @PathVariable("qty") Integer qty) {
		cart.updateCart(id, qty);
		return getInfo();
	}


	@ResponseBody
	@RequestMapping("/cart/getCount")

	public String getCount() {
		return getInfo();
	}
	private String getInfo1() {
		String stringCart = "";
		ArrayList<String> arrString = new ArrayList<>();
		for (Product element : cart.getItemsCart()) {
			String name = element.getName();
			String image = element.getImage();
			String unitPrice = element.getUnitPrice().toString();
			String quantity = element.getQuantity().toString();
			String stringItem = "{\"name\":\""+name+"\", \"image\":\""+image+"\",\"unitPrice\":\""+unitPrice+"\",\"quantity\":\""+quantity+"\"}";
			arrString.add(stringItem);
		}
		String result = String.join(", ", arrString);
		stringCart =  "["+result+"]";
		System.out.println(stringCart);
		return stringCart;
	}
	private String getInfo() {
		return String.format("{\"count\":%d,\"amount\":%.2f}", cart.getCountCart(), cart.getAmountCart());
	}
}
