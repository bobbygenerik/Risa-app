package androidx.lifecycle;

import android.os.Bundle;
import java.util.Arrays;
import java.util.Map;
import p013.C0906;
import p013.C0913;
import p036.C1256;
import p229.C3125;
import p333.InterfaceC4202;

/* renamed from: androidx.lifecycle.ﹳـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0206 implements InterfaceC4202 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Bundle f1117;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C0906 f1118;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f1119;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3125 f1120;

    public C0206(C3125 c3125, InterfaceC0191 interfaceC0191) {
        this.f1120 = c3125;
        this.f1118 = new C0906(new C0185(0, interfaceC0191));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m737() {
        if (this.f1119) {
            return;
        }
        Bundle m6817 = this.f1120.m6817("androidx.lifecycle.internal.SavedStateHandlesProvider");
        Bundle bundle = ˉᵎ.ⁱˊ.ﹳٴ((C0913[]) Arrays.copyOf(new C0913[0], 0));
        Bundle bundle2 = this.f1117;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if (m6817 != null) {
            bundle.putAll(m6817);
        }
        this.f1117 = bundle;
        this.f1119 = true;
    }

    @Override // p333.InterfaceC4202
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Bundle mo738() {
        Bundle bundle = ˉᵎ.ⁱˊ.ﹳٴ((C0913[]) Arrays.copyOf(new C0913[0], 0));
        Bundle bundle2 = this.f1117;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        for (Map.Entry entry : ((C0173) this.f1118.getValue()).f1063.entrySet()) {
            String str = (String) entry.getKey();
            Bundle mo738 = ((C1256) ((C0181) entry.getValue()).f1070.ᴵˊ).mo738();
            if (!mo738.isEmpty()) {
                bundle.putBundle(str, mo738);
            }
        }
        this.f1119 = false;
        return bundle;
    }
}
