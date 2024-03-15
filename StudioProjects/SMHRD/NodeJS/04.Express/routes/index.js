const express = require('express');
const router = express.Router();
const path = require('path');

router.get('/', (req, res)=>{
    console.log('create server!');
    // (misiion) ex02.html 응답하기
    //           완료하신 분은 결과 화면 캡처해서 단톡방 공유!
    // res.sendFile(__dirname+'../public/ex02.html');
    res.sendFile(path.join(__dirname, '..', 'public/ex02.html'))
})

/*
express GET
데이터 가져오는 방법 => req.query
*/
router.get('/get', (req, res)=>{
    console.log('get success!', req.query);
    const {sat, sun} = req.query;
    res.send(`
    <html>
        <body>
            <h1>토요일의 활동 : ${sat}</h1>
            <h1>일요일의 활동 : ${sun}</h1>
        </body>
    </html>
    `)
})

router.post('/post', (req, res)=>{
    console.log('post success!', req.body);
    /*
    (mission) 아이디 admin, 비밀번호 1234
              일치 => ex02success.html
              불일치 => ex02fail.html
              완료하신 분은 ex02success.html 결과 화면
              캡처해서 단톡방 공유!
    */
   const {userId, userPw} = req.body;
   userId === 'admin' && userPw === '1234'
   ? res.sendFile(path.join(__dirname, '..', 'public/ex02success.html'))
   : res.sendFile(path.join(__dirname, '..', 'public/ex02fail.html'));
})

module.exports = router;