package p062;

import android.content.Context;
import p075.C1652;
import p145.C2405;
import p336.C4223;
import p462.InterfaceC5418;

/* renamed from: ʾˈ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1590 implements InterfaceC5418 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f6203;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C1652 f6204;

    public /* synthetic */ C1590(C1652 c1652, int i) {
        this.f6203 = i;
        this.f6204 = c1652;
    }

    @Override // p343.InterfaceC4267
    public final Object get() {
        int i = this.f6203;
        C1652 c1652 = this.f6204;
        switch (i) {
            case 0:
                C2405 c2405 = (C2405) c1652.f6699;
                C1562 c1562 = C1562.f6112;
                return C1562.m4356(c2405);
            default:
                return new C4223((Context) c1652.f6699);
        }
    }
}
