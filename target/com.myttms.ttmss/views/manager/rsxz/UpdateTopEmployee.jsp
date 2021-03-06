<%@ page import="com.ttms.entity.Employee" %><%--
  Created by IntelliJ IDEA.
  User: hjh
  Date: 16-12-4
  Time: 下午10:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>人员增加</title>
    <link rel="stylesheet" type="text/css" href="/css/index.css">
</head>
<body class="mian_bj">
<%
    Employee employee = (Employee)request.getAttribute("employee");
%>
<form class="mian_top_01" action="/employee/changetopemp?id=<%=employee.getEmp_id()%>" method="post">
    <div class="mian_top_r">
    </div>
    <div class="mian_top_l">
    </div>
    <div class="mian_top_c">
        <ul>
            <li><a href="/employee/showemp">
                <p>
                    用户信息</p>
            </a></li>
            <li><a href="/employee/showtopemp">
                <p>
                    管理员信息</p>
            </a></li>

        </ul>
    </div>
    <div class="mian_b">
        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
            <tr>
                <td width="5%" class="mian_b_bg_lm">&nbsp;

                </td>
                <td colspan="4" class="mian_b_bg_lm">
                    更新员工信息
                </td>
            </tr>
        </table>
        <table width="100%" border="1" cellpadding="0" cellspacing="0" class="mian_b_bg_xz">
            <tr style="background-color: White; height: 30px">
                <td colspan="8">
                    基本信息(有<span style="color:red">*</span>为必填信息)
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td style="width: 8%;" align="center">
                    姓名
                    <span style="color:red">*</span>
                </td>
                <td style="width: 8%" align="center">
                    性别
                    <span style="color:red">*</span>
                </td>
                <td style="width: 8%" align="center">
                    出生年月
                    <span style="color:red">*</span>
                </td>
                <td style="width: 8%" align="center">
                    密码
                </td>
                <td style="width: 8%" align="center">
                    专业
                </td>
                <td style="width: 8%" align="center">
                    工作年限
                </td>
                <td style="width: 8%" align="center">
                    政治面貌
                </td>
                <td style="width: 8%" rowspan="5" align="center" valign="middle">
                    <img src="/images/head_pic.png">
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td>
                    <input id="Text1" name="truename" type="text" placeholder="<%=employee.getEmp_name()%>" style="border: 0px; width: 100px" class="mess">
                </td>
                <td>
                    <select id="Select1" style="width: 80px" class="mess" name="sex">
                        <option value=""><%=employee.getEmp_sex()%></option>
                        <option value="男">男</option>
                        <option value="女">女</option>
                    </select>
                </td>
                <td>
                    <input id="Text2" name="birth" type="text" placeholder="<%=employee.getEmp_birth()%>" style="border: 0px; width: 100px" class="mess">
                </td>
                <td>
                    <input id="Text3"  name="password" type="text" placeholder="<%=employee.getEmp_pass()%>" style="border: 0px; width: 100px">
                </td>
                <td>
                    <input id="Text4" type="text" style="border: 0px; width: 100px">
                </td>
                <td>
                    <input id="Text5" type="text" style="border: 0px; width: 100px">
                </td>
                <td>
                    <input id="Text6" type="text" style="border: 0px; width: 100px">
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td>
                    籍贯
                    <span style="color:red">*</span>
                </td>
                <td colspan="2">
                    手机
                    <span style="color:red">*</span>
                </td>
                <td colspan="3">
                    邮箱
                    <span style="color:red">*</span>
                </td>
                <td>
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td>
                    <input id="Text11"  name="native" type="text" placeholder="<%=employee.getEmp_native()%>" style="border: 0px; width: 100px" class="mess">
                </td>
                <td colspan="2">
                    <input id="Text12"  name="tel" type="text" placeholder="<%=employee.getEmp_tel_num()%>" style="border: 0px; width: 200px" class="mess">
                </td>
                <td colspan="3">
                    <input id="Text13"  name="mail"  type="text" placeholder="<%=employee.getEmp_email()%>" style="border: 0px; width: 300px" class="mess">
                </td>
                <td>
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td>
                    家庭住址:
                    <span style="color:red">*</span>
                </td>
                <td colspan="4">
                    <input id="Text7"  name="address" type="text" placeholder="<%=employee.getEmp_addr()%>" style="border: 0px; width: 300px" class="mess">
                </td>
                <td>
                    邮编：
                </td>
                <td>
                    <input id="Text8" type="text" style="border: 0px; width: 100px">
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td>
                    户口所在地：
                </td>
                <td colspan="4">
                    <input id="Text9" type="text" style="border: 0px; width: 300px">
                </td>
                <td>
                    邮编：
                </td>
                <td>
                    <input id="Text10" type="text" style="border: 0px; width: 100px">
                </td>
                <td align="center">
                    上传照片
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td colspan="8">
                    教育经历&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>新增</a>
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td colspan="8">
                    <table width="100%" border="1" style="border-top: 1px solid #fff; border-bottom: 1px solid #fff;" cellpadding="0" cellspacing="0" class="mian_b_bg_xz" style="text-align: center;">
                        <tr>
                            <td rowspan="2">
                                序号
                            </td>
                            <td colspan="2">
                                时间
                            </td>
                            <td rowspan="2">
                                学校
                            </td>
                            <td rowspan="2">
                                专业
                            </td>
                            <td rowspan="2">
                                学历、学位
                            </td>
                            <td rowspan="2">
                                备注
                            </td>
                            <td rowspan="2">
                                操作
                            </td>
                        </tr>
                        <tr>
                            <td>
                                开始时间
                            </td>
                            <td>
                                结束时间
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                删除
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                删除
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                删除
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td colspan="8">
                    培训经历&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>新增</a>
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td colspan="8">
                    <table width="100%" border="1" cellpadding="0" cellspacing="0" class="mian_b_bg_xz" style="text-align: center; border-top: 1px solid #fff; border-bottom: 1px solid #fff;">
                        <tr>
                            <td rowspan="2">
                                序号
                            </td>
                            <td colspan="2">
                                时间
                            </td>
                            <td rowspan="2">
                                培训机构
                            </td>
                            <td rowspan="2">
                                培训项目
                            </td>
                            <td rowspan="2">
                                备注
                            </td>
                            <td rowspan="2">
                                操作
                            </td>
                        </tr>
                        <tr>
                            <td>
                                开始时间
                            </td>
                            <td>
                                结束时间
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                删除
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                删除
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                删除
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td colspan="8">
                    其它经历&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>新增</a>
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td colspan="8">
                    <table width="100%" border="1" cellpadding="0" style="border-top: 1px solid #fff; border-bottom: 1px solid #fff;" cellspacing="0" class="mian_b_bg_xz" style="text-align: center;">
                        <tr>
                            <td rowspan="2">
                                序号
                            </td>
                            <td colspan="2">
                                时间
                            </td>
                            <td rowspan="2">
                                事项
                            </td>
                            <td rowspan="2">
                                描述
                            </td>
                            <td rowspan="2">
                                证明材料
                            </td>
                            <td rowspan="2">
                                备注
                            </td>
                            <td rowspan="2">
                                操作
                            </td>
                        </tr>
                        <tr>
                            <td>
                                开始时间
                            </td>
                            <td>
                                结束时间
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>&nbsp;

                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                删除
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>&nbsp;

                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                删除
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>&nbsp;

                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                删除
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td colspan="8">
                    职位信息
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td align="center">
                    部门
                </td>
                <td align="center">
                    职位
                </td>
                <td align="center">
                    &nbsp;工号</td>
                <td align="center">
                    &nbsp;入职时间</td>
                <td align="center">
                    &nbsp;工作年限</td>
                <td align="center">
                    &nbsp;座机号码</td>
                <td align="center">
                    公司邮箱</td>
                <td align="center" valign="middle">
                    备注
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td align="center">
                    <select>
                        <option>软装部</option>
                    </select>
                </td>
                <td align="center">&nbsp;

                </td>
                <td align="center">
                    0001</td>
                <td align="center">&nbsp;

                </td>
                <td align="center">&nbsp;

                </td>
                <td align="center">&nbsp;

                </td>
                <td align="center">&nbsp;
                </td>
                <td align="center">&nbsp;

                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td colspan="8">
                    薪资结构
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td align="center" rowspan="2">
                    基本工资
                </td>
                <td align="center" rowspan="2">
                    岗位工资
                </td>
                <td align="center" rowspan="2">
                    绩效奖金
                </td>
                <td align="center" rowspan="2">
                    四金
                </td>
                <td align="center" colspan="3">
                    福利补贴
                </td>
                <td align="center" rowspan="2">
                    合计
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td align="center">
                    通讯费
                </td>
                <td align="center">
                    车费
                </td>
                <td align="center">
                    午餐费
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td align="center">&nbsp;

                </td>
                <td align="center">&nbsp;

                </td>
                <td align="center">&nbsp;

                </td>
                <td align="center">&nbsp;

                </td>
                <td align="center">&nbsp;

                </td>
                <td align="center">&nbsp;

                </td>
                <td align="center">&nbsp;

                </td>
                <td align="center">&nbsp;

                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td colspan="8">
                    工作记录&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>新增</a>
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td colspan="8">
                    <table width="100%" border="1" cellpadding="0" style="border-top: 1px solid #fff; border-bottom: 1px solid #fff;" cellspacing="0" class="mian_b_bg_xz" style="text-align: center;">
                        <tr>
                            <td rowspan="2">
                                序号
                            </td>
                            <td colspan="2">
                                时间
                            </td>
                            <td rowspan="2">
                                职位
                            </td>
                            <td rowspan="2">
                                描述
                            </td>
                            <td rowspan="2">
                                备注
                            </td>
                            <td rowspan="2">
                                操作
                            </td>
                        </tr>
                        <tr>
                            <td>
                                开始时间
                            </td>
                            <td>
                                结束时间
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>&nbsp;

                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                删除
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>&nbsp;

                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                删除
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>&nbsp;

                            </td>
                            <td>
                            </td>
                            <td>
                            </td>
                            <td>
                                删除
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr style="background-color: White; height: 30px">
                <td style="text-align: left" colspan="7">
                    填表日期
                </td>
                <td align="center">
                    <input id="Text14" type="text" style="border: 0px; width: 100px" value="2012-03-21">
                </td>
            </tr>
            <tr style="background-color: White; height: 30px" id="mysub">
                <td align="center" colspan="8">
                    <a href="#mysub"><input type="image" src="/images/bnt_03.gif" name="img" style="margin-top:8px; margin-right: 10px;" width="80" height="22" onclick="return checkmess();" ></a>
                    <img src="/images/bnt_05.gif" alt="" width="80" height="22" style="margin-bottom: 10px;"　onclick="javascript:window.history.go(-1);">
                    <span style="color: red">${requestScope.errors}</span>
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>


