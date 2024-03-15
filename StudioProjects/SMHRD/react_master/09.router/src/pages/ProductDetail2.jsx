import React from 'react'
import { useSearchParams } from 'react-router-dom'

const ProductDetail2 = () => {

  const [query, setQuery] = useSearchParams()
  console.log("Product로 넘겨받은 값 : ",query.get('pro_no'));

  return (
    <div>ProductDetail2 : </div>
  )
}

export default ProductDetail2