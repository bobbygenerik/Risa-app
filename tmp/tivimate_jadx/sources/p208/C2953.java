package p208;

import java.util.Iterator;
import java.util.List;
import p121.AbstractC2026;
import p164.C2571;
import p164.C2599;
import p164.InterfaceC2590;
import p435.C5140;

/* renamed from: ˎᵢ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2953 extends AbstractC2944 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final byte[] f11247;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final C2968 f11248;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final byte[] f11249;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final byte[] f11250;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C2968 f11251;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2968 f11252;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f11253;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final List f11254;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2571 f11255;

    static {
        C5140 c5140 = C2968.f11341;
        f11248 = AbstractC2026.m5063("multipart/mixed");
        AbstractC2026.m5063("multipart/alternative");
        AbstractC2026.m5063("multipart/digest");
        AbstractC2026.m5063("multipart/parallel");
        f11251 = AbstractC2026.m5063("multipart/form-data");
        f11249 = new byte[]{58, 32};
        f11250 = new byte[]{13, 10};
        f11247 = new byte[]{45, 45};
    }

    public C2953(C2571 c2571, C2968 c2968, List list) {
        this.f11255 = c2571;
        this.f11254 = list;
        C5140 c5140 = C2968.f11341;
        this.f11252 = AbstractC2026.m5063(c2968 + "; boundary=" + c2571.m5748());
        this.f11253 = -1L;
    }

    @Override // p208.AbstractC2944
    /* renamed from: ʽ */
    public final boolean mo6476() {
        List list = this.f11254;
        if (list.isEmpty()) {
            return false;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((C2955) it.next()).f11256.mo6476()) {
                return true;
            }
        }
        return false;
    }

    @Override // p208.AbstractC2944
    /* renamed from: ˈ */
    public final void mo6463(InterfaceC2590 interfaceC2590) {
        m6487(interfaceC2590, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long m6487(InterfaceC2590 interfaceC2590, boolean z) {
        C2599 c2599;
        InterfaceC2590 interfaceC25902;
        if (z) {
            Object obj = new Object();
            c2599 = obj;
            interfaceC25902 = obj;
        } else {
            c2599 = null;
            interfaceC25902 = interfaceC2590;
        }
        List list = this.f11254;
        int size = list.size();
        long j = 0;
        int i = 0;
        while (true) {
            C2571 c2571 = this.f11255;
            byte[] bArr = f11247;
            byte[] bArr2 = f11250;
            if (i >= size) {
                interfaceC25902.write(bArr);
                interfaceC25902.mo5742(c2571);
                interfaceC25902.write(bArr);
                interfaceC25902.write(bArr2);
                if (!z) {
                    return j;
                }
                long j2 = j + c2599.f9835;
                c2599.m5836();
                return j2;
            }
            C2955 c2955 = (C2955) list.get(i);
            C2950 c2950 = c2955.f11257;
            AbstractC2944 abstractC2944 = c2955.f11256;
            interfaceC25902.write(bArr);
            interfaceC25902.mo5742(c2571);
            interfaceC25902.write(bArr2);
            int size2 = c2950.size();
            for (int i2 = 0; i2 < size2; i2++) {
                interfaceC25902.mo5739(c2950.m6484(i2)).write(f11249).mo5739(c2950.m6486(i2)).write(bArr2);
            }
            C2968 mo6464 = abstractC2944.mo6464();
            if (mo6464 != null) {
                interfaceC25902.mo5739("Content-Type: ").mo5739(mo6464.f11345).write(bArr2);
            }
            long mo6465 = abstractC2944.mo6465();
            if (mo6465 == -1 && z) {
                c2599.m5836();
                return -1L;
            }
            interfaceC25902.write(bArr2);
            if (z) {
                j += mo6465;
            } else {
                abstractC2944.mo6463(interfaceC25902);
            }
            interfaceC25902.write(bArr2);
            i++;
        }
    }

    @Override // p208.AbstractC2944
    /* renamed from: ⁱˊ */
    public final C2968 mo6464() {
        return this.f11252;
    }

    @Override // p208.AbstractC2944
    /* renamed from: ﹳٴ */
    public final long mo6465() {
        long j = this.f11253;
        if (j != -1) {
            return j;
        }
        long m6487 = m6487(null, true);
        this.f11253 = m6487;
        return m6487;
    }
}
