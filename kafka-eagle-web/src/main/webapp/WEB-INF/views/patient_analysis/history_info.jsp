<%--
  Created by IntelliJ IDEA.
  User: LH
  Date: 2017/11/29
  Time: 10:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>chronic - disease</title>
    <jsp:include page="../public/css.jsp"></jsp:include>
    <jsp:include page="../public/tcss.jsp"></jsp:include>
    <link rel="stylesheet" type="text/css" media="all" href="/ke/media/css/chronicD/timeline_styles.css">
    <link rel="stylesheet" type="text/css" media="all" href="/ke/media/css/public/bootstrap-glyphicons.css">
    <script type="text/javascript" src="/ke/media/js/public/jquery-1.11.0.min.js"></script>
</head>
<body>
<jsp:include page="../public/navbar.jsp"></jsp:include>
<div id="wrapper">
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">
                    用户历史数据<small>overview</small>
                </h1>
                <h3 class="current-time">

                </h3>
            </div>
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <i class="fa fa-cogs fa-fw"></i> 时间线
                    </div>

                    <!-- /.panel-heading -->
                    <div class="panel-body">
                        <!-- timeline -->
                        <div id="timelineshow">
                            <ul class="timeline">
                                <li><div class="tldate">TIMELINE</div></li>

                                <li>
                                    <div class="tl-circ"></div>
                                    <div class="timeline-panel">
                                        <div class="tl-heading">
                                            <h4 class="encounterName">常规体检</h4>
                                            <p><small class="text-muted encounterDate"><i class="glyphicon glyphicon-time"></i>  4/07/2017</small></p>
                                        </div>
                                        <div class="tl-body">
                                            <p class="encounterDescription">年度体检</p>
                                            <button class="btn" value="${encounter_id}"><a href="/ke/patient_analysis/history_detail" >查看详情</a></button>
                                        </div>
                                    </div>
                                </li>

                                <li class="timeline-inverted">
                                    <div class="tl-circ"></div>
                                    <div class="timeline-panel">
                                        <div class="tl-heading">
                                            <h4 class="encounterName">门诊</h4>
                                            <p><small class="text-muted encounterDate"><i class="glyphicon glyphicon-time"></i> 4/07/2016</small></p>
                                        </div>
                                        <div class="tl-body">
                                            <p class="encounterDescription">感冒</p>
                                            <a href="#" target="_blank">查看详情</a>
                                        </div>
                                    </div>
                                </li>



                                <li>
                                    <div class="tl-circ"></div>
                                    <div class="timeline-panel">
                                        <div class="tl-heading">
                                            <h4>门诊</h4>
                                            <p><small class="text-muted"><i class="glyphicon glyphicon-time"></i> 3/22/2014</small></p>
                                        </div>
                                        <div class="tl-body">
                                            <p>急性胃肠炎</p>
                                            <a href="#" target="_blank">查看详情</a>
                                        </div>
                                    </div>
                                </li>

                                <li class="timeline-inverted">
                                    <div class="tl-circ"></div>
                                    <div class="timeline-panel">
                                        <div class="tl-heading">
                                            <h4>门诊</h4>
                                            <p><small class="text-muted"><i class="glyphicon glyphicon-time"></i> 02/23/2014</small></p>
                                        </div>
                                        <div class="tl-body">
                                            <p>骨折</p>
                                            <a href="#" target="_blank">查看详情</a>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="tl-circ"></div>
                                    <div class="timeline-panel">
                                        <div class="tl-heading">
                                            <h4>全面体检</h4>
                                            <p><small class="text-muted"><i class="glyphicon glyphicon-time"></i> 02/11/2014</small></p>
                                        </div>
                                        <div class="tl-body">
                                            <a href="#" target="_blank">查看详情</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>

                        </div>
                        <!-- timeline -->
                        <div class="panel-heading">
                            <i class="fa fa-cogs fa-fw"></i>关键指标
                        </div>
                        <table id="result" class="table table-bordered table-condensed"
                               width="100%">
                            <thead>
                            <tr>
                                <th>数据时间</th>
                                <th>身高</th>
                                <th>体重</th>
                                <th>血常规</th>
                                <th>总胆固醇</th>
                                <th>甘油三酯</th>
                            </tr>
                            </thead>
                        </table>
                    </div>
                </div>
                <!-- /.col-lg-4 -->
            </div>
            <!-- /.row -->
        </div>

    </div>
</div>
</body>
<jsp:include page="../public/script.jsp">
    <jsp:param value="main/patient/currentTime.js" name="loader" />
</jsp:include>
<jsp:include page="../public/tscript.jsp"></jsp:include>
</html>
