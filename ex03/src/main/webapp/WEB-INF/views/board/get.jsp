<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../includes/header.jsp" %>

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Read</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">Board Read Page</div>
                        <!-- /.panel-heading -->
                        <div class="panel-body"><!-- ㅇㅋ -->
                           	<div class="form-group">
                            	<label>Bno</label>
                            	<input class="form-control" name='bno' value='<c:out value="${board.bno }"/>' readonly>
                          	</div>
                           	<div class="form-group">
                           		<label>Title</label>
                           		<input class="form-control" name='title' value='<c:out value="${board.title}"/>' readonly>
                           	</div>
                           	<div class="form-group">
                           		<label>Text area</label>
                           		<textarea class="form-control" rows="3" name='content'>
                           			<c:out value="${board.content}"/> 
                           		</textarea>
                           	</div>
                           	<div class="form-group">
                           		<label>Writer</label>
                           		<input class="form-control" name='writer' value='<c:out value="${board.writer}"/>' readonly>
                           	</div>
                           	
                           	<button data-oper='modify' class="btn btn-default" 
                           	onclick="location.href='/board/modify?bno=<c:out value="${board.bno}"/>'">Modify</button>
                           	<button data-oper='list' class="btn btn-info"
                           	onclick="location.href='/board/list'">List</button>
                           	<!-- <button type="submit" class="btn btn-default" >Submit Button</button> -->
                           	<!-- <button type="reset" class="btn btn-default" >Reset Button</button> -->
                           
                            
                            <!-- /.table-responsive -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-6 -->
            </div>
            <!-- /.row -->
       <%@ include file="../includes/footer.jsp"%>