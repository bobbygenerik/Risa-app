package p420;

import android.net.Uri;
import java.io.InterruptedIOException;
import java.util.Collections;
import java.util.Map;
import p055.C1468;
import p171.C2651;
import p171.InterfaceC2632;
import p171.InterfaceC2639;
import p194.C2881;
import p266.C3446;
import p266.C3456;
import p266.InterfaceC3462;
import p305.AbstractC3731;
import p305.C3722;
import p364.InterfaceC4445;
import p454.C5374;
import ˈˆ.ﾞᴵ;
import ˑי.ʽ;

/* renamed from: ﹳᵢ.ᵔٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4984 implements InterfaceC4445 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ʽ f18605;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Uri f18606;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final /* synthetic */ C4961 f18607;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C4961 f18608;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C3456 f18611;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public volatile boolean f18612;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C3446 f18613;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C3722 f18614;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public InterfaceC2639 f18615;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public long f18616;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean f18617;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C1468 f18610 = new Object();

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public boolean f18609 = true;

    /* JADX WARN: Type inference failed for: r1v2, types: [ʽⁱ.ˏי, java.lang.Object] */
    public C4984(C4961 c4961, Uri uri, InterfaceC3462 interfaceC3462, ʽ r4, C4961 c49612, C3722 c3722) {
        this.f18607 = c4961;
        this.f18606 = uri;
        this.f18613 = new C3446(interfaceC3462);
        this.f18605 = r4;
        this.f18608 = c49612;
        this.f18614 = c3722;
        C4991.f18644.getAndIncrement();
        this.f18611 = m9835(0L);
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽ */
    public final void mo5106() {
        InterfaceC3462 interfaceC3462;
        InterfaceC2632 interfaceC2632;
        int i;
        int i2 = 0;
        while (i2 == 0 && !this.f18612) {
            try {
                long j = this.f18610.f5751;
                C3456 m9835 = m9835(j);
                this.f18611 = m9835;
                long mo4684 = this.f18613.mo4684(m9835);
                if (this.f18612) {
                    if (i2 != 1 && this.f18605.ʼʼ() != -1) {
                        this.f18610.f5751 = this.f18605.ʼʼ();
                    }
                    ﾞᴵ.ﾞᴵ(this.f18613);
                    return;
                }
                if (mo4684 != -1) {
                    mo4684 += j;
                    C4961 c4961 = this.f18607;
                    c4961.f18462.post(new RunnableC4983(c4961, 0));
                }
                long j2 = mo4684;
                this.f18607.f18447 = C5374.m10770(this.f18613.f13540.mo5140());
                C3446 c3446 = this.f18613;
                C5374 c5374 = this.f18607.f18447;
                if (c5374 == null || (i = c5374.f20480) == -1) {
                    interfaceC3462 = c3446;
                } else {
                    interfaceC3462 = new C4986(c3446, i, this);
                    InterfaceC2639 m9782 = this.f18607.m9782(new C4964(0, true));
                    this.f18615 = m9782;
                    m9782.mo4108(C4961.f18443);
                }
                this.f18605.ᵢˏ(interfaceC3462, this.f18606, this.f18613.f13540.mo5140(), j, j2, this.f18608);
                if (this.f18607.f18447 != null && (interfaceC2632 = (InterfaceC2632) this.f18605.ᴵˊ) != null) {
                    InterfaceC2632 mo2902 = interfaceC2632.mo2902();
                    if (mo2902 instanceof C2881) {
                        ((C2881) mo2902).f10820 = true;
                    }
                }
                if (this.f18609) {
                    ʽ r5 = this.f18605;
                    long j3 = this.f18616;
                    InterfaceC2632 interfaceC26322 = (InterfaceC2632) r5.ᴵˊ;
                    interfaceC26322.getClass();
                    interfaceC26322.mo2908(j, j3);
                    this.f18609 = false;
                }
                while (i2 == 0 && !this.f18612) {
                    try {
                        C3722 c3722 = this.f18614;
                        synchronized (c3722) {
                            while (!c3722.f14497) {
                                c3722.f14498.getClass();
                                c3722.wait();
                            }
                        }
                        ʽ r52 = this.f18605;
                        C1468 c1468 = this.f18610;
                        InterfaceC2632 interfaceC26323 = (InterfaceC2632) r52.ᴵˊ;
                        interfaceC26323.getClass();
                        C2651 c2651 = (C2651) r52.ʽʽ;
                        c2651.getClass();
                        i2 = interfaceC26323.mo2904(c2651, c1468);
                        long j4 = this.f18605.ʼʼ();
                        if (j4 > this.f18607.f18480 + j) {
                            this.f18614.m7822();
                            C4961 c49612 = this.f18607;
                            c49612.f18462.post(c49612.f18465);
                            j = j4;
                        }
                    } catch (InterruptedException unused) {
                        throw new InterruptedIOException();
                    }
                }
                if (i2 == 1) {
                    i2 = 0;
                } else if (this.f18605.ʼʼ() != -1) {
                    this.f18610.f5751 = this.f18605.ʼʼ();
                }
                ﾞᴵ.ﾞᴵ(this.f18613);
            } catch (Throwable th) {
                if (i2 != 1 && this.f18605.ʼʼ() != -1) {
                    this.f18610.f5751 = this.f18605.ʼʼ();
                }
                ﾞᴵ.ﾞᴵ(this.f18613);
                throw th;
            }
        }
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽﹳ */
    public final void mo5107() {
        this.f18612 = true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3456 m9835(long j) {
        Map map = Collections.EMPTY_MAP;
        Map map2 = C4961.f18444;
        Uri uri = this.f18606;
        AbstractC3731.m7851(uri, "The uri must be set.");
        return new C3456(uri, 1, null, map2, j, -1L, null, 6);
    }
}
