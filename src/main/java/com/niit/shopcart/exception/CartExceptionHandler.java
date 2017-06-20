package com.niit.shopcart.exception;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class CartExceptionHandler {
	
	private static final Logger log = LoggerFactory.getLogger(CartExceptionHandler.class);
	
	/*@ExceptionHandler(SQLException.class)
	public ModelAndView gotSqlException(Exception e)
	{
		log.debug("Start of method gotSqlException");
		ModelAndView mv=new ModelAndView("/Error");
		mv.addObject("errorMsg", e.getMessage());
		log.debug("End of method gotSqlException");
		return mv;
	}
	
	@ExceptionHandler(CannotCreateTransactionException.class)
	public ModelAndView gotdbServerNotStarted(Exception e)
	{
		log.debug("Start of method gotdbServerNotStarted");
		ModelAndView mv=new ModelAndView("/Error");
		mv.addObject("errorMsg", e.getMessage());
		log.debug("End of method gotdbServerNotStarted");
		return mv;
	}

	@ExceptionHandler(QuerySyntaxException.class)
	public ModelAndView gotQuerySyntaxException(Exception e)
	{
		log.debug("Start of method gotQuerySyntaxException");
		ModelAndView mv=new ModelAndView("/Error");
		mv.addObject("errorMsg", e.getMessage());
		log.debug("End of method gotQuerySyntaxException");
		return mv;
	}
	
	@ExceptionHandler(NoHandlerFoundException.class)
	public ModelAndView gotNoHandlerFoundException(Exception e)
	{
		log.debug("Start of method gotNoHandlerFoundException");
		ModelAndView mv=new ModelAndView("/Error");
		mv.addObject("errorMsg", e.getMessage());
		log.debug("End of method gotNoHandlerFoundException");
		return mv;
	}
	
	@ExceptionHandler(IOException.class)
	public ModelAndView gotIOException(Exception e)
	{
		log.debug("Start of method gotIOException");
		ModelAndView mv=new ModelAndView("/Error");
		mv.addObject("errorMsg", e.getMessage());
		log.debug("End of method gotIOException");
		return mv;
	}
	@ExceptionHandler(NullPointerException.class)
	public ModelAndView gotNullPointerException(Exception e)
	{
		log.debug("Start of method gotNullPointerException");
		ModelAndView mv=new ModelAndView("/Error");
		mv.addObject("errorMsg", e.getMessage());
		log.debug("End of method gotNullPointerException");
		return mv;
	}
	@ExceptionHandler(ConstraintViolationException.class)
	public ModelAndView gotConstraintViolationException(Exception e)
	{
		log.debug("Start of method gotNullPointerException");
		ModelAndView mv=new ModelAndView("/Error");
		mv.addObject("errorMsg", e.getMessage());
		log.debug("End of method gotConstraintViolationException");
		return mv;
	}

*/
	@ExceptionHandler(Exception.class)
	public ModelAndView gotIOException(Exception e)
	{
		log.debug("Start of method gotIOException");
		ModelAndView mv=new ModelAndView("/Error");
		mv.addObject("errorMsg", e.getMessage());
		log.debug("End of method gotIOException");
		return mv;
	}

}
