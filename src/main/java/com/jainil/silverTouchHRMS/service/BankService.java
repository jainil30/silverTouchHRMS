package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Bank;

public interface BankService {

    public void saveBank(Bank bank);


    public Bank fetchBankByEmployeeId(Long id);
}
