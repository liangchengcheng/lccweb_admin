package com.hdsx.exception;

import com.alibaba.fastjson.JSON;
import com.hdsx.dto.BaseResult;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 * 错误信息的统一处理
 * 
 * @author lcc
 *
 */
@Component
public class GlobalExceptionResolver implements HandlerExceptionResolver {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());

	@ResponseBody
	public ModelAndView resolveException(HttpServletRequest request, HttpServletResponse response, Object handler,
			Exception ex) {
		LOG.error("访问" + request.getRequestURI() + " 发生错误, 错误信息:" + ex.getMessage());
		// 在这里其实有2种选择
		// 跳转到定制化的错误页面或者返回json信息
		// ModelAndView error= new ModelAndView("error");
		// error.addObject("exMsg",ex.getMessage());
		// error.addObject("exType",ex.getClass().getSimpleName().replace("\"",
		// "'"));
		try {
			PrintWriter writer = response.getWriter();
			BaseResult<String> result = new BaseResult<>(false, ex.getMessage());
			writer.write(JSON.toJSONString(result));
			writer.flush();
		} catch (Exception e) {
			LOG.error("Exception:", e);
		}
		return null;
	}

}
