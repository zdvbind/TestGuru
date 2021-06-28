document.addEventListener('turbolinks:load', function () {
  let control = document.querySelector('.progress')

  if (control) {
    new ProgressBar(control)
  }
})

class ProgressBar {
  constructor(input) {
    this.input = input
    this.calculate ()
  }

  calculate() {
    const progressBar = this.input.querySelector('.progress-bar')
    const currentNumber = this.input.dataset.currentNumber
    const questionsCount = this.input.dataset.questionsCount

    const currentProgress = Math.round(100 * (currentNumber - 1) / questionsCount)
    progressBar.style.width = `${currentProgress}%`
    progressBar.ariaValueNow = currentProgress
  }

}
