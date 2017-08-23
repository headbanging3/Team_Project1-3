package com.acorn.shoopse.manager.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.manager.dto.ManagerDto;
import com.acorn.shoopse.products.dto.ProductsKindDto;
import com.acorn.shoopse.users.dao.UsersDao;

public interface ManagerService {
	
	 public void insert(HttpServletRequest request, UsersDao dao);
	 public ModelAndView list();
	 public void delete(int mem_num);
	 public ModelAndView getData(int mem_num);
	 public void update(ManagerDto dto);
	 public ModelAndView p_list();
	 public ModelAndView getCategory();
	 public List<ProductsKindDto> getDivision(int parent_kind_code);
}
