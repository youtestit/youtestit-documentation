KONVERTER=/opt/texKonverter
TEX_PATH=/opt/doc/development/fr/
OUTPUT=/opt/doc/development/fr/web/

cd $KONVERTER
mvn exec:java

cd /opt/doc/development/fr/imgs
cp * /opt/doc/development/fr/web/images/imgs
cd ..
cat custom.css >> $OUTPUT/default.css
