package p200;

import android.util.Base64;
import java.util.UUID;
import org.xmlpull.v1.XmlPullParser;
import p004.AbstractC0804;
import p004.C0797;

/* renamed from: ˎˉ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2907 extends AbstractC2906 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public boolean f10955;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public byte[] f10956;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public UUID f10957;

    @Override // p200.AbstractC2906
    /* renamed from: ˆʾ */
    public final void mo6429(XmlPullParser xmlPullParser) {
        if ("ProtectionHeader".equals(xmlPullParser.getName())) {
            this.f10955 = true;
            String attributeValue = xmlPullParser.getAttributeValue(null, "SystemID");
            if (attributeValue.charAt(0) == '{' && attributeValue.charAt(attributeValue.length() - 1) == '}') {
                attributeValue = attributeValue.substring(1, attributeValue.length() - 1);
            }
            this.f10957 = UUID.fromString(attributeValue);
        }
    }

    @Override // p200.AbstractC2906
    /* renamed from: ˈ */
    public final boolean mo6430(String str) {
        return "ProtectionHeader".equals(str);
    }

    @Override // p200.AbstractC2906
    /* renamed from: ٴﹶ */
    public final void mo6432(XmlPullParser xmlPullParser) {
        if (this.f10955) {
            this.f10956 = Base64.decode(xmlPullParser.getText(), 0);
        }
    }

    @Override // p200.AbstractC2906
    /* renamed from: ⁱˊ */
    public final Object mo6433() {
        UUID uuid = this.f10957;
        byte[] m2935 = AbstractC0804.m2935(uuid, null, this.f10956);
        byte[] bArr = this.f10956;
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < bArr.length; i += 2) {
            sb.append((char) bArr[i]);
        }
        String sb2 = sb.toString();
        byte[] decode = Base64.decode(sb2.substring(sb2.indexOf("<KID>") + 5, sb2.indexOf("</KID>")), 0);
        byte b = decode[0];
        decode[0] = decode[3];
        decode[3] = b;
        byte b2 = decode[1];
        decode[1] = decode[2];
        decode[2] = b2;
        byte b3 = decode[4];
        decode[4] = decode[5];
        decode[5] = b3;
        byte b4 = decode[6];
        decode[6] = decode[7];
        decode[7] = b4;
        return new C2911(uuid, m2935, new C0797[]{new C0797(true, null, 8, decode, 0, 0, null)});
    }

    @Override // p200.AbstractC2906
    /* renamed from: ﾞᴵ */
    public final void mo6436(XmlPullParser xmlPullParser) {
        if ("ProtectionHeader".equals(xmlPullParser.getName())) {
            this.f10955 = false;
        }
    }
}
