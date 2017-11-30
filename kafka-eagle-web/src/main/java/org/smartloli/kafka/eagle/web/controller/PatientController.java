package org.smartloli.kafka.eagle.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
/**
 * @author LH
 *
 *
 * */
@Controller
public class PatientController {
   // @Autowired
    //private PatientService patientService;
/** Patient status_prognosis Viewer */
@RequestMapping(value = "/patient_analysis/status", method = RequestMethod.GET)
    public ModelAndView statusView(HttpSession session){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/patient_analysis/status_prognosis");
        return mav;
    }
    /** Patient real-time-info Viewer */
    @RequestMapping(value = "/patient_analysis/realtime", method = RequestMethod.GET)
    public ModelAndView realtimeView(HttpSession session){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/patient_analysis/real-time-info");
        return mav;
    }
    /** Patient history_info Viewer */
    @RequestMapping(value = "/patient_analysis/history", method = RequestMethod.GET)
    public ModelAndView historyView(HttpSession session){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("/patient_analysis/history_info");
        return mav;
    }


}
