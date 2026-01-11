package p145;

import androidx.leanback.widget.ʻٴ;
import java.util.concurrent.Executor;
import p180.InterfaceC2749;
import p180.InterfaceC2750;
import p180.InterfaceC2751;
import p180.InterfaceC2752;
import p212.C2988;
import p212.InterfaceC2986;
import p324.AbstractC3999;

/* renamed from: ˉᵎ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2406 implements InterfaceC2986 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f9302;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C2406 f9300 = new C2406(0);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final C2406 f9298 = new C2406(1);

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final C2406 f9299 = new C2406(2);

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C2406 f9301 = new C2406(3);

    public /* synthetic */ C2406(int i) {
        this.f9302 = i;
    }

    @Override // p212.InterfaceC2986
    /* renamed from: ˈ */
    public final Object mo2819(ʻٴ r4) {
        switch (this.f9302) {
            case 0:
                return AbstractC3999.m8159((Executor) r4.ʽ(new C2988(InterfaceC2752.class, Executor.class)));
            case 1:
                return AbstractC3999.m8159((Executor) r4.ʽ(new C2988(InterfaceC2749.class, Executor.class)));
            case 2:
                return AbstractC3999.m8159((Executor) r4.ʽ(new C2988(InterfaceC2751.class, Executor.class)));
            default:
                return AbstractC3999.m8159((Executor) r4.ʽ(new C2988(InterfaceC2750.class, Executor.class)));
        }
    }
}
