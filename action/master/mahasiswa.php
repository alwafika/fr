<?php if (!defined('AFISYNTAX')) die('Access Denied'); 
switch($url_afi){
	default:
			header('location: '.$base_url);
	break;
	case 'Save':
				$c		= $record->ihik('mahasiswa','kodemhs',NULL,'progdi="'.$input['progdi'].'"','kodemhs DESC');$cek=$c->fetch_object();
				$exp	= explode($input['tahun'].$input['progdi'],$cek->kodemhs);				
				$expi	= (int)($exp[1])+1;
				switch(TRUE){
					case strlen($expi)=='3':
						$itung		= '';
					break;
					case strlen($expi)=='2':
						$itung		= '0';
					break;
					case strlen($expi)=='1':
						$itung		= '00';
					break;
				};
				$aksi	= $record->ngesex('mahasiswa',
												array(	
															'fakultas' 			=> $input['fakultas'],
															'progdi' 			=> $input['progdi'],
															'tahun' 			=> $input['tahun'],
															'kodemhs'			=> $input['tahun'].$input['progdi'].$itung.$expi,
															'nik'				=> $input['nik'],
															'namamhs' 			=> strtoupper($input['namamhs']),
															'jekel'				=> $input['jekel'],
															'agama'				=> $input['agama'],		
															'tempatlahirmhs' 	=> strtoupper($input['tempatlahirmhs']),
															'tanggallahirmhs' 	=> $input['tanggallahirmhs'],
															'alamatmhs'			=> strtoupper($input['alamatmhs']),
															'kotamhs'			=> strtoupper($input['kotamhs']),
															'telpmhs' 			=> $input['telpmhs'],
															'status'			=> 'AKTIF'));
				switch(TRUE){
					case $aksi:
							header('location: '.$base_url.'/mahasiswa/sukses');
					break;
					default:
							header('location: '.$base_url.'/mahasiswa/gagal');
					break;
				};
	break;
	case 'Update':
				
				$aksi	= $record->ngentot('mahasiswa','kodemhs="'.$input['kode'].'"',
											array(	
															'nik'				=> $input['nik'],
															'namamhs' 			=> strtoupper($input['namamhs']),
															'jekel'				=> $input['jekel'],
															'agama'				=> $input['agama'],		
															'tempatlahirmhs' 	=> strtoupper($input['tempatlahirmhs']),
															'tanggallahirmhs' 	=> $input['tanggallahirmhsx'],
															'alamatmhs'			=> strtoupper($input['alamatmhs']),
															'kotamhs'			=> strtoupper($input['kotamhs']),
															'telpmhs' 			=> $input['telpmhs'],
															'status'			=> $input['status']));
				switch(TRUE){
					case $aksi:
							header('location: '.$base_url.'/mahasiswa/sukses');
					break;
					default:
							header('location: '.$base_url.'/mahasiswa/gagal');
					break;
				};
	break;
	case 'Delete':
				$aksi	= $record->ngecrot('mahasiswa','kodemhs="'.$input['kode'].'"');
					switch(TRUE){
						case $aksi:
								header('location: '.$base_url.'/mahasiswa/sukses');
						break;
						default:
								header('location: '.$base_url.'/mahasiswa/gagal');
						break;
				};
					
	break;
};
?>