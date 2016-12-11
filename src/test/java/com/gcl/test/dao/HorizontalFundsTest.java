package com.gcl.test.dao;

import com.gcl.test.BaseJunitTest;
import com.sdut.ngxykjc.work.HorizontalProject.bean.HorizontalFunds;
import com.sdut.ngxykjc.work.HorizontalProject.dao.HorizontalFundsDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;

/**
 * Created by sunming on 2016/12/4.
 */
public class HorizontalFundsTest extends BaseJunitTest {

    @Autowired
    private HorizontalFundsDao fundsDao;




    @Test
    public void addFundsTest(){
        HorizontalFunds funds = new HorizontalFunds();
        funds.setIntoMoneyYear("2016");
        funds.setEmployeeName("安琳");
        funds.setUnitName("农业工程与食品科学学院");
        funds.setFundsAcount("645155-55455");
        funds.setHorizontalName("LDAR泄露检测系统V1.0");
        funds.setIntoFunds(15);
        funds.setEquipmentExpenses(0);
        funds.setSignDate(new Date());
        funds.setContactExpenditure(15);
        funds.setHorizontalType("技术开发");
        funds.setContractId("12252-55545");
        funds.setClient("山东隆智");

        fundsDao.saveOrUpdate(funds);
    }


}
