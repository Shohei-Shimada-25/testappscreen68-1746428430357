document.getElementById('yesButton').addEventListener('click', function() {
    document.getElementById('result').textContent = '正解';
});

document.getElementById('noButton').addEventListener('click', function() {
    document.getElementById('result').textContent = '不正解';
});