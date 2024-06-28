<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Software</title>
    <style>
        .border-table {
            font-family: Arial, Helvetica, sans-serif;
            width: 100%;
            border-collapse: collapse;
            text-align: center;
            font-size: 12px;
        }

        .border-table th {
            border: 1 solid #000;
            font-weight: bold;

        }

        .border-table td {
            border: 1 solid #000;
        }

        .tengah {
            text-align: center;
        }
    </style>

</head>

<body>
    <div class="container">
        <div class="row text-center">
            <div class="col-lg-14 col-md-12 col-sm-12 tab">
                <h3 class="tengah">Data Unit Politeknik Negeri Bandung</h3>
                <table class="border-table">
                    <thead class="thead-dark">
                        <tr class="text-center">
                            <th scope="col">No</th>
                            <th scope="col">Kode Unit</th>
                            <th scope="col">Nama Unit</th>
                        </tr>

                    <tbody>
                        <?php $i = 1; ?>
                        <?php foreach ($prodi as $ta) : ?>
                            <tr class="text-center">
                                <td scope="row-1">
                                    <?= $i++; ?>
                                </td>
                                <td>
                                    <?= $ta['kode_unit']; ?>
                                </td>
                                <td>
                                    <?= $ta['nama_unit']; ?>
                                </td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>

</html>