<%@page contentType="text/html; charset=utf-8"%>
<%@page import="org.apache.commons.fileupload.*"%>
<%@page import="java.util.*"%>
<%@page import="java.io.*"%>
<html>
<head>
<title>File Upload</title>
</head>
<body>
	<%
		//현재 파일 위치의 상대경로 지정가능
		//String savePath = application.getRealPath("파일을 저장할 폴더");
	    //예시: String savePath = application.getRealPath("\product");
		String fileUploadPath = "C:\\uploadts" ;
		
  		//파일업로드를 위해 객체 생성
		DiskFileUpload upload = new DiskFileUpload();
  		//폼페이지에서 전송된 요청 파라미터를 가져오기
		List items = upload.parseRequest(request);
  		//요청 파라미터를 모아놓은 items배열객체를 가져오기 쉽게 iterator객체로 변환함. 다음이 있는지 여부.
		Iterator params = items.iterator(); //리턴하는요소 : fileitem이라는 요소.

		while (params.hasNext()) {
			FileItem fileItem = (FileItem) params.next();
			if (!fileItem.isFormField()) { // form태그인 경우 true반환
				String fileName = fileItem.getName();
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				File file = new File(fileUploadPath + "/" + fileName); // fileName: 파일명을 인식하지 못하기 때문에 파일명을 설정해줘야 파일이 업로드된다.
				//파일이 실제로 업로드 되는 시점
				fileItem.write(file);
			}else{
				// 필드 이름
				 String name = fileItem.getFieldName(); 
				// 필드 값, 한글 인코딩
                 String value = new String((fileItem.getString()).getBytes("8859_1"),"utf-8"); 
				out.print( name+": "+ value +"<br>" );
			}
		}
	%>
</body>
</html>