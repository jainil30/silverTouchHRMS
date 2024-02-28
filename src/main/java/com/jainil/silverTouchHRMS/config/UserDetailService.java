package com.jainil.silverTouchHRMS.config;

import com.jainil.silverTouchHRMS.entity.Employee;
import com.jainil.silverTouchHRMS.repository.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;


@Service
public class UserDetailService implements UserDetailsService {
    @Autowired
    private EmployeeRepository employeeRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        System.out.println("Username : " + username);

//        Restaurant restaurant = restaurantRepository.findByRestaurantEmail(username);

        Employee employee =employeeRepository.findByEmployeeFirstName(username);

//        if(restaurant == null){
//            throw new RestaurantNotFoundException(username + " not found");
//        }

//        RestaurantDetail restaurantDetail = new RestaurantDetail(restaurant);

        UserDetail userDetail= new UserDetail(employee);


        return userDetail;
    }
}
