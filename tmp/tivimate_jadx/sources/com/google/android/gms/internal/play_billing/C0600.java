package com.google.android.gms.internal.play_billing;

import android.support.v4.media.session.AbstractC0001;
import com.google.android.gms.internal.measurement.C0317;
import p035.AbstractC1220;
import p137.AbstractC2305;

/* renamed from: com.google.android.gms.internal.play_billing.ـᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0600 implements InterfaceC0571 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0539 f2409;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0601 f2410;

    public C0600(C0539 c0539, AbstractC0601 abstractC0601) {
        C0539 c05392 = AbstractC0599.f2408;
        this.f2409 = c0539;
        this.f2410 = abstractC0601;
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ʼˎ */
    public final boolean mo2144(AbstractC0529 abstractC0529, AbstractC0529 abstractC05292) {
        return abstractC0529.zzc.equals(abstractC05292.zzc);
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ʽ */
    public final boolean mo2145(Object obj) {
        throw AbstractC2305.m5368(obj);
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ˈ */
    public final void mo2146(Object obj, Object obj2) {
        AbstractC0531.m2055(obj, obj2);
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ˑﹳ */
    public final void mo2147(Object obj, C0618 c0618) {
        throw AbstractC2305.m5368(obj);
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ᵎﹶ */
    public final void mo2148(Object obj, byte[] bArr, int i, int i2, C0317 c0317) {
        AbstractC0529 abstractC0529 = (AbstractC0529) obj;
        if (abstractC0529.zzc == C0650.f2510) {
            abstractC0529.zzc = C0650.m2301();
        }
        throw AbstractC2305.m5368(obj);
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ᵔᵢ */
    public final int mo2149(AbstractC0601 abstractC0601) {
        C0650 c0650 = ((AbstractC0529) abstractC0601).zzc;
        int i = c0650.f2512;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < c0650.f2515; i3++) {
            int i4 = c0650.f2514[i3] >>> 3;
            C0585 c0585 = (C0585) c0650.f2511[i3];
            int m2199 = C0606.m2199(8);
            int m21992 = C0606.m2199(i4) + C0606.m2199(16);
            int m21993 = C0606.m2199(24);
            int mo2031 = c0585.mo2031();
            i2 = AbstractC1220.m3796(m2199 + m2199, m21992, AbstractC0001.m18(mo2031, mo2031, m21993), i2);
        }
        c0650.f2512 = i2;
        return i2;
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ⁱˊ */
    public final void mo2150(Object obj) {
        this.f2409.getClass();
        C0650 c0650 = ((AbstractC0529) obj).zzc;
        if (c0650.f2513) {
            c0650.f2513 = false;
        }
        C0539 c0539 = AbstractC0599.f2408;
        throw AbstractC2305.m5368(obj);
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ﹳٴ */
    public final AbstractC0529 mo2151() {
        AbstractC0601 abstractC0601 = this.f2410;
        return abstractC0601 instanceof AbstractC0529 ? (AbstractC0529) ((AbstractC0529) abstractC0601).mo2022(4) : ((AbstractC0584) ((AbstractC0529) abstractC0601).mo2022(5)).m2175();
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ﾞᴵ */
    public final int mo2152(AbstractC0529 abstractC0529) {
        return abstractC0529.zzc.hashCode();
    }
}
