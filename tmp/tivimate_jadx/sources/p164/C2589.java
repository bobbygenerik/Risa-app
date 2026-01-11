package p164;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.zip.Inflater;
import p393.AbstractC4701;
import p393.AbstractC4707;
import p393.C4703;
import p393.C4705;
import ʽٴ.ˈ;
import ᵎˉ.ⁱˊ;

/* renamed from: ˊᐧ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2589 extends AbstractC2598 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C2575 f9817;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final AbstractC2598 f9818;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final LinkedHashMap f9819;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2575 f9820;

    static {
        String str = C2575.f9776;
        f9817 = ⁱˊ.ᵔᵢ("/", false);
    }

    public C2589(C2575 c2575, C2597 c2597, LinkedHashMap linkedHashMap) {
        this.f9820 = c2575;
        this.f9818 = c2597;
        this.f9819 = linkedHashMap;
    }

    @Override // p164.AbstractC2598
    /* renamed from: ʽ */
    public final void mo5789(C2575 c2575, C2575 c25752) {
        throw new IOException("zip file systems are read-only");
    }

    @Override // p164.AbstractC2598
    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2593 mo5811(C2575 c2575) {
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // p164.AbstractC2598
    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C2593 mo5812(C2575 c2575) {
        throw new IOException("zip entries are not writable");
    }

    @Override // p164.AbstractC2598
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void mo5813(C2575 c2575) {
        throw new IOException("zip file systems are read-only");
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0121  */
    @Override // p164.AbstractC2598
    /* renamed from: ـˆ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p035.C1233 mo5790(p164.C2575 r27) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p164.C2589.mo5790(ˊᐧ.ʽﹳ):ʼﾞ.ᴵˊ");
    }

    @Override // p164.AbstractC2598
    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final InterfaceC2588 mo5814(C2575 c2575) {
        C2586 c2586;
        Throwable th;
        C2575 c25752 = f9817;
        c25752.getClass();
        C4705 c4705 = (C4705) this.f9819.get(AbstractC4701.m9410(c25752, c2575, true));
        if (c4705 == null) {
            throw new FileNotFoundException("no such file: " + c2575);
        }
        long j = c4705.f17789;
        C2593 mo5811 = this.f9818.mo5811(this.f9820);
        try {
            c2586 = new C2586(mo5811.m5817(c4705.f17784));
            try {
                mo5811.close();
                th = null;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            if (mo5811 != null) {
                try {
                    mo5811.close();
                } catch (Throwable th4) {
                    ˈ.ⁱˊ(th3, th4);
                }
            }
            c2586 = null;
            th = th3;
        }
        if (th != null) {
            throw th;
        }
        AbstractC4707.m9417(c2586, null);
        if (c4705.f17782 == 0) {
            return new C4703(c2586, j, true);
        }
        return new C4703(new C2572(new C2586(new C4703(c2586, c4705.f17780, true)), new Inflater(true)), j, false);
    }

    @Override // p164.AbstractC2598
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo5815(C2575 c2575) {
        throw new IOException("zip file systems are read-only");
    }
}
