<?php if (!defined('AFISYNTAX')) die('Access Denied'); 
switch($url_afi){
	default:
			header('location: '.$base_url);
	break;
	case 'Save':
				$aksi		= $record->ngesex('stuktur',
												array(		
															'fakultas'				=> $input['fakultas'],
															'progdi'				=> $input['progdi'],
															'namastuktur'			=> strtoupper($input['namastuktur']),
															'tugas'					=> strtoupper($input['tugas']),
															'lembaga'				=> $input['lembaga']));
				switch(TRUE){
					case $aksi:
							header('location: '.$base_url.'/'.$input['link'].'/sukses');
					break;
					default:
							header('location: '.$base_url.'/'.$input['link'].'/gagal');
					break;
				};
	break;
	case 'Update':
				$aksi		= $record->ngentot('stuktur','kodestuktur="'.$input['kode'].'"',
											array(	
															'namastuktur'				=> strtoupper($input['namastuktur']),
															'tugas'						=> strtoupper($input['tugas'])));
				switch(TRUE){
					case $aksi:
							header('location: '.$base_url.'/'.$input['link'].'/sukses');
					break;
					default:
							header('location: '.$base_url.'/'.$input['link'].'/gagal');
					break;
				};
	break;
	case 'Delete':
					$aksi		= $record->ngecrot('stuktur','kodestuktur="'.$input['kode'].'"');
					switch(TRUE){
						case $aksi:
								header('location: '.$base_url.'/'.$input['link'].'/sukses');
						break;
						default:
								header('location: '.$base_url.'/'.$input['link'].'/gagal');
						break;
				};
					
	break;
};
?>