package p447;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.Map;
import p392.C4643;

/* renamed from: ﹶﾞ.ٴﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C5309 implements InterfaceC5284 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C5322 f20012;

    public /* synthetic */ C5309(C5322 c5322) {
        this.f20012 = c5322;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean m10527() {
        if (!m10528()) {
            return false;
        }
        C5322 c5322 = this.f20012;
        c5322.f20206.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        C5313 c5313 = c5322.f20205;
        C5322.m10560(c5313);
        return currentTimeMillis - c5313.f20028.m9215() > c5322.f20189.m10573(null, AbstractC5321.f20172);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean m10528() {
        C5313 c5313 = this.f20012.f20205;
        C5322.m10560(c5313);
        return c5313.f20028.m9215() > 0;
    }

    @Override // p447.InterfaceC5284
    /* renamed from: ⁱˊ */
    public /* synthetic */ void mo10467(String str, int i, Throwable th, byte[] bArr, Map map) {
        this.f20012.m10563(i, th, bArr);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m10529(String str, Bundle bundle) {
        String uri;
        C5322 c5322 = this.f20012;
        C5215 c5215 = c5322.f20200;
        C5313 c5313 = c5322.f20205;
        C5322.m10556(c5215);
        c5215.m10203();
        if (c5322.m10568()) {
            return;
        }
        if (bundle.isEmpty()) {
            uri = null;
        } else {
            if (true == str.isEmpty()) {
                str = "auto";
            }
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            uri = builder.build().toString();
        }
        if (TextUtils.isEmpty(uri)) {
            return;
        }
        C5322.m10560(c5313);
        c5313.f20037.m1136(uri);
        C4643 c4643 = c5313.f20028;
        c5322.f20206.getClass();
        c4643.m9216(System.currentTimeMillis());
    }
}
