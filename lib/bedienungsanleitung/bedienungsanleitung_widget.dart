import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bedienungsanleitung_model.dart';
export 'bedienungsanleitung_model.dart';

class BedienungsanleitungWidget extends StatefulWidget {
  const BedienungsanleitungWidget({super.key});

  @override
  State<BedienungsanleitungWidget> createState() =>
      _BedienungsanleitungWidgetState();
}

class _BedienungsanleitungWidgetState extends State<BedienungsanleitungWidget> {
  late BedienungsanleitungModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BedienungsanleitungModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: true,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/ihdz-fbnv6x.appspot.com/o/IHDZ%202%20Logo.png?alt=media&token=56d6b641-6916-44e8-ab8d-848d49214441',
              height: 70.0,
              fit: BoxFit.contain,
              alignment: const Alignment(0.0, 0.0),
            ),
          ),
          actions: const [],
          centerTitle: true,
          toolbarHeight: 90.0,
          elevation: 2.0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(18.0, 18.0, 18.0, 0.0),
                  child: Text(
                    'Bedienungsanleitung \n\nfür die App „Ich hör dir zu“ (IDHZ)\nWillkommen bei „Ich hör dir zu“ – Die App, die Einsamkeit bekämpft, indem sie ältere Menschen mit jungen Volontären verbindet!\n\n1. Registrierung für Nutzer\nUm die App zu nutzen, folgen Sie diesen Schritten:\n\nApp starten: Öffnen Sie die App auf Ihrem Smartphone.\nRegistrierung: Geben Sie Ihre grundlegenden Informationen ein:\n\nVorname und Nachname\nHandynummer\nE-Mail-Adresse\n\nKostenloser Zugang: \nDie App ist kostenlos – es sind keine zusätzlichen Schritte notwendig.\nBestätigung: Nach der Registrierung erhalten Sie eine Bestätigungs-E-Mail. Klicken Sie auf den Link in der E-Mail, um Ihre Registrierung abzuschließen.\n\n2. Nutzung der App\nNach der Registrierung gelangen Sie auf die Startseite der App.\n\nListe der Volontäre ansehen: Hier können Sie alle verfügbaren Volontäre sehen, die bereit sind, Ihnen zuzuhören.\nOnline-Status: Volontäre, die gerade verfügbar sind, werden hervorgehoben.\nInaktive Volontäre: Nicht verfügbare Volontäre werden als „nicht aktiv“ angezeigt.\nVolontär kontaktieren: Um einen Volontär zu kontaktieren, klicken Sie einfach auf das Profil und dann auf den Anruf-Button. Die Verbindung erfolgt über einen Google Meet Videoanruf.\n\nZeitbegrenzung: Jeder Videoanruf sollte nicht länger als 60 Minuten dauern.\nFavoriten setzen: Wenn Sie einen Volontär als Favoriten markieren (mit einem Haken), erhalten Sie eine Push-Nachricht, sobald dieser Volontär online ist.\n\n3. Registrierung für Volontäre\nWenn Sie als Volontär mitmachen möchten, gehen Sie wie folgt vor:\n\nRegistrierung starten: Gehen Sie ins Menü und wählen Sie die Option „Als Volontär registrieren“.\nAngaben ausfüllen: Geben Sie detaillierte Informationen über sich selbst ein, damit wir Sie besser kennenlernen können.\nIdentitätsnachweis hochladen: Um unsere älteren Nutzer vor Missbrauch zu schützen, laden Sie bitte einen Scan Ihres Ausweises hoch.\nVerifizierung: Sobald Ihre Registrierung und Ihr Ausweis überprüft wurden, werden Sie freigeschaltet und können Gespräche führen.\n\n4. Sicherheitshinweis\nDer Schutz der älteren Menschen liegt uns am Herzen. Deshalb verifizieren wir die Identität aller Volontäre.\nMissbrauch oder unangemessenes Verhalten werden nicht toleriert. Bei Verstößen wird das Konto gesperrt.\n\n5. Log-In und Navigation\nNutzer: Melden Sie sich einfach mit Ihrer E-Mail-Adresse und Ihrem Passwort an, um die Liste der Volontäre anzuzeigen.\nVolontäre: Nach dem Log-In können Sie den Status auf „Online“ setzen und sind für Nutzer sichtbar.\nKontakt und Support\nBei Fragen oder Problemen können Sie uns jederzeit über den Support-Bereich der App kontaktieren.\n\nDie App „Ich hör dir zu“ möchte den Austausch zwischen Generationen fördern und einsamen Menschen eine Plattform bieten, um sich gehört zu fühlen.',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Inter',
                          color: FlutterFlowTheme.of(context).primaryText,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
