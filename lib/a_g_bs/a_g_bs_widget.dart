import '/components/menu_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'a_g_bs_model.dart';
export 'a_g_bs_model.dart';

class AGBsWidget extends StatefulWidget {
  const AGBsWidget({super.key});

  @override
  State<AGBsWidget> createState() => _AGBsMaterialState();
}

class _AGBsMaterialState extends State<AGBsWidget> {
  late AGBsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AGBsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        endDrawer: Drawer(
          elevation: 16.0,
          child: wrapWithModel(
            model: _model.menuModel,
            updateCallback: () => safeSetState(() {}),
            child: const MenuWidget(),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          automaticallyImplyLeading: true,
          title: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/ihdz-fbnv6x.appspot.com/o/IHDZ%202%20Logo.png?alt=media&token=56d6b641-6916-44e8-ab8d-848d49214441',
              width: 136.0,
              height: 70.0,
              fit: BoxFit.cover,
            ),
          ),
          actions: [
            Icon(
              Icons.menu,
              color: FlutterFlowTheme.of(context).primaryBackground,
              size: 80.0,
            ),
          ],
          centerTitle: true,
          toolbarHeight: 90.0,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                    child: Text(
                      'Allgemeine Geschäftsbedingungen (AGB) für die Nutzung von „Ich hör dir zu“\n\n1. Geltungsbereich\nDiese Allgemeinen Geschäftsbedingungen (AGB) gelten für die Nutzung der App „Ich hör dir zu“, die von PEP Service, Uwe Schäfer betrieben wird. Durch die Registrierung und Nutzung der App akzeptiert der Nutzer die folgenden AGB.\n\n2. Leistungsbeschreibung\n„Ich hör dir zu“ bietet eine Plattform, auf der einsame Menschen (nachfolgend „Nutzer“) über Videochat mit ausgewählten freiwilligen Helfern (nachfolgend „Freiwillige“) in Kontakt treten können. Die Freiwilligen hören den Nutzern zu und schenken ihnen Zeit. Es wird kein professioneller psychologischer oder therapeutischer Service angeboten.\n\n3. Registrierung und Nutzung\n3.1 Die Nutzung der App erfordert eine Registrierung. Nutzer und Freiwillige müssen während der Registrierung wahrheitsgemäße Angaben machen.\n3.2 Die Freiwilligen müssen ein gültiges Ausweisdokument hochladen. Beide Seiten.\n3.3 Die App ist nur für Personen ab 18 Jahren zugänglich.\n3.4 Mit der Registrierung erhält der Nutzer Zugang zu den angebotenen Videochat-Funktionen und kann nach Verfügbarkeit der Freiwilligen Gespräche führen.\n3.5 Die Freiwilligen werden von „Ich hör dir zu“ sorgfältig ausgewählt. Es handelt sich um Personen, die ehrenamtlich ihre Zeit zur Verfügung stellen, um Nutzern zuzuhören.\n3.6 Die Nutzung der Basis Funktion der App ist für Nutzer und Freiwillige kostenlos. In App Käufe sind möglich.\n\n4. Verpflichtungen der Nutzer\n4.1 Nutzer verpflichten sich, die Plattform nicht für rechtswidrige oder missbräuchliche Zwecke zu nutzen.\n4.2 Jegliche Form von Diskriminierung, Belästigung, Beleidigung oder unangemessenem Verhalten gegenüber Freiwilligen oder anderen Nutzern ist strengstens untersagt.\n4.3 Nutzer haben keinen Anspruch auf einen bestimmten Videochat-Zeitraum oder eine bestimmte Verfügbarkeit der Freiwilligen.\n\n5. Verpflichtungen der Freiwilligen\n5.1 Die Freiwilligen verpflichten sich, die Nutzer respektvoll zu behandeln und ihnen aufmerksam zuzuhören.\n5.2 Freiwillige dürfen keine psychologische oder medizinische Beratung erteilen, sondern nur unterstützende Gespräche im Sinne der App-Philosophie führen.\n\n6. Haftungsausschluss\n6.1 „Ich hör dir zu“ bietet keine therapeutischen oder psychologischen Dienstleistungen an. Für gesundheitliche oder psychologische Anliegen sollten sich Nutzer an ausgebildete Fachleute wenden.\n6.2 „Ich hör dir zu“ haftet nicht für die Inhalte der Gespräche zwischen Nutzern und Freiwilligen oder für Schäden, die durch die Nutzung der App entstehen.\n6.3 Der Betreiber haftet nicht für Verfügbarkeit oder technische Störungen der Plattform.\n\n7. Datenschutz\nDer Schutz der persönlichen Daten der Nutzer hat höchste Priorität. Alle Daten werden gemäß der Datenschutzerklärung von „Ich hör dir zu“ verarbeitet. Weitere Informationen zum Datenschutz finden Sie [hier Link zur Datenschutzerklärung].\n\n8. Kündigung und Sperrung\n8.1 Nutzer können ihr Konto jederzeit ohne Angabe von Gründen kündigen.\n8.2 Der Betreiber behält sich das Recht vor, Nutzer oder Freiwillige, die gegen die AGB verstoßen, ohne vorherige Ankündigung zu sperren oder vom Service auszuschließen.\n8.3 Stellt ein Nutzer oder ein Freiwilliger einen Missbrauch oder einen Regelverstoß fest, ist dieser unverzüglich über die Kontakt-E-Mail im Menü zu melden.  Bei einem Regelverstoß erhält der Nutzer oder Freiwillige  eine Abmahnung per E-Mail. Sollte ein zweiter Regelverstoß erfolgen, wird das Konto dauerhaft gesperrt.\n\n9. Änderungen der AGB\nDer Betreiber behält sich das Recht vor, diese AGB jederzeit zu ändern. Die geänderten AGB werden den Nutzern vor Inkrafttreten per E-Mail oder über die App mitgeteilt.\n\n10. Schlussbestimmungen\n10.1 Es gilt das Recht der Bundesrepublik Deutschland.\n10.2 Sollte eine Bestimmung dieser AGB unwirksam sein, bleiben die übrigen Bestimmungen davon unberührt.\n',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Inter',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
