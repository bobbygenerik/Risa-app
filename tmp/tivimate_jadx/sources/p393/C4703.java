package p393;

import java.io.IOException;
import p035.AbstractC1220;
import p164.AbstractC2581;
import p164.C2599;
import p164.InterfaceC2588;

/* renamed from: ⁱٴ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4703 extends AbstractC2581 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean f17766;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public long f17767;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f17768;

    public C4703(InterfaceC2588 interfaceC2588, long j, boolean z) {
        super(interfaceC2588);
        this.f17768 = j;
        this.f17766 = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    @Override // p164.InterfaceC2588
    /* renamed from: ٴﹶ */
    public final long mo5763(C2599 c2599, long j) {
        long j2 = this.f17767;
        long j3 = this.f17768;
        if (j2 > j3) {
            j = 0;
        } else if (this.f17766) {
            long j4 = j3 - j2;
            if (j4 == 0) {
                return -1L;
            }
            j = Math.min(j, j4);
        }
        long mo5763 = this.f9801.mo5763(c2599, j);
        if (mo5763 != -1) {
            this.f17767 += mo5763;
        }
        long j5 = this.f17767;
        if ((j5 >= j3 || mo5763 != -1) && j5 <= j3) {
            return mo5763;
        }
        if (mo5763 > 0 && j5 > j3) {
            long j6 = c2599.f9835 - (j5 - j3);
            ?? obj = new Object();
            obj.m5834(c2599);
            c2599.mo5741(obj, j6);
            obj.m5836();
        }
        StringBuilder m3770 = AbstractC1220.m3770(j3, "expected ", " bytes but got ");
        m3770.append(this.f17767);
        throw new IOException(m3770.toString());
    }
}
