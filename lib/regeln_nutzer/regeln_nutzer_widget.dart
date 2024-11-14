import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'regeln_nutzer_model.dart';
export 'regeln_nutzer_model.dart';

class RegelnNutzerWidget extends StatefulWidget {
  const RegelnNutzerWidget({super.key});

  @override
  State<RegelnNutzerWidget> createState() => _RegelnNutzerWidgetState();
}

class _RegelnNutzerWidgetState extends State<RegelnNutzerWidget> {
  late RegelnNutzerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RegelnNutzerModel());
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
            ),
          ),
          actions: const [],
          centerTitle: true,
          toolbarHeight: 90.0,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        'Verhaltensregeln für Nutzer\n\nRespektvolles Verhalten\nJeder Nutzer ist verpflichtet, sich den Freiwilligen gegenüber respektvoll und höflich zu verhalten. Beleidigungen, Diskriminierung, Belästigung oder jegliches unangemessenes Verhalten sind strengstens untersagt.\n\nKeine professionelle Beratung\nBeachten Sie, dass die Freiwilligen keine ausgebildeten Therapeuten oder Berater sind. Die Gespräche dienen der emotionalen Unterstützung und dem Zuhören, jedoch nicht der psychologischen Beratung oder Therapie.\n\nGesprächsdauer\nDie Dauer eines Gesprächs sollte 60 Minuten nicht überschreiten. Dies dient dazu, die Ressourcen der Freiwilligen fair zu nutzen und sicherzustellen, dass auch andere Nutzer die Möglichkeit haben, Unterstützung zu erhalten.\n\nVertraulichkeit\nDie Inhalte der Gespräche sind vertraulich. \nZum Schutz von Missbrauch ist es nicht erlaubt, persönliche Daten wie\nWohnadresse\nTelefonnummer\nEmail Adresse\nBankdaten\noder ähnliche empfindliche Daten weiterzugeben, weder in Wort noch in Schriftform.\n\nKeine unangemessenen Themen\nGespräche über Gewalt, illegale Aktivitäten oder andere unangemessene Themen sind nicht erlaubt. Bei schwerwiegenden persönlichen Problemen oder Notfällen sollten Sie sich an professionelle Hilfsdienste wenden.\n\nVerfügbarkeit und Geduld\nEs kann vorkommen, dass nicht immer sofort ein Freiwilliger zur Verfügung steht. Bitte haben Sie Geduld und respektieren Sie, dass die Freiwilligen ihre Zeit freiwillig zur Verfügung stellen.\n\n\nEinladungen \nEinladungen zu persönlichen Treffen sind abzulehnen und als Regelverstoß zu melden.\n\nMissbrauch oder Regelverstoß\nSollten Sie einen Missbrauch oder einen Regelverstoß bei einem Freiwilligen feststellen, bitten wir Sie uns umgehend darüber zu informieren. Die können Sie über den “ Kontaktieren Sie uns “ Button, unter Angabe des Namens, des Datums und der Uhrzeit, mit der Angabe des Vergehens, mitteilen',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Inter',
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: FlutterFlowVideoPlayer(
                        path:
                            'https://firebasestorage.googleapis.com/v0/b/ihdz-fbnv6x.appspot.com/o/IHDZ_Regeln_Nutzer_NEW.mp4?alt=media&token=ddc9be59-443d-4f34-a8b2-613d570dcbba',
                        videoType: VideoType.network,
                        autoPlay: false,
                        looping: true,
                        showControls: true,
                        allowFullScreen: true,
                        allowPlaybackSpeedMenu: false,
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0.0, -1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 50.0, 10.0, 0.0),
                        child: Text(
                          'Verhaltensregeln für Freiwillige\n\nRespekt und Empathie\nAls Freiwilliger verpflichten Sie sich, den Nutzern mit Respekt und Einfühlungsvermögen zu begegnen. Ihr Ziel ist es, zuzuhören und den Nutzern das Gefühl zu geben, gehört zu werden.\n\nKeine professionelle Beratung\nFreiwillige sind keine ausgebildeten Therapeuten und dürfen keine psychologischen, medizinischen oder rechtlichen Ratschläge erteilen. Falls ein Nutzer professionelle Hilfe benötigt, sollten Sie ihn höflich an geeignete Stellen verweisen.\n\nGesprächsdauer\nJedes Gespräch sollte eine maximale Dauer von 60 Minuten haben. Diese Begrenzung dient dazu, Ihre Zeit effizient zu nutzen und sicherzustellen, dass andere Nutzer auch die Möglichkeit haben, Unterstützung zu erhalten.\n\nVertraulichkeit\nDie Inhalte der Gespräche sind vertraulich. \nZum Schutz von Missbrauch ist es nicht erlaubt, persönliche Daten wie\nWohnadresse\nTelefonnummer\nEmail Adresse\nBankdaten\noder ähnliche empfindliche Daten weiterzugeben, weder in Wort noch in Schriftform.\n\nKeine unangemessenen Themen\nGespräche über Gewalt, illegale Aktivitäten oder andere unangemessene Themen sind nicht erlaubt. Bei schwerwiegenden persönlichen Problemen oder Notfällen sollten Sie sich an professionelle Hilfsdienste wenden.\n\nKeine persönlichen Beziehungen\nEs ist wichtig, professionelle Distanz zu wahren. Der Austausch von persönlichen Kontaktdaten oder das Eingehen persönlicher Beziehungen ist nicht erlaubt.\n\nUmgang mit schwierigen Situationen\nFalls ein Gespräch unangemessen wird oder sich der Nutzer in einer schwierigen emotionalen Situation befindet, sollten Sie das Gespräch höflich beenden und gegebenenfalls auf professionelle Hilfe verweisen.\n\nSelbstfürsorge\nAchten Sie auf Ihre eigene emotionale Gesundheit. Wenn Sie das Gefühl haben, dass die Gespräche Sie belasten, ziehen Sie in Betracht, eine Pause einzulegen oder sich Unterstützung zu holen.\noder ähnliche empfindliche Daten weiterzugeben, weder in Wort noch in Schriftform.\n\nEinladungen \nEinladungen zu persönlichen Treffen sind abzulehnen und als Regelverstoß zu melden.\n\nMissbrauch oder Regelverstoß\nSollten Sie einen Missbrauch oder einen Regelverstoß bei einem Nutzer feststellen, bitten wir Sie uns umgehend darüber zu informieren. Die können Sie über den “ Kontaktieren Sie uns “ Button, unter Angabe des Namens, des Datums und der Uhrzeit, mit der Angabe des Vergehens, mitteilen.',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Inter',
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
