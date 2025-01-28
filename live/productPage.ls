setsCards = [
     {
         img: '/assets/sets/1.png'
         title: 'Qiyqiriq сет'
         price: '45 000'
     }
     {
         img: '/assets/sets/2.png'
         title: 'Снек сет'
         price: '79 000'
     }
     {
         img: '/assets/sets/3.png'
         title: 'Классик сет'
         price: '45 000'
     }
     {
         img: '/assets/sets/4.png'
         title: 'Лонгер рингс сет'
         price: '45 000'
     }
     {
         img: '/assets/sets/5.png'
         title: 'Биг сет'
         price: '62 000'
     }
     {
         img: '/assets/sets/6.png'
         title: 'Лестер сет'
         price: '53 000'
     }
     {
         img: '/assets/sets/7.png'
         title: 'Скул сет'
         price: '36 000'
     }
     {
         img: '/assets/sets/8.png'
         title: 'Комбо сет Большой'
         price: '20 000'
     }
     {
         img: '/assets/sets/9.png'
         title: 'Do’stlar 1х'
         price: '43 000'
     }
     {
         img: '/assets/sets/10.png'
         title: 'Do’stlar 2х'
         price: '79 000'
     }
     {
         img: '/assets/sets/11.png'
         title: 'Do’stlar 4х'
         price: '149 000'
     }
     {
         img: '/assets/sets/12.png'
         title: 'Острый Do’stlar 1х'
         price: '43 000'
     }
]

productPage_img = document.getElementById "productPage_img"
productPage_text = document.getElementById "productPage_text"

productPage_price = document.getElementById "productPage_price"
productPage_control = document.getElementById "productPage_control"

loc = location.search.slice 1
logType = loc.slice(loc.search("type=")+5, loc.search("product=")-1)
logProduct = loc.slice(loc.search("product=")+8)
console.log logType
console.log logProduct

if logType is "set"
    productPage_img.src = setsCards[logProduct-1].img
    productPage_text.childNodes[0].innerText = setsCards[logProduct-1].title
    productPage_text.childNodes[1].innerText = "Lorem ipsum dolor sit amet consectetur adipisicing elit. Assumenda quis!"

    productPage_price.innerText = setsCards[logProduct-1].price+" сум"

    controlMinus = productPage_control.childNodes[0]
    controlPlus = productPage_control.childNodes[2]
    controlCount = productPage_control.childNodes[1]

    controlMinus.onclick = ->
        if controlCount.innerText > 1
            controlCount.innerText = parseInt controlCount.innerText - 1
            productPage_price.innerText = (parseInt(setsCards[logProduct-1].price) * parseInt(controlCount.innerText)).toLocaleString('RU-ru') + " 000 сум"
    controlPlus.onclick = ->
        controlCount.innerText = parseInt(controlCount.innerText )+ 1
        productPage_price.innerText = (parseInt(setsCards[logProduct-1].price) * parseInt(controlCount.innerText)).toLocaleString('RU-ru') + " 000 сум"
    