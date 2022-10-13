#$_b = "dGVzdF9maWxl"
#[byte[]]$_0=[System.Convert]::FromBase64String($_b):$_1=[System.Threading.Thread]::GetDomain().Load($_0)


function parse([string]$s){
   $H = @()
   for ($i = 0; $i -lt $s.Length; $i += 2) {
      $H += [Byte]::Parse($s.Substring($i, 2), [System.Globalization.NumberStyles]::HexNumber);
   };
   return $H;
}

parse("E0")