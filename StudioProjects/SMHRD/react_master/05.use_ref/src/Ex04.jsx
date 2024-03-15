// import React from 'react'

import React, { useRef } from 'react';

const Ex04 = () => {
    /* 
    (1) 사용자가 input 태그 안에 입략힌 값을 가져오기
    (2) 그 값에 따라서 해당하는 경로로 이미지의 src 속성 변경하기
    */

    const textRef = useRef();
    const imgRef = useRef();

    const imgList =[
        {name : '국민의힘', src : 'https://i.namu.wiki/i/yU7vcIANfdXufYjjGj6qt8YUQPgJot8LTwNUuxBIuAxtGCc0zB6V51LMciuaQ2xgmTIbC1121cEUoA2kr0psNjGvX0Ys45HMXx_0pWa04QzRLuj9PtmVsg0ZEWHqEPDgKH7Vj-41idWOD4PK4PdTTQ.svg'},
        {name : '더불어민주당', src : 'https://i.namu.wiki/i/_IagWYNZCIlzx19TTNwoJQQ8SGEhjpkDq1CEVV0r44Vbowwm7ekeg8xfqZ7kIalfAltUg-VJilBDDBNpEyCisWmoM4J4SoLCxSrQBxs-DrkRW6vCCCTK-t1skIeNwuuzUnlb88sWEm2cgA20T5xviA.svg'},
        {name : '녹색정의당', src : 'https://i.namu.wiki/i/H92XsbXEx3-Rz-raS6n0NUQVJTk3sm1Uz6sgQJkeOdAaUyA2ZlMaHn9_TJo6BxEWKDbya3IoxkVV3CrKUsueqFTbGb613o_iPeSJuZv7IAcAMCSswXiAL2mPYmMzuZ06w3VDQPELroCutxE6N3Fh8w.svg'},
        {name : '진보당', src : 'https://i.namu.wiki/i/617dUfuFb7auAZr1T4t73vOmESJ3oqA5kDLSW1EvoqnTfrsWRa_Qu6CYqLcH0ywEeuj7yrevC4CzLKrT4w9asUXR6pO8NIrJ3MRZV0GeD8JkrtLaOvSALiFZPT5k_BoWZnZ9G4jmIAxcJjdHMC84cg.svg'},
        {name : '기본소득당', src : 'https://i.namu.wiki/i/2Hf7u84d4-DmXtNUKWAUYDQvgWo4aIbC5V6CkCegD-hE9ewjpv-mpg-4Oc3c5DQF_5ch1OftgwF9USh_AC2AAW8T3Pcr3qNJhoX55I-ZkgsY93gLxJJ9YwFR6kUDaK5pL9LH3_9RwLU1a0Gxw3jguw.svg'},
        {name : '개혁신당', src : 'https://i.namu.wiki/i/NbVwsnFfrGHPm8GCQLkDTf7HGpZEPEaQEeCpiZpTvRb8QWFZ35bhfcHkNi2QlVQiYZdaUPjEQRB75fEO7YlHAALEiQFafsGQHewlPric4mwDrKVFFF1BA_ylSVmFLnr5cfwTTQW-HTnMFRw0gu3ULA.svg'},
    ]
    const imgChange = ()=>{
        // console.log(textRef.current.value);
        /*
        switch(textRef.current.value){
            case imgList[0].name : imgRef.current.src = imgList[0].src; break;
            case imgList[1].name : imgRef.current.src = imgList[1].src; break;
            case imgList[2].name : imgRef.current.src = imgList[2].src; break;
            case imgList[3].name : imgRef.current.src = imgList[3].src; break;
            case imgList[4].name : imgRef.current.src = imgList[4].src; break;
            case imgList[5].name : imgRef.current.src = imgList[5].src; break;
        }
        */
       imgList.forEach(item=>{
        textRef.current.value===item.name && (imgRef.current.src=item.src);
       })

       // input 입력값 비워주기
       textRef.current.value = '';
       
       // input 오토포커싱
       textRef.current.focus();
    }
  return (
    <div>
        <p>어떤 사진을 원하시나요?</p>
        <input type="text" ref={textRef}/>
        <button onClick={imgChange}>변경</button>
        <br/><br/>
        <img src={imgList[0].src} 
        width="250px" alt="" ref={imgRef}/>
    </div>
  )
}

export default Ex04