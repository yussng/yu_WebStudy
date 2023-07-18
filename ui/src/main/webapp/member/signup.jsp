<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Fjalla+One&display=swap')

$bg: "https://s3-us-west-2.amazonaws.com/s.cdpn.io/38816/image-from-rawpixel-id-2210775-jpeg.jpg"
$form-bg: #f8f4e5
$form-shadow: #ffa580
$form-primary-highlight: #95a4ff
$form-secondary-highlight: #ffc8ff
$font-size: 14pt
$font-face: 'Fjalla One'
$font-color: #2A293E

*
  margin: 0
  padding: 0

body
  background: url($bg) center center no-repeat
  background-size: cover
  width: 100vw
  height: 100vh
  display: grid
  align-items: center
  justify-items: center

.contact-us
  background: $form-bg
  padding: 50px 100px
  border: 2px solid rgba(0,0,0,1)
  box-shadow: 15px 15px 1px $form-shadow, 15px 15px 1px 2px rgba(0,0,0,1)

input
  display: block
  width: 100%
  font-size: $font-size
  line-height: $font-size * 2
  font-family: $font-face
  margin-bottom: $font-size * 2
  border: none
  border-bottom: 5px solid rgba(0,0,0,1)
  background: $form-bg
  min-width: 250px
  padding-left: 5px
  outline: none
  color: rgba(0,0,0,1)
  
input:focus
  border-bottom: 5px solid $form-shadow
  
button
  display: block
  margin: 0 auto
  line-height: $font-size * 2
  padding: 0 20px
  background: $form-shadow
  letter-spacing: 2px
  transition: .2s all ease-in-out
  outline: none
  border: 1px solid rgba(0,0,0,1)
  box-shadow: 3px 3px 1px 1px $form-primary-highlight, 3px 3px 1px 2px rgba(0,0,0,1)
  
  &:hover
    background: rgba(0,0,0,1)
    color: white
    border: 1px solid rgba(0,0,0,1)
  
::selection 
  background: $form-secondary-highlight

input:-webkit-autofill,
input:-webkit-autofill:hover, 
input:-webkit-autofill:focus
  border-bottom: 5px solid $form-primary-highlight
  -webkit-text-fill-color: $font-color
  -webkit-box-shadow: 0 0 0px 1000px $form-bg inset
  transition: background-color 5000s ease-in-out 0s
  
</style>
<script type="text/javascript">
.contact-us
form 
  input placeholder="Name" type="text" required=""
  input placeholder="Email" type="email" name="customerEmail"
  input placeholder="Phone" type="tel" name="customerPhone" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}"
  button type="button" SIGN UP
</script>
</head>
<body>

</body>
</html>