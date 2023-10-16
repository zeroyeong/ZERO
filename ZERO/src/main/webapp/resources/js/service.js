function deleteAlert() {
        alert("게시글이 삭제되었습니다.");
}
function updateAlert() {
        alert("게시글이 수정되었습니다.");
}
function noticeForm() {
    var titleInput = document.querySelector('[name="notice_title"]');
    var contentInput = document.querySelector('[name="notice_content"]');
    
    if (titleInput.value === "" || contentInput.value === "") {
        alert("제목과 내용을 모두 입력해주세요.");
        return false;
    }
	alert("게시글이 등록되었습니다."); 
    return true;
}
function faqForm() {
    var titleInput = document.querySelector('[name="faq_title"]');
    var contentInput = document.querySelector('[name="faq_content"]');
    
    if (titleInput.value === "" || contentInput.value === "") {
        alert("제목과 내용을 모두 입력해주세요.");
        return false;
    }
	alert("게시글이 등록되었습니다."); 
    return true;
}