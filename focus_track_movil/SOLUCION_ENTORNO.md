# Resolución de entorno - Práctica 13
Carnet: C4L113

## Verificaciones
- Virtualización de CPU: Habilitada
- VirtualMachinePlatform: Enabled
- HypervisorPlatform: estaba Disabled, se habilitó con Enable-WindowsOptionalFeature y se reinició el equipo
- hypervisorlaunchtype: Auto
- AVD: Pixel 8 con gráficos Hardware - GLES 2.0
- Licencias de Android: aceptadas
- ADB: platform-tools agregado al PATH; `adb devices` muestra emulator-5554 device

## Problemas encontrados
1. `Can't find service: package` al instalar la APK: el emulador no había terminado de arrancar. Solución: esperar la pantalla de inicio y ejecutar `flutter run -d emulator-5554`.
2. `adb` no se reconocía: faltaba platform-tools en el PATH. Se agregó como variable de entorno de usuario.
3. `Get-WindowsOptionalFeature` requería elevación: se ejecutó PowerShell como administrador.