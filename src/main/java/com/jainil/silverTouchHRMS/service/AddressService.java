package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Address;

import java.util.List;

public interface AddressService {

    public List<Address> fetchAllAddresses();

    public Address fetchById(Long id);

    public void saveAddress(Address address);

    public void updateAddress(Address address);

    public void deleteAddressByEmpId(Long empId);
}
