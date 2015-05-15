REM 1.3.6.1.5.5.7.3.1 - id_kp_serverAuth 
REM 1.3.6.1.5.5.7.3.2 - id_kp_clientAuth 
REM 1.3.6.1.5.5.7.3.3 - id_kp_codeSigning 
REM 1.3.6.1.5.5.7.3.4 - id_kp_emailProtection 
REM 1.3.6.1.5.5.7.3.5 - id-kp-ipsecEndSystem 
REM 1.3.6.1.5.5.7.3.6 - id-kp-ipsecTunnel 
REM 1.3.6.1.5.5.7.3.7 - id-kp-ipsecUser 
REM 1.3.6.1.5.5.7.3.8 - id_kp_timeStamping 
REM 1.3.6.1.5.5.7.3.9 - OCSPSigning
makecert.exe ^
    -n "CN=SWS_STS_ROOT" ^
    -r ^
    -pe ^
    -a sha512 ^
    -len 4096 ^
    -cy authority ^
    -sv SWS_STS_ROOT.pvk ^
    SWS_STS_ROOT.cer
    
pvk2pfx.exe ^
    -pvk SWS_STS_ROOT.pvk ^
    -spc SWS_STS_ROOT.cer ^
    -pfx SWS_STS_ROOT.pfx ^
    -po test123
