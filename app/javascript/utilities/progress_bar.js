document.addEventListener('turbolinks:load', function () {
  let control = document.querySelector('.progress')

  if (control) {
    startProgressBar(control)
  }
})

const startProgressBar = (control) => {
  const progressBar = control.querySelector('.progress-bar')
  const currentNumber = control.dataset.currentNumber
  const questionsCount = control.dataset.questionsCount

  const currentProgress = 100 * currentNumber / questionsCount
  progressBar.style.width = currentProgress + '%'
  progressBar.ariaValueNow = currentProgress
}
