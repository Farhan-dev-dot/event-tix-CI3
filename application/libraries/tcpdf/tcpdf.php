<?php
require_once dirname(__FILE__). '/tcpdf.php';

$pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

$pdf->SetCreator(PDF_CREATOR);
$pdf->SetAuthor('Your Name');
$pdf->SetTitle('Event Report');
$pdf->SetSubject('Event Report');
$pdf->SetKeywords('Event, Report');

$pdf->SetHeaderData(PDF_HEADER_LOGO, PDF_HEADER_LOGO_WIDTH, PDF_HEADER_TITLE, PDF_HEADER_STRING);

$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

$pdf->SetDefaultMonospacedFont(PDF_FONT_MONOSPACED);

$pdf->SetMargins(PDF_MARGIN_LEFT, PDF_MARGIN_TOP, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

$pdf->SetAutoPageBreak(TRUE, PDF_MARGIN_BOTTOM);

$pdf->SetImageScale(PDF_IMAGE_SCALE_RATIO);

$pdf->AddPage();

$pdf->SetFont('helvetica', 'B', 20);
$pdf->Cell(0, 10, 'Event Report', 0, 1, 'C');

$pdf->SetFont('helvetica', '', 12);

$pdf->Cell(30, 10, 'Event Name:', 0, 0);
$pdf->Cell(0, 10, 'Event Name', 0, 1);

$pdf->Cell(30, 10, 'Event Date:', 0, 0);
$pdf->Cell(0, 10, 'Event Date', 0, 1);

$pdf->Cell(30, 10, 'Event Location:', 0, 0);
$pdf->Cell(0, 10, 'Event Location', 0, 1);

$pdf->Ln(10);

$pdf->SetFont('helvetica', 'B', 14);
$pdf->Cell(0, 10, 'Ticket Sales:', 0, 1, 'C');

$pdf->SetFont('helvetica', '', 12);

$pdf->Cell(30, 10, 'Ticket Type', 1, 0);
$pdf->Cell(30, 10, 'Quantity', 1, 0);
$pdf->Cell(30, 10, 'Price', 1, 0);
$pdf->Cell(30, 10, 'Total', 1, 1);

// Add ticket sales data from the database
$ticket_sales = $this->db->get('ticket_sales')->result();
foreach ($ticket_sales as $sale) {
    $pdf->Cell(30, 10, $sale->ticket_type, 1, 0);
    $pdf->Cell(30, 10, $sale->quantity, 1, 0);
    $pdf->Cell(30, 10, $sale->price, 1, 0);
    $pdf->Cell(30, 10, $sale->quantity * $sale->price, 1, 1);
}

$pdf->Output('event_report.pdf', 'I');

?>