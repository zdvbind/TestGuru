document.addEventListener('turbolinks:load', function() {
  let control = document.querySelector('.timer')

  if (control) {
    let time = document.querySelector('.time')
    new Timer(control, time)
  }
})

class Timer{
  constructor(control, time){
    this.control = control
    this.time = time
    this.init()
  }

  calcTime() {
    let current = this.control.dataset['timeLeft']
    if (current <= 0) {
      clearInterval(this.timer)
      document.querySelector('.js-autopress').click();
    }
    let minutes = Math.floor(current / 60)
    let seconds = Math.floor(current % 60)
    if (seconds < 10) { seconds = "0" + seconds }
    this.time.innerHTML = minutes + ':' + seconds
    this.control.dataset['timeLeft'] = current - 1
  }

  init() {
    this.timer = setInterval(() => {
      this.calcTime()
    }, 1000)
    document.addEventListener('turbolinks:load', () => {
      clearInterval(this.timer)
    })
  }
}
