package com.eams.dao;

import java.util.List;

import com.eams.model.Adept;
import com.eams.model.PageCount;

public interface AdeptDao {

	public List<Adept> getAdeptList(PageCount param );
	public  Adept getAdept(Integer param);
	public List<Adept> getAdeptCode();
	public int delAdept(Integer param);
	public Integer getAdeptCount();
	public int updateAdept(Adept param);
	public int insertAdept(Adept param);
}
