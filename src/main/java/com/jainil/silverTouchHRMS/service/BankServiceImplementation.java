package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Bank;
import com.jainil.silverTouchHRMS.repository.BankRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BankServiceImplementation implements BankService{

    @Autowired
    private BankRepository bankRepository;

    @Override
    public void saveBank(Bank bank) {
        bankRepository.save(bank);
    }

    @Override
    public Bank fetchBankByEmployeeId(Long id) {
        return bankRepository.findBankByEmployeeId(id);
    }


}
