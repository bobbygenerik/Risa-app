package androidx.leanback.app;

import androidx.leanback.widget.C0095;
import androidx.leanback.widget.C0108;
import androidx.leanback.widget.C0117;
import androidx.leanback.widget.C0138;
import androidx.leanback.widget.InterfaceC0136;

/* renamed from: androidx.leanback.app.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0070 implements InterfaceC0136 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C0069 f537;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f538;

    public /* synthetic */ C0070(C0069 c0069, int i) {
        this.f538 = i;
        this.f537 = c0069;
    }

    @Override // androidx.leanback.widget.InterfaceC0136
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo441(C0095 c0095) {
        int indexOf;
        switch (this.f538) {
            case 0:
                C0069 c0069 = this.f537;
                c0069.m433(c0095);
                C0117 c0117 = c0069.f530;
                if (c0117.f946 != null) {
                    if (c0117 == null || c0117.f944 == null) {
                        return;
                    }
                    c0117.m620(true);
                    return;
                }
                c0095.getClass();
                if (c0095.m585()) {
                    C0117 c01172 = c0069.f530;
                    if (c01172.f938 == null && c01172.f946 == null && (indexOf = ((C0108) c01172.f944.getAdapter()).f909.indexOf(c0095)) >= 0) {
                        c01172.f944.m653(indexOf, new C0138(c01172));
                        return;
                    }
                    return;
                }
                return;
            default:
                C0117 c01173 = this.f537.f530;
                if (c01173.f938 != null || c01173 == null || c01173.f944 == null) {
                    return;
                }
                c01173.m620(true);
                return;
        }
    }
}
