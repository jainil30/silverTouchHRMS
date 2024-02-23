package com.jainil.silverTouchHRMS.service;


import com.jainil.silverTouchHRMS.entity.Address;
import com.jainil.silverTouchHRMS.repository.AddressRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Objects;
import java.util.Optional;

@Service
public class AddressServiceImplementation implements AddressService{

    @Autowired
    private AddressRepository addressRepository;

    @Override
    public List<Address> fetchAllAddresses() {
        return this.addressRepository.findAll();
    }

    @Override
    public Address fetchById(Long id) {
        return this.addressRepository.findById(id).get();
    }

    @Override
    public void saveAddress(Address address) {
        this.addressRepository.save(address);
    }

    @Override
    public void updateAddress(Address address) {

        // Do it yourself
//
//        if(!Objects.nonNull(address.getAddress()) || "".equals(address.getAddress())){
//
//        }
    }


}
