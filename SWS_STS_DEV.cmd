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
    -n "CN=SWS_STS_DEV" ^
    -iv SWS_STS_ROOT.pvk ^
    -ic SWS_STS_ROOT.cer ^
    -a sha512 ^
    -len 4096 ^
    -b 01/01/2015 ^
    -e 01/01/2025 ^
    -sky exchange ^
    -sv SWS_STS_DEV.pvk ^
    SWS_STS_DEV.cer
    
pvk2pfx.exe ^
    -pvk SWS_STS_DEV.pvk ^
    -spc SWS_STS_DEV.cer ^
    -pfx SWS_STS_DEV.pfx ^
    -po test123