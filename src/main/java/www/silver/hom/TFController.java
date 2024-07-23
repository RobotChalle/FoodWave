package www.silver.hom;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import www.silver.service.IF_TFService;
import www.silver.vo.CommentVO;
import www.silver.vo.TFVO;

@Controller
public class TFController {
	
	@Inject
	IF_TFService tfservice;

	@RequestMapping(value = "/search", method = RequestMethod.GET)
	public String search(@ModelAttribute TFVO tvo,Model model) throws Exception {
		List<TFVO> allsearch = tfservice.search(tvo);
		System.out.println(allsearch);
		model.addAttribute("searchTF", allsearch);
		return "searchresult";
	}
	@RequestMapping(value = "/",method = RequestMethod.GET)
	public String home() {
		return "home";
	}
	@GetMapping(value = "/input")
	public String input() {
		return "inputForm";
	}
	@PostMapping(value = "/inputSave")
	public String inputSave(@ModelAttribute TFVO tfvo) throws Exception {
		tfservice.insert(tfvo);
		return "redirect:tfList";		
	}
	@GetMapping(value ="/tfList")
	public String tfList(Model model) throws Exception{
		List<TFVO> allList = tfservice.allList();
		model.addAttribute("allList",allList);
		return "tfList";
	}
	@GetMapping(value ="/delete")
	public String delete(@ModelAttribute TFVO tfvo) throws Exception{
		tfservice.deletecomment(tfvo);
		tfservice.delete(tfvo);
		return "redirect:tfList";
	}
	@GetMapping(value ="/update")
	public String update(Model model,@ModelAttribute TFVO tfvo) throws Exception{
		model.addAttribute("no",tfvo.getNo());
		model.addAttribute("username",tfvo.getUsername());
		model.addAttribute("place",tfvo.getPlace());
		model.addAttribute("restaurant",tfvo.getRestaurant());
		model.addAttribute("review",tfvo.getReview());
		return "TFUpdate";
	}
	@PostMapping(value ="/updateSave")
	public String updateSave(@ModelAttribute TFVO tfvo) throws Exception{
		tfservice.update(tfvo);
		return "redirect:tfList";
	}
	@GetMapping(value ="/tfDetails")
	public String details(Model model,@ModelAttribute CommentVO cvo,@ModelAttribute TFVO tfvo) throws Exception{
		model.addAttribute("no",tfvo.getNo());
		model.addAttribute("username",tfvo.getUsername());
		model.addAttribute("place",tfvo.getPlace());
		model.addAttribute("restaurant",tfvo.getRestaurant());
		model.addAttribute("review",tfvo.getReview());
		model.addAttribute("in_date",tfvo.getIn_date());
		List<CommentVO> commentList = tfservice.commentList(tfvo.getNo());
		model.addAttribute("commentList",commentList);
		return "tfDetails";
	}
	@PostMapping(value ="/commentSave")
	public String commentSave(@ModelAttribute CommentVO cvo) throws Exception{
		tfservice.insertComment(cvo);
		return "redirect:tfList";
	}
}
