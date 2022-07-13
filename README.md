# README

เราจะใช้ PublicController และ home and about action ไว้ก่อนด้วย rails g controller
```
rails g controller Public home about
```

สร้าง Class error ขึ้นใหม่ที่ config/initializers/*.rb
ซึ่งไฟล์ในนี้จะถูกรันหนึ่งครั้งเมื่อ Start server ขึ้นมา ชื่อไฟล์ stb_error จะยังไงก็ได้แต่ prefix เอาตามหนังสือก่อน

Class error ที่ไปสร้าง 
```
class STBError < StandardError
    
end
```

วิธีใช้
```
def home
    raise STBError.new("hello, error")
    render json: { success: true, content: 'home' }
end
```

ต่อไปจะทำการ Catching Error in controller 
โดยจะทำการ rescue ทุกๆ STBError ที่เกิดขึ้น โดยไปเพิ่ม Code ที่ ApplicationController
ทำแบบนี้เพราะจะได้ไม่ต้องเขียน error หลายๆที่