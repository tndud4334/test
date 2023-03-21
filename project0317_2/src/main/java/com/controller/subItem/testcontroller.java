package com.controller.subItem;

import java.util.List;

import com.dto.SubItemDTO;
import com.service.SubItemService;

public class testcontroller {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		SubItemService service = new SubItemService();
		String gCategory = "snack";
		List<SubItemDTO> list = service.subItemList(gCategory);
		System.out.println(list);
	}

}
