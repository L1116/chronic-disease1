package org.smartloli.kafka.eagle.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@Controller
public class MonitorController {
    /**whole-country Viewer*/
    @RequestMapping(value = "/monitor/whole-country", method = RequestMethod.GET)
    public ModelAndView wholeView(HttpSession session){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/monitor/whole-country");
        return mav;
    }
    /**area Viewer*/
    @RequestMapping(value = "/monitor/area", method = RequestMethod.GET)
    public ModelAndView areaView(HttpSession session){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/monitor/area");
        return mav;
    }
    /**city Viewer*/
    @RequestMapping(value = "/monitor/city", method = RequestMethod.GET)
    public ModelAndView cityView(HttpSession session){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/monitor/city");
        return mav;
    }
    /**location Viewer*/
    @RequestMapping(value = "/monitor/location", method = RequestMethod.GET)
    public ModelAndView locationView(HttpSession session){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/monitor/location");
        return mav;
    }


}
