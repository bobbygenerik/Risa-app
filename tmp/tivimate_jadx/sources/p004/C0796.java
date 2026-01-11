package p004;

import android.os.Bundle;
import p171.C2635;
import p171.C2637;
import p171.InterfaceC2622;
import p171.InterfaceC2626;
import p213.InterfaceC3006;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p364.C4451;
import p392.C4643;
import p447.AbstractC5321;
import p447.C5244;
import p447.C5253;
import p447.C5256;
import p447.C5313;
import p447.C5322;
import p447.C5339;
import p447.C5344;
import p447.C5356;
import ʽⁱ.ᵎﹶ;
import ﹶﾞ.ⁱי;

/* renamed from: ʻˆ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0796 implements InterfaceC3006 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Object f3351;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public long f3352;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Object f3353;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f3354;

    public C0796(int i, long j) {
        AbstractC3731.m7857(((C4451) this.f3351) == null);
        this.f3352 = j;
        this.f3354 = j + i;
    }

    public C0796(String str, byte[] bArr, long j, long j2) {
        this.f3351 = str;
        this.f3353 = bArr;
        this.f3352 = j;
        this.f3354 = j2;
    }

    @Override // p213.InterfaceC3006
    /* renamed from: ʽ, reason: contains not printable characters */
    public InterfaceC2626 mo2911() {
        AbstractC3731.m7857(this.f3352 != -1);
        return new C2637((C2635) this.f3351, this.f3352, 0);
    }

    @Override // p213.InterfaceC3006
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public long mo2912(InterfaceC2622 interfaceC2622) {
        long j = this.f3354;
        if (j < 0) {
            return -1L;
        }
        long j2 = -(j + 2);
        this.f3354 = -1L;
        return j2;
    }

    @Override // p213.InterfaceC3006
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public void mo2913(long j) {
        long[] jArr = (long[]) ((ⁱי) this.f3353).ᴵˊ;
        this.f3354 = jArr[AbstractC3712.m7783(jArr, j, true)];
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean m2914(long j, boolean z, boolean z2) {
        C5256 c5256 = (C5256) this.f3353;
        c5256.m10252();
        c5256.m10526();
        C5322 c5322 = (C5322) ((ᵎﹶ) c5256).ʾˋ;
        boolean m10568 = c5322.m10568();
        C5344 c5344 = c5322.f20193;
        if (m10568) {
            C5313 c5313 = c5322.f20205;
            C5322.m10560(c5313);
            C4643 c4643 = c5313.f20033;
            c5322.f20206.getClass();
            c4643.m9216(System.currentTimeMillis());
        }
        long j2 = j - this.f3352;
        if (!z && j2 < 1000) {
            C5322.m10556(c5344);
            c5344.f20350.m10216(Long.valueOf(j2), "Screen exposed for less than 1000 ms. Event not sent. time");
            return false;
        }
        if (!z2) {
            j2 = j - this.f3354;
            this.f3354 = j;
        }
        C5322.m10556(c5344);
        c5344.f20350.m10216(Long.valueOf(j2), "Recording user engagement, ms");
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j2);
        boolean z3 = !c5322.f20189.m10583();
        C5356 c5356 = c5322.f20209;
        C5322.m10559(c5356);
        C5339.m10656(c5356.m10745(z3), bundle, true);
        if (!z2) {
            C5253 c5253 = c5322.f20187;
            C5322.m10559(c5253);
            c5253.m10369("auto", "_e", bundle);
        }
        this.f3352 = j;
        C5244 c5244 = (C5244) this.f3351;
        c5244.m10586();
        c5244.m10588(((Long) AbstractC5321.f20143.m10388(null)).longValue());
        return true;
    }
}
