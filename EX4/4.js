 <script>
    function generateRandomColor() {
      return '#' + Math.floor(Math.random()*16777215).toString(16);
    }

    function changeBackgroundColor() {
      document.body.style.backgroundColor = generateRandomColor();
    }

    document.getElementById('changeColorBtn').addEventListener('click', changeBackgroundColor);
  </script>
