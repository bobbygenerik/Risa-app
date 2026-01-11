package p041;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p012.C0902;
import p013.C0922;
import p153.AbstractC2474;
import p153.AbstractC2483;
import p316.AbstractC3902;
import p324.AbstractC3999;
import p324.C4030;
import p324.InterfaceC3996;
import ˉᵎ.ⁱˊ;

/* renamed from: ʽʿ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1297 implements InterfaceC3996 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C1316 f4993;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Object f4994 = AbstractC1310.f5012;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C4030 f4995;

    public C1297(C1316 c1316) {
        this.f4993 = c1316;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object m3894() {
        Object obj = this.f4994;
        C0902 c0902 = AbstractC1310.f5012;
        if (obj == c0902) {
            throw new IllegalStateException("`hasNext()` has not been invoked");
        }
        this.f4994 = c0902;
        if (obj != AbstractC1310.f5028) {
            return obj;
        }
        Throwable m3938 = this.f4993.m3938();
        int i = AbstractC2474.f9450;
        throw m3938;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object m3895(AbstractC3902 abstractC3902) {
        C1302 c1302;
        C1302 c13022;
        Object obj = this.f4994;
        boolean z = true;
        if (obj == AbstractC1310.f5012 || obj == AbstractC1310.f5028) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = C1316.f5039;
            C1316 c1316 = this.f4993;
            C1302 c13023 = (C1302) atomicReferenceFieldUpdater.get(c1316);
            while (!c1316.m3920()) {
                long andIncrement = C1316.f5034.getAndIncrement(c1316);
                long j = AbstractC1310.f5025;
                long j2 = andIncrement / j;
                int i = (int) (andIncrement % j);
                if (c13023.f9472 != j2) {
                    C1302 m3928 = c1316.m3928(j2, c13023);
                    if (m3928 == null) {
                        continue;
                    } else {
                        c1302 = m3928;
                    }
                } else {
                    c1302 = c13023;
                }
                Object m3932 = c1316.m3932(c1302, i, andIncrement, null);
                C0902 c0902 = AbstractC1310.f5016;
                if (m3932 == c0902) {
                    throw new IllegalStateException("unreachable");
                }
                C0902 c09022 = AbstractC1310.f5017;
                if (m3932 != c09022) {
                    if (m3932 != AbstractC1310.f5022) {
                        c1302.m5590();
                        this.f4994 = m3932;
                        return Boolean.valueOf(z);
                    }
                    C4030 m8182 = AbstractC3999.m8182(ⁱˊ.ˈٴ(abstractC3902));
                    try {
                        this.f4995 = m8182;
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        Object m39322 = c1316.m3932(c1302, i, andIncrement, this);
                        if (m39322 == c0902) {
                            mo3896(c1302, i);
                        } else {
                            if (m39322 == c09022) {
                                if (andIncrement < c1316.m3930()) {
                                    c1302.m5590();
                                }
                                C1302 c13024 = (C1302) C1316.f5039.get(c1316);
                                while (true) {
                                    if (c1316.m3920()) {
                                        C4030 c4030 = this.f4995;
                                        this.f4995 = null;
                                        this.f4994 = AbstractC1310.f5028;
                                        Throwable m3922 = c1316.m3922();
                                        if (m3922 == null) {
                                            c4030.mo3549(Boolean.FALSE);
                                        } else {
                                            c4030.mo3549(new C0922(m3922));
                                        }
                                    } else {
                                        long andIncrement2 = C1316.f5034.getAndIncrement(c1316);
                                        long j3 = AbstractC1310.f5025;
                                        long j4 = andIncrement2 / j3;
                                        int i2 = (int) (andIncrement2 % j3);
                                        if (c13024.f9472 != j4) {
                                            C1302 m39282 = c1316.m3928(j4, c13024);
                                            if (m39282 != null) {
                                                c13022 = m39282;
                                            }
                                        } else {
                                            c13022 = c13024;
                                        }
                                        Object m39323 = c1316.m3932(c13022, i2, andIncrement2, this);
                                        C1302 c13025 = c13022;
                                        if (m39323 == AbstractC1310.f5016) {
                                            mo3896(c13025, i2);
                                            break;
                                        }
                                        if (m39323 == AbstractC1310.f5017) {
                                            if (andIncrement2 < c1316.m3930()) {
                                                c13025.m5590();
                                            }
                                            c13024 = c13025;
                                        } else {
                                            if (m39323 == AbstractC1310.f5022) {
                                                throw new IllegalStateException("unexpected");
                                            }
                                            c13025.m5590();
                                            this.f4994 = m39323;
                                            this.f4995 = null;
                                        }
                                    }
                                }
                            } else {
                                c1302.m5590();
                                this.f4994 = m39322;
                                this.f4995 = null;
                            }
                            m8182.mo8186(Boolean.TRUE, null);
                        }
                        return m8182.m8209();
                    } catch (Throwable th2) {
                        th = th2;
                        m8182.m8212();
                        throw th;
                    }
                }
                if (andIncrement < c1316.m3930()) {
                    c1302.m5590();
                }
                c13023 = c1302;
            }
            this.f4994 = AbstractC1310.f5028;
            Throwable m39222 = c1316.m3922();
            if (m39222 != null) {
                int i3 = AbstractC2474.f9450;
                throw m39222;
            }
            z = false;
        }
        return Boolean.valueOf(z);
    }

    @Override // p324.InterfaceC3996
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo3896(AbstractC2483 abstractC2483, int i) {
        C4030 c4030 = this.f4995;
        if (c4030 != null) {
            c4030.mo3896(abstractC2483, i);
        }
    }
}
