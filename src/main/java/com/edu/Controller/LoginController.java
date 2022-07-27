package com.edu.Controller;

import java.io.IOException;
import java.util.Optional;

import javax.mail.MessagingException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.edu.DAO.AccountDAO;
import com.edu.Entity.Account;
import com.edu.model.AccountForm;
import com.edu.service.CookieService;
import com.edu.service.SessionService;

import javax.mail.MessagingException;


@Controller
public class LoginController {
	
	@Autowired
	AccountDAO dao;
	
	@Autowired
	SessionService session;
	
	@Autowired
	CookieService cookie;
	
	 @GetMapping("/account/login")
	    public String getLogin(@RequestParam(required = false) String message,
	            @RequestParam(required = false) String error) {
	        return "user/login";
	    }
	 
//	 @PostMapping("/account/login")
//	    public ModelAndView postLogin(ModelMap model,
//	            @RequestParam("username") String username,
//	            @RequestParam("password") String password
//	            
//	            ) {
//
//	        try {
//	            Account user = dao.findById(username).get();
//	            if (user != null) {
//	                session.set("user", user);
//	                session.set("username", username);
//	                String uri = session.get("security-uri");
//	                System.out.println(uri);
//	                if (uri != null) {
//	                   
//	                    return new ModelAndView("redirect:" + uri, model);
//	                } else {
//	                	
//	                     model.addAttribute("isLogin", true);
//
//	                     return new ModelAndView("redirect:/", model);          
//	                }
//	            } else {
//	                model.addAttribute("message", "Invalid username or password or your account is not verified!!");
//	                return new ModelAndView("user/login", model);
//	            }
//	        } catch (Exception e) {
//	            model.addAttribute("message", "Invalid username");
//	            return new ModelAndView("user/login", model);
//	        }
//	    }
	 
	 @PostMapping("/account/login")
	    public ModelAndView postLogin(ModelMap model,
	            @RequestParam("username") String username,
	            @RequestParam("password") String password) {
		 
	            Account user = dao.findById(username).get();
	            if(username == null ) {
	            	if(password == null) {
	            		return new ModelAndView("redirect:/user/login" , model);
	            	}
	            	
	            }else {
	            	  model.addAttribute("isLogin", true);
	            	  return new ModelAndView("redirect:/", model);       
	            }
	            model.addAttribute("message", "Invalid username");
	            return new ModelAndView("user/login", model);
				
	    }
	 
	 @GetMapping("/account/signup")
	    public String signup(ModelMap model, @RequestParam(required = false) Optional<AccountForm> form) {
	        model.addAttribute("accForm", new AccountForm());
	        return "/user/signup";
	    }

	    @PostMapping("/account/signup")
	    public ModelAndView postSignup(ModelMap modelMap,@ModelAttribute Account
	    		account, HttpServletRequest req)
	            throws IOException, MessagingException {
	        
	        // check if account already existed
	        if (dao.existsAccountByUsername(account.getUsername())) {
	            modelMap.addAttribute("error", "Account:" + account.getUsername() + " already exists!!");
	            return new ModelAndView("redirect:/account/signup", modelMap);
	        }
	        dao.save(account);
	        modelMap.addAttribute("message", "Please check your account");
	        return new ModelAndView("redirect:/", modelMap);
	    }
	    
	    @RequestMapping("/account/logout")
	    public ModelAndView logout(ModelMap model, @RequestParam(required = false) String message) {
	        model.addAttribute("isLogin", false);
	        model.addAttribute("message", message);
	        return new ModelAndView("redirect:/account/login", model);
	    }

}
