package com.sdut.ngxykjc.base.util;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 孙铭 on 2016/12/06
 * 分页
 */

public class PageResult {

	//总记录数
	private long totalCount;
	//当前页号
	private int pageNo = 1;
	//总页数
	private int totalPageCount;
	//页大小
	private int pageSize;
	//列表记录
	private List items;

	public static int DEFAULT_PAGE_SIZE = 5;

	/**
	 * 计算总页数
	 * @param totalCount 数据总数
	 * @param pageNo 当前页
	 * @param pageSize 页大小
	 * @param items 数据集
	 */
	public PageResult(long totalCount, int pageNo, int pageSize, List items) {

		this.items = (items == null) ? new ArrayList() : items;
		this.totalCount = totalCount;
		this.pageSize = pageSize;
		if(totalCount != 0){
			//计算总页数
			int tem = (int)totalCount / pageSize;
			this.totalPageCount = (totalCount % pageSize == 0) ? tem : (tem+1);
			this.pageNo = pageNo;
		} else {
			this.pageNo = 0;
		}
	}

	/********* getter or setter *********/
	public long getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public List getItems() {
		return items;
	}

	public void setItems(List items) {
		this.items = items;
	}

	public static int getDefaultPageSize() {
		return DEFAULT_PAGE_SIZE;
	}

	public static void setDefaultPageSize(int defaultPageSize) {
		DEFAULT_PAGE_SIZE = defaultPageSize;
	}

	@Override
	public String toString() {
		return "PageResult{" +
				"totalCount=" + totalCount +
				", pageNo=" + pageNo +
				", totalPageCount=" + totalPageCount +
				", pageSize=" + pageSize +
				", items=" + items +
				'}';
	}
}
