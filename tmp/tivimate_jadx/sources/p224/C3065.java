package p224;

import com.bumptech.glide.C0229;
import java.util.List;
import p012.C0888;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p051.InterfaceC1389;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p171.InterfaceC2646;
import p305.AbstractC3712;
import p305.C3732;
import ˋⁱ.ﾞᴵ;
import ٴﾞ.ˆʾ;

/* renamed from: ˏⁱ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3065 implements InterfaceC2632 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public C3062[] f11635;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public boolean f11636;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f11637;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public long f11638;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final ﾞᴵ f11639;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public long f11640;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f11641;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f11642;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public C3062 f11643;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C3060 f11644;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public long f11645;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public long f11646;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0888 f11647;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3732 f11648;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f11649;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public InterfaceC2646 f11650;

    /* JADX WARN: Type inference failed for: r2v3, types: [java.lang.Object, ʻᴵ.ˆʾ] */
    public C3065(int i, ﾞᴵ r3) {
        this.f11639 = r3;
        this.f11637 = (i & 1) == 0;
        this.f11648 = new C3732(12);
        this.f11647 = new Object();
        this.f11650 = new ˆʾ(17);
        this.f11635 = new C3062[0];
        this.f11640 = -1L;
        this.f11645 = -1L;
        this.f11649 = -1;
        this.f11646 = -9223372036854775807L;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ʼˎ */
    public final void mo2900(InterfaceC2646 interfaceC2646) {
        this.f11642 = 0;
        if (this.f11637) {
            interfaceC2646 = new C0229(interfaceC2646, (InterfaceC1389) this.f11639);
        }
        this.f11650 = interfaceC2646;
        this.f11638 = -1L;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ˈ */
    public final InterfaceC2632 mo2902() {
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0032 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x010d  */
    @Override // p171.InterfaceC2632
    /* renamed from: ٴﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo2904(p171.InterfaceC2622 r24, p055.C1468 r25) {
        /*
            Method dump skipped, instructions count: 1102
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p224.C3065.mo2904(ˊﾞ.ʼᐧ, ʽⁱ.ˏי):int");
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ᵎﹶ */
    public final List mo2905() {
        C0982 c0982 = AbstractC0993.f3977;
        return C0956.f3901;
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ⁱˊ */
    public final void mo2908(long j, long j2) {
        this.f11638 = -1L;
        this.f11643 = null;
        for (C3062 c3062 : this.f11635) {
            if (c3062.f11625 == 0) {
                c3062.f11619 = 0;
            } else {
                c3062.f11619 = c3062.f11627[AbstractC3712.m7783(c3062.f11623, j, true)];
            }
        }
        if (j != 0) {
            this.f11642 = 6;
        } else if (this.f11635.length == 0) {
            this.f11642 = 0;
        } else {
            this.f11642 = 3;
        }
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﹳٴ */
    public final void mo2909() {
    }

    @Override // p171.InterfaceC2632
    /* renamed from: ﾞᴵ */
    public final boolean mo2910(InterfaceC2622 interfaceC2622) {
        C3732 c3732 = this.f11648;
        interfaceC2622.mo4576(c3732.f14534, 0, 12);
        c3732.m7896(0);
        if (c3732.m7884() == 1179011410) {
            c3732.m7900(4);
            if (c3732.m7884() == 541677121) {
                return true;
            }
        }
        return false;
    }
}
