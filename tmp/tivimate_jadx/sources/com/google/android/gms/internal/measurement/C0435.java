package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.AbstractC0001;
import p035.AbstractC1220;
import p137.AbstractC2305;

/* renamed from: com.google.android.gms.internal.measurement.ᴵʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0435 implements InterfaceC0363 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C0298 f2180;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0514 f2181;

    public C0435(C0298 c0298, AbstractC0514 abstractC0514) {
        C0298 c02982 = AbstractC0463.f2219;
        this.f2180 = c0298;
        this.f2181 = abstractC0514;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ʼˎ */
    public final void mo1527(Object obj, C0425 c0425) {
        throw AbstractC2305.m5368(obj);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ʽ */
    public final boolean mo1529(Object obj) {
        throw AbstractC2305.m5368(obj);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ˆʾ */
    public final boolean mo1533(AbstractC0269 abstractC0269, AbstractC0269 abstractC02692) {
        return abstractC0269.zzc.equals(abstractC02692.zzc);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ˈ */
    public final void mo1534(Object obj) {
        this.f2180.getClass();
        C0278 c0278 = ((AbstractC0269) obj).zzc;
        if (c0278.f1790) {
            c0278.f1790 = false;
        }
        C0298 c0298 = AbstractC0463.f2219;
        throw AbstractC2305.m5368(obj);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ˑﹳ */
    public final void mo1539(Object obj, byte[] bArr, int i, int i2, C0317 c0317) {
        AbstractC0269 abstractC0269 = (AbstractC0269) obj;
        if (abstractC0269.zzc == C0278.f1787) {
            abstractC0269.zzc = C0278.m1289();
        }
        throw AbstractC2305.m5368(obj);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ᵎﹶ */
    public final int mo1543(AbstractC0514 abstractC0514) {
        C0278 c0278 = ((AbstractC0269) abstractC0514).zzc;
        int i = c0278.f1789;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < c0278.f1792; i3++) {
            int i4 = c0278.f1791[i3] >>> 3;
            C0364 c0364 = (C0364) c0278.f1788[i3];
            int m1207 = C0260.m1207(8);
            int m12072 = C0260.m1207(i4) + C0260.m1207(16);
            int m12073 = C0260.m1207(24);
            int mo1236 = c0364.mo1236();
            i2 = AbstractC1220.m3796(m1207 + m1207, m12072, AbstractC0001.m15(mo1236, mo1236, m12073), i2);
        }
        c0278.f1789 = i2;
        return i2;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ᵔᵢ */
    public final int mo1545(AbstractC0269 abstractC0269) {
        return abstractC0269.zzc.hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ⁱˊ */
    public final AbstractC0269 mo1548() {
        AbstractC0514 abstractC0514 = this.f2181;
        return abstractC0514 instanceof AbstractC0269 ? (AbstractC0269) ((AbstractC0269) abstractC0514).mo1194(4) : ((AbstractC0495) ((AbstractC0269) abstractC0514).mo1194(5)).m1945();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ﾞᴵ */
    public final void mo1550(Object obj, Object obj2) {
        AbstractC0383.m1750(obj, obj2);
    }
}
