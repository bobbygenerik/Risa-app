package p413;

import android.content.Context;
import com.google.android.datatransport.cct.CctBackendFactory;
import com.parse.ٴʼ;
import java.util.HashMap;
import p262.C3433;
import p419.InterfaceC4934;

/* renamed from: ﹳˑ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4912 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final HashMap f18329;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ٴʼ f18330;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3433 f18331;

    public C4912(Context context, ٴʼ r4) {
        C3433 c3433 = new C3433(context, 19);
        this.f18329 = new HashMap();
        this.f18331 = c3433;
        this.f18330 = r4;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized InterfaceC4913 m9717(String str) {
        if (this.f18329.containsKey(str)) {
            return (InterfaceC4913) this.f18329.get(str);
        }
        CctBackendFactory m7331 = this.f18331.m7331(str);
        if (m7331 == null) {
            return null;
        }
        ٴʼ r1 = this.f18330;
        InterfaceC4913 create = m7331.create(new C4914((Context) r1.ˈٴ, (InterfaceC4934) r1.ᴵˊ, (InterfaceC4934) r1.ʽʽ, str));
        this.f18329.put(str, create);
        return create;
    }
}
