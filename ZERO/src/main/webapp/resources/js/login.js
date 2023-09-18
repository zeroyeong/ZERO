const findId = document.querySelector('.find_id');
const findPwd = document.querySelector('.find_pwd');
const idDiv = document.getElementById('find_idDiv');
const pwdDiv = document.getElementById('find_pwdDiv');
const background = document.getElementById('background');

findId.addEventListener('click', function(){
    idDiv.style.display="block";
    background.style.display="block";
})


findPwd.addEventListener('click', function(){
    pwdDiv.style.display="block";
    background.style.display="block";
})

const closeButton = document.querySelector('.closeButton');
const closeButton2 = document.getElementById('closeButton');

closeButton.addEventListener('click', function(){
    idDiv.style.display="none";
    pwdDiv.style.display="none";
    background.style.display="none";
})

closeButton2.addEventListener('click', function(){
    pwdDiv.style.display="none";
    background.style.display="none";
})