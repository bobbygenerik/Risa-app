package p291;

import java.util.ArrayList;
import p017.AbstractC0993;
import p055.C1495;
import p274.InterfaceC3486;

/* renamed from: ٴᴵ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3619 extends AbstractC3615 implements InterfaceC3486 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final AbstractC3621 f14162;

    public C3619(C1495 c1495, AbstractC0993 abstractC0993, AbstractC3621 abstractC3621, ArrayList arrayList) {
        super(c1495, abstractC0993, abstractC3621, arrayList);
        this.f14162 = abstractC3621;
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ʼʼ */
    public final long mo4573() {
        return this.f14162.f14168;
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ʽ */
    public final long mo4574(long j) {
        return this.f14162.m7603(j);
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ʽﹳ */
    public final C3613 mo4575(long j) {
        return this.f14162.mo7571(this, j);
    }

    @Override // p291.AbstractC3615
    /* renamed from: ˈ */
    public final InterfaceC3486 mo7577() {
        return this;
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ˉˆ */
    public final long mo4583(long j, long j2) {
        return this.f14162.m7601(j, j2);
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ˏי */
    public final long mo4586(long j, long j2) {
        AbstractC3621 abstractC3621 = this.f14162;
        if (abstractC3621.f14172 != null) {
            return -9223372036854775807L;
        }
        long m7604 = abstractC3621.m7604(j, j2) + abstractC3621.m7601(j, j2);
        return (abstractC3621.m7602(m7604, j) + abstractC3621.m7603(m7604)) - abstractC3621.f14167;
    }

    @Override // p291.AbstractC3615
    /* renamed from: ˑﹳ */
    public final C3613 mo7578() {
        return null;
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ـˆ */
    public final boolean mo4587() {
        return this.f14162.mo7580();
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ٴᵢ */
    public final long mo4589(long j, long j2) {
        return this.f14162.m7604(j, j2);
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ᴵᵔ */
    public final long mo4591(long j) {
        return this.f14162.mo7570(j);
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ᵎﹶ */
    public final long mo4594(long j, long j2) {
        return this.f14162.m7602(j, j2);
    }

    @Override // p291.AbstractC3615
    /* renamed from: ⁱˊ */
    public final String mo7579() {
        return null;
    }

    @Override // p274.InterfaceC3486
    /* renamed from: ﹳٴ */
    public final long mo4598(long j, long j2) {
        return this.f14162.m7605(j, j2);
    }
}
