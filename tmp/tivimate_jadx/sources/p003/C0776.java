package p003;

import java.util.HashMap;
import p051.C1391;
import p051.C1397;
import p305.AbstractC3731;
import p305.C3732;
import p305.InterfaceC3718;
import p305.InterfaceC3734;
import p420.C4987;
import ﹳˋ.ʼˎ;

/* renamed from: ʻʿ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0776 implements InterfaceC3718, InterfaceC3734 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f3212;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ long f3213;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f3214;

    public /* synthetic */ C0776(C0789 c0789, int i, long j, long j2) {
        this.f3212 = c0789;
        this.f3214 = i;
        this.f3213 = j;
    }

    public /* synthetic */ C0776(C1391 c1391, long j, int i) {
        this.f3212 = c1391;
        this.f3213 = j;
        this.f3214 = i;
    }

    @Override // p305.InterfaceC3734
    public void accept(Object obj) {
        C1391 c1391 = (C1391) this.f3212;
        C1397 c1397 = (C1397) obj;
        AbstractC3731.m7868(c1391.f5453);
        byte[] bArr = ʼˎ.ˉٴ(c1397.f5474, c1397.f5477);
        C3732 c3732 = c1391.f5449;
        c3732.getClass();
        c3732.m7897(bArr.length, bArr);
        c1391.f5455.mo4109(bArr.length, c3732);
        long j = c1397.f5476;
        long j2 = this.f3213;
        if (j == -9223372036854775807L) {
            AbstractC3731.m7857(c1391.f5453.f5920 == Long.MAX_VALUE);
        } else {
            long j3 = c1391.f5453.f5920;
            j2 = j3 == Long.MAX_VALUE ? j2 + j : j + j3;
        }
        c1391.f5455.mo4112(j2, this.f3214 | 1, bArr.length, 0, null);
    }

    @Override // p305.InterfaceC3718
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void mo2801(Object obj) {
        C0789 c0789 = (C0789) this.f3212;
        C0777 c0777 = (C0777) ((InterfaceC0788) obj);
        HashMap hashMap = c0777.f3235;
        HashMap hashMap2 = c0777.f3217;
        C4987 c4987 = c0789.f3281;
        if (c4987 != null) {
            String m2870 = c0777.f3219.m2870(c0789.f3285, c4987);
            Long l = (Long) hashMap2.get(m2870);
            Long l2 = (Long) hashMap.get(m2870);
            hashMap2.put(m2870, Long.valueOf((l == null ? 0L : l.longValue()) + this.f3213));
            hashMap.put(m2870, Long.valueOf((l2 != null ? l2.longValue() : 0L) + this.f3214));
        }
    }
}
