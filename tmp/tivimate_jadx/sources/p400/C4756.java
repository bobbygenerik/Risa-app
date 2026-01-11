package p400;

import j$.util.Objects;
import p092.EnumC1852;
import p092.InterfaceC1851;
import p210.C2975;
import p262.C3433;
import p397.C4746;

/* renamed from: ⁱﾞ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4756 implements InterfaceC1851 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C4746 f17968;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f17969;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C4746 f17970;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C4756)) {
            return false;
        }
        C4756 c4756 = (C4756) obj;
        return m9521(obj) && this.f17969 == c4756.f17969 && Objects.equals(this.f17968, c4756.f17968);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f17969), this.f17968) + (m9522() * 31);
    }

    public final String toString() {
        return String.format("SHARE_INFO_1{shi1_netname: %s, shi1_type: %d, shi1_remark: %s}", this.f17970, Integer.valueOf(this.f17969), this.f17968);
    }

    @Override // p092.InterfaceC1851
    /* renamed from: ʽ */
    public final void mo4784(C3433 c3433) {
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m9521(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C4756) {
            return Objects.equals(this.f17970, ((C4756) obj).f17970);
        }
        return false;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int m9522() {
        return Objects.hash(this.f17970);
    }

    @Override // p092.InterfaceC1851
    /* renamed from: ⁱˊ */
    public final void mo4785(C3433 c3433) {
        C4746 c4746 = this.f17970;
        if (c4746 != null) {
            c3433.m7324(c4746);
        }
        C4746 c47462 = this.f17968;
        if (c47462 != null) {
            c3433.m7324(c47462);
        }
    }

    @Override // p092.InterfaceC1851
    /* renamed from: ﹳٴ */
    public final void mo4786(C3433 c3433) {
        c3433.m7333(EnumC1852.FOUR);
        C2975 c2975 = (C2975) c3433.f13456;
        if (c2975.readInt() != 0) {
            this.f17970 = new C4746();
        } else {
            this.f17970 = null;
        }
        this.f17969 = (int) (c2975.readInt() & 4294967295L);
        if (c2975.readInt() != 0) {
            this.f17968 = new C4746();
        } else {
            this.f17968 = null;
        }
    }
}
