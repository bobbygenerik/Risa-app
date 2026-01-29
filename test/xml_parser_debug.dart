
import 'package:xml/xml_events.dart';

void main() {
  testParser('<display-name>BBC One</display-name>');
  testParser('<display-name>\n  BBC One\n</display-name>');
  testParser('<display-name><![CDATA[BBC One]]></display-name>');
  testParser('<display-name><![CDATA[BBC One]]> HD</display-name>');
  testParser('<display-name>BBC <![CDATA[One]]></display-name>');
  testParser('<display-name>Q&amp;A</display-name>');
  testParser('<display-name />');
  testParser('<display-name>Foo <br/> Bar</display-name>');
}

// ...

String? _extractTagContent(List<XmlEvent> events, int startIndex) {
  if (startIndex >= events.length) return null;
  final startNode = events[startIndex];
  if (startNode is! XmlStartElementEvent) return null;
  if (startNode.isSelfClosing) return '';

  final sb = StringBuffer();
  var depth = 1;
  for (var i = startIndex + 1; i < events.length; i++) {
    final node = events[i];
    if (node is XmlStartElementEvent) {
      if (!node.isSelfClosing) {
        depth++;
      }
    } else if (node is XmlEndElementEvent) {
      depth--;
      if (depth == 0) break;
    } else if (node is XmlTextEvent) {
      sb.write(node.value);
    } else if (node is XmlCDATAEvent) {
      sb.write(node.value);
    }
  }
  return sb.toString().trim();
}
