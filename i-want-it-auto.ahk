x() {
  Send {ENTER}
}

move() { ; 移動
  x() ; 基地
  x() ; 選人(第一個
  x()
  Send d
  x()
  Sleep, 1000  ; 1 秒
}

atk() { ;Send {ENTER} s s {ENTER} s s s d {ENTER} ; 設招
  Sleep, 500  ; 1 秒
  x()
  Send ss
  x()
  Send sss
  x()
  Sleep, 500  ; 0.5 秒
  Send d
  x()
  Sleep, 1000  ; 1 秒
  ;Send {ESC}
}

end() { ;結束回合
  Send is 
  x()
}

start(){
  move()
  atk()
  ;end()
}

SetKeyDelay, 200 , 30
F1::start()
F2::atk()
F3::end()

/*
DISGAEA
ahk_class DISGAEA
ahk_exe dis1_st.exe
*/