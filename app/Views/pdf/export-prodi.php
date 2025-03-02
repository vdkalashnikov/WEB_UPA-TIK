<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Program Studi</title>
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
                <h3 class="tengah">Data Program Studi Politeknik Negeri Bandung</h3>
                <table class="border-table">
                    <thead class="thead-dark">
                        <tr class="text-center">
                            <th scope="col">No</th>
                            <th scope="col">Kode Prodi</th>
                            <th scope="col">Jurusan</th>
                            <th scope="col">Program</th>
                            <th scope="col">Nama Prodi</th>
                        </tr>

                    <tbody>
                        <?php $i = 1; ?>
                        <?php foreach ($prodi as $ta) : ?>
                            <tr class="text-center">
                                <td scope="row-1">
                                    <?= $i++; ?>
                                </td>
                                <td>
                                    <?= $ta['kode_prodi']; ?>
                                </td>
                                <td>
                                    <?= $ta['nama_jurusan']; ?>
                                </td>
                                <td>
                                    <?= $ta['program']; ?>
                                </td>
                                <td>
                                    <?= $ta['nama_prodi']; ?>
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