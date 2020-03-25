<?php if (!defined('AFISYNTAX')) die('Access Denied'); 
switch($url_afi){
	default:
			header('location: '.$base_url);
	break;
	case 'Save':
				$aksi	= $record->ngesex('pegawai',
												array(	
															
													'tahunpgw' 			=> $input['tahunpgw'],
													'nik'				=> $input['nik'],
													'namapgw' 			=>  str_replace('',' || ',strtoupper($input['namapgw'])),
													'jekel'				=> $input['jekel'],
													'agama'				=> $input['agama'],															
													'tempatlahirpgw' 	=> strtoupper($input['tempatlahirpgw']),
													'tanggallahirpgw'	=> $input['tanggallahirpgw'],
													'alamatpgw'			=> strtoupper($input['alamatpgw']),
													'kotapgw'			=> strtoupper($input['kotapgw']),
													'telppgw' 			=> $input['telppgw'],
													'statuspgw'			=> $input['statuspgw']));
				switch(TRUE){
					case $aksi:
							header('location: '.$base_url.'/pegawai/sukses');
					break;
					default:
							header('location: '.$base_url.'/pegawai/gagal');
					break;
				};
	break;
	case 'Update':
				
				$aksi	= $record->ngentot('pegawai','kodepgw="'.$input['kode'].'"',
											array(	
													'tahunpgw' 			=> $input['tahunpgw'],
													'nik'				=> $input['nik'],
													'namapgw' 			=> strtoupper($input['namapgw']),
													'jekel'				=> $input['jekel'],
													'agama'				=> $input['agama'],															
													'tempatlahirpgw' 	=> strtoupper($input['tempatlahirpgw']),
													'tanggallahirpgw'	=> $input['tanggallahirpgwx'],
													'alamatpgw'			=> strtoupper($input['alamatpgw']),
													'kotapgw'			=> strtoupper($input['kotapgw']),
													'telppgw' 			=> $input['telppgw'],
													'statuspgw'			=> $input['statuspgw']));
				switch(TRUE){
					case $aksi:
							header('location: '.$base_url.'/pegawai/sukses');
					break;
					default:
							header('location: '.$base_url.'/pegawai/gagal');
					break;
				};
	break;
	case 'Delete':
				$aksi	= $record->ngecrot('pegawai','kodepgw="'.$input['kode'].'"');
					switch(TRUE){
						case $aksi:
								header('location: '.$base_url.'/pegawai/sukses');
						break;
						default:
								header('location: '.$base_url.'/pegawai/gagal');
						break;
				};
					
	break;
};
?>