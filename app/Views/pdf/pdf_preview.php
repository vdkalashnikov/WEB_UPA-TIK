<!DOCTYPE html>
<html>
<head>
    <title>PDF Preview</title>
</head>
<body>
    <button id="previewBtn">Preview PDF</button>
    <iframe id="pdfFrame" style="width: 100%; height: 500px; display: none;"></iframe>

    <script>
        document.getElementById('previewBtn').addEventListener('click', function() {
            var iframe = document.getElementById('pdfFrame');
            iframe.style.display = 'block';
            iframe.src = '/pdf-preview';
        });
    </script>
</body>
</html>
