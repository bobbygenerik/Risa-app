package p216;

import android.content.Context;
import com.bumptech.glide.ʽ;
import com.google.android.gms.internal.play_billing.C0559;
import java.util.Collections;
import java.util.List;
import p090.C1791;
import p090.C1796;
import p090.InterfaceC1824;
import p091.C1842;
import p091.ExecutorC1840;
import p126.InterfaceC2136;
import p152.AbstractC2441;
import p152.AbstractC2443;
import p152.C2442;
import p153.C2469;
import p164.AbstractC2598;
import p223.C3058;
import p301.InterfaceC3701;
import p314.C3889;
import p315.C3895;
import p324.AbstractC3999;
import p324.AbstractC4028;
import ʼˋ.ﾞᴵ;
import ʼⁱ.ʽⁱ;

/* renamed from: ˏˊ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3011 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static final /* synthetic */ InterfaceC3701[] f11507;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC1824 f11508;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ThreadLocal f11509 = new ThreadLocal();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f11510;

    static {
        AbstractC2441 abstractC2441 = new AbstractC2441(C2442.f9399, C3011.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0);
        AbstractC2443.f9400.getClass();
        f11507 = new InterfaceC3701[]{abstractC2441};
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [ʿᵢ.ⁱˊ, java.lang.Object] */
    public C3011(Context context, String str) {
        C3895 c3895;
        this.f11510 = str;
        ʽⁱ r0 = new ʽⁱ(20, this);
        C1842 c1842 = AbstractC4028.f15408;
        C2469 m8179 = AbstractC3999.m8179(ʽ.ˏי(ExecutorC1840.f7404, AbstractC3999.m8166()));
        C0559 c0559 = new C0559(str, r0, m8179);
        int i = 0;
        InterfaceC3701 interfaceC3701 = f11507[0];
        C3895 c38952 = (C3895) c0559.f2348;
        if (c38952 == null) {
            synchronized (c0559.f2347) {
                try {
                    if (((C3895) c0559.f2348) == null) {
                        Context applicationContext = context.getApplicationContext();
                        List list = (List) r0.mo3844(applicationContext);
                        c0559.f2348 = new C3895(new C3895(new C1791(new C3889(AbstractC2598.f9833, new C1796(2, new C3058(i, applicationContext, c0559))), Collections.singletonList(new ﾞᴵ(list, (InterfaceC2136) null, 17)), new Object(), m8179)));
                    }
                    c3895 = (C3895) c0559.f2348;
                } catch (Throwable th) {
                    throw th;
                }
            }
            c38952 = c3895;
        }
        this.f11508 = c38952;
    }
}
