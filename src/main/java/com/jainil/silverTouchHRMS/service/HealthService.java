package com.jainil.silverTouchHRMS.service;

import com.jainil.silverTouchHRMS.entity.Health;

public interface HealthService {
    public void saveService(Health health);

    public Health fetchHealthByEmpId(Long empId);
    public void deleteHealthByEmpId(Long empId);
}
