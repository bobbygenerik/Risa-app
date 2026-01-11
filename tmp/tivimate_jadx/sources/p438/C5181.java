package p438;

import ar.tvplayer.core.domain.ʽﹳ;
import com.parse.ʽˑ;
import p000.C0754;
import p027.C1090;
import p150.C2420;
import p150.InterfaceC2417;
import p246.InterfaceC3291;

/* renamed from: ﹶٴ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5181 implements InterfaceC3291 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final C5181 f19491 = new Object();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C5178 f19490 = new C5178("kotlin.Boolean", C2420.f9346);

    @Override // p246.InterfaceC3291
    /* renamed from: ʽ */
    public final Object mo4336(ʽˑ r12) {
        boolean z;
        boolean z2;
        ʽˑ r122 = (ʽˑ) r12.ᴵᵔ;
        int i = r122.ˈʿ();
        String str = (String) r122.ˈٴ;
        if (i == str.length()) {
            ʽˑ.ʽʽ(r122, "EOF", 0, 6);
            throw null;
        }
        if (str.charAt(i) == '\"') {
            i++;
            z = true;
        } else {
            z = false;
        }
        int i2 = r122.ᵔٴ(i);
        if (i2 >= str.length() || i2 == -1) {
            ʽˑ.ʽʽ(r122, "EOF", 0, 6);
            throw null;
        }
        int i3 = i2 + 1;
        int charAt = str.charAt(i2) | ' ';
        if (charAt == 102) {
            r122.ʼˎ(i3, "alse");
            z2 = false;
        } else {
            if (charAt != 116) {
                ʽˑ.ʽʽ(r122, "Expected valid boolean literal prefix, but had '" + r122.ᵔʾ() + '\'', 0, 6);
                throw null;
            }
            r122.ʼˎ(i3, "rue");
            z2 = true;
        }
        if (z) {
            if (r122.ᴵˊ == str.length()) {
                ʽˑ.ʽʽ(r122, "EOF", 0, 6);
                throw null;
            }
            if (str.charAt(r122.ᴵˊ) != '\"') {
                ʽˑ.ʽʽ(r122, "Expected closing quotation mark", 0, 6);
                throw null;
            }
            r122.ᴵˊ++;
        }
        return Boolean.valueOf(z2);
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ˈ */
    public final InterfaceC2417 mo4337() {
        return f19490;
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ﹳٴ */
    public final void mo4339(C0754 c0754, Object obj) {
        boolean booleanValue = ((Boolean) obj).booleanValue();
        if (c0754.f3122) {
            c0754.m2743(String.valueOf(booleanValue));
        } else {
            ((C1090) ((ʽﹳ) c0754.f3116).ᴵˊ).m3467(String.valueOf(booleanValue));
        }
    }
}
