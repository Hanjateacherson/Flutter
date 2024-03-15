import React from 'react'

/* 
ref 개념
- 컴포넌트 내부에 저장공간
- 특정 DOM 요소 접근 시 사용

ref 특징
- 화면이 리렌더링 시, ref 값이 유지
(리렌더링 시 일반 변수는 초기화)
- ref 값 변화 시, 컴포넌트 리렌더링 X
(state 값 변화 시, 컴포넌트 리렌더링 O)

ref 활용
- 리렌더링 여부와 관계없이 컴포넌트 내부 데이터 유지가 필요할 경우
- 특정 DOM 여서 접근 시 사용
(ex. 포커싱 작업, 속성 변경 등)
*/

export const Ex01 = () => {
    let countVar = 0;
    const [countState, setCountState]= useState(0);
    let countRef = useRef(0);


    const varClick = ()=>{
        countvar += 1;
        console.log('var', countVar);
    }
    const stateClick = ()=>{
        setCountState(countState +1);
        console.log('state', countVar);
    }
    const refClick = () =>{
        console.log('countRef', countRef);
        countRef.current +=1;
        console.log('ref', countRef,current);
    }
  return (
    <div>
        <p>var :{countVar}</p>
        <p>state : {countState}</p>
        <p>ref :{countRef.current}</p>
        <button onClikck={varclick}>var +1</button>
        <button onClikck={stateclick}>state +1</button>
        <button onClikck={refclick}>ref +1</button>
    </div>
  )
}

export default Ex01