package com.example.demo.dao;

import com.example.demo.mapper.SysuserMapper;
import com.example.demo.pojo.Sysuser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 * Created by zly11 on 2018/4/25.
 */

public class SysuserSercice implements UserDetailsService {
    @Autowired
    private SysuserMapper sysuserMapper;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Sysuser sysuser = sysuserMapper.findSysuserByUsername(username);
        if (sysuser == null){
            throw new UsernameNotFoundException("用户不存在");
        }
        return sysuser;
    }

//    public void check(UserDetails user) {
//        if(!user.isAccountNonLocked()) {
//            AbstractUserDetailsAuthenticationProvider.this.logger.debug("User account is locked");
//            throw new LockedException(AbstractUserDetailsAuthenticationProvider.this.messages.getMessage("AbstractUserDetailsAuthenticationProvider.locked", "User account is locked"));
//        } else if(!user.isEnabled()) {
//            AbstractUserDetailsAuthenticationProvider.this.logger.debug("User account is disabled");
//            throw new DisabledException(AbstractUserDetailsAuthenticationProvider.this.messages.getMessage("AbstractUserDetailsAuthenticationProvider.disabled", "User is disabled"));
//        } else if(!user.isAccountNonExpired()) {
//            AbstractUserDetailsAuthenticationProvider.this.logger.debug("User account is expired");
//            throw new AccountExpiredException(AbstractUserDetailsAuthenticationProvider.this.messages.getMessage("AbstractUserDetailsAuthenticationProvider.expired", "User account has expired"));
//        }AuthenticationException
//    }

}
