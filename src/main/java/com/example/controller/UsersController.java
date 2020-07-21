package com.example.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.example.domain.UsersVO;
import com.example.mapper.UsersMapper;

@Controller
public class UsersController {
	@Autowired
	UsersMapper mapper;

	/* �̹������� �������� ��� */
	@Resource(name = "uploadPath") /* ���� ���ε带 ���� �ʿ� */
	private String path;

	@RequestMapping("/login/login")
	public void login() {

	}

	@RequestMapping(value = "/login/login", method = RequestMethod.POST)
	@ResponseBody
	public int loginPost(UsersVO vo, HttpSession session) {
		int result = 0; // ȸ�� �������� ���� ���, ���̵� �������� �ʴ� ���

		UsersVO readVO = mapper.read(vo.getId());
		if (readVO != null) {
			if (readVO.getPass().equals(vo.getPass())) { // �α��� ����
				if (readVO.getPosition() == 1) {
					result = 1; // �Ϲ� user
					session.setAttribute("id", readVO.getId());
					session.setAttribute("name", readVO.getNickname());
					session.setAttribute("position", readVO.getPosition());
				} else if (readVO.getPosition() == 2) {
					result = 2; // admin
					session.setAttribute("id", readVO.getId());
					session.setAttribute("name", readVO.getName());
					session.setAttribute("position", readVO.getPosition());
				} else {
					result = 3; // ������
				}
			} else {
				result = 4; // ��й�ȣ Ʋ���� ���
			}
		}
		return result;
	}

	@RequestMapping(value = "loginPostNaver", method = RequestMethod.GET)
	public String loginPOSTNaver(HttpSession session) {

		return "login/loginPostNaver";
	}

	@RequestMapping("/login/insert")
	public void insert() {

	}
}