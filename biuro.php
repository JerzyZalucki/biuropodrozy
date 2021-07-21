<!DOCTYPE html>
<html lang="pl">
<head>
	<title>Biuro podróży</title>
	<link rel="stylesheet" href="css/index6.css"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
</head>
  <body>
<?php
$polaczenie = mysqli_connect('localhost', 'root', '', 'biuropodrozy') or
    die('W tej chwili nie można połaczyć się z bazą');
mysqli_query($polaczenie, "SET NAMES 'utf8'");
$wybor=$_POST['wybor'];
$osoby=$_POST['osoby'];
$imie=$_POST['imie'];
$nazwisko=$_POST['nazwisko'];
$data=date('Y-m-d');
echo ($wybor)."<br>";
echo ($osoby)."<br>";
echo ($imie)."<br>";
echo ($nazwisko)."<br>";
$kraj;
$cena;
$termin;
$sql = "select kraj,cena,termin from wycieczka where ID_wycieczka=$wybor ";
$wynik = mysqli_query($polaczenie, $sql);
while ($rekord = mysqli_fetch_assoc($wynik)) {
    $kraj = $rekord['kraj'];
    $cena = $rekord['cena'];
    $termin = $rekord['termin'];
}
$kwota = $osoby * $termin * $cena;
echo 'Kraj :   ' . $kraj . '<br>';
echo 'ilość osób :   ' . $osoby . '<br>';
echo 'ilość tygodni :   ' . $termin . '<br>';
echo 'Kwota łącznie  :' . $kwota . 'PLN <br>';
echo 'Rezerwacja przyjęta o: '.$data.'<br>';

$dodaj = "INSERT INTO rezerwacja(imie, nazwisko,kierunek,liczba_os,liczba_tyg,kwota,data) VALUES ('$imie','$nazwisko','$kraj',$osoby,$termin,$kwota,'$data')";
$result = mysqli_query($polaczenie, $dodaj);

$email= "admin@localhost.pl";
$temat = $_POST["text"];
$tresc = $_POST["tresc"];
$headers = "From: juzal@op.pl";
mail($email, $temat,$tresc,$headers);

?>
</body>
</html>
