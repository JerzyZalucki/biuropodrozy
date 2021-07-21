<!DOCTYPE html>
<html lang="pl">
<head>
	<link rel="stylesheet" href="biuro.css"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
  <title>Biuro podróży</title>
</head>
  <body>
		<form action="biuro.php" method="post">
		<div id="cala_strona">
			<div id="naglowek">LOGO</div>
			<div id="prawo"><p>Wybierz kierunek</p>
				<style> select {color: red; background: black;font-size:90%; }</style>
		 <?php
		 $polaczenie = mysqli_connect('localhost', 'root', '', 'biuropodrozy') or
 		    die('W tej chwili nie można połaczyć się z bazą');
 		mysqli_query($polaczenie, "SET NAMES 'utf8'");
    $sql = 'select * from wycieczka';
    $wynik = mysqli_query($polaczenie, $sql);
    echo "<select name='wybor'class='wybor'>";
    while ($rekord = mysqli_fetch_assoc($wynik)) {
        echo "<option value='" .
            $rekord['ID_wycieczka'] .
            "'  >" .
            $rekord['kraj'] .' '. $rekord['cena']."PLN/os.". ' ' .$rekord['termin'] ."tyg.".
            '</option>';
    }
    echo '</select>';
 ?>
			<p>Wypełnij formularz</p>
			<label for="imie"><strong>Imię</strong></label>
			<input type="text" name="imie" class="imie"/>
			<label for="nazwisko"><strong>Nazwisko</strong></label>
			<input type="text" name="nazwisko" class="nazwisko"/>
			<label for="osoby"><strong>Liczba osób:</strong></label>
			<input type="number" name="osoby" class="liczba_osob" />
		</div>
			<div id="lewo">
				<table border="10">
					<tr>
						<th>DNI ROBOCZE</th>
					</tr>
					<tr>
						<td>Poniedziałek</td>
          </tr>
					<tr>
						<td>Wtorek</td>
          </tr>
					<tr>
						<td>Środa</td>
          </tr>
					<tr>
						<td>Czwartek</td>
          </tr>
					<tr>
						<td>Piątek</td>
          </tr>
				</table>
			</div>
			<div id="stopka">
				<label for=""><strong>E-mail</strong></label>
			  <input type="email" name="email" size="20" maxlength="30"/>
				<label for=""><strong>Temat</strong></label>
			  <input type="text" name="text" size="20" maxlength="30"/>
				<label for=""><strong>Treść</strong></label>
		    <textarea name="tresc" rows="1" cols="40">
			    Twoje uwagi
			</textarea>
			</div>
			<div>
				<button class="textbutton" type="submit">Rezerwuj</button>
			</div>
		</div>
			</form>
  </body>
  </html>
