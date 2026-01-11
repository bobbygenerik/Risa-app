package p420;

import java.util.List;
import p055.C1474;
import p055.C1495;
import p372.AbstractC4519;
import p372.InterfaceC4518;
import p428.InterfaceC5067;

/* renamed from: ﹳᵢ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4957 implements InterfaceC5067 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1474 f18433;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC5067 f18434;

    public C4957(InterfaceC5067 interfaceC5067, C1474 c1474) {
        this.f18434 = interfaceC5067;
        this.f18433 = c1474;
    }

    public final boolean equals(Object obj) {
        if (m9753(obj) && (obj instanceof C4957)) {
            return this.f18433.equals(((C4957) obj).f18433);
        }
        return false;
    }

    public final int hashCode() {
        return this.f18433.hashCode() + (this.f18434.hashCode() * 31);
    }

    @Override // p428.InterfaceC5067
    public final int length() {
        return this.f18434.length();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final boolean m9753(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C4957) {
            return this.f18434.equals(((C4957) obj).f18434);
        }
        return false;
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int mo9754() {
        return this.f18434.mo9754();
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final int mo9755(C1495 c1495) {
        return this.f18434.mo9757(this.f18433.m4280(c1495));
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean mo9756(int i, long j) {
        return this.f18434.mo9756(i, j);
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final int mo9757(int i) {
        return this.f18434.mo9757(i);
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C1474 mo9758() {
        return this.f18433;
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1495 mo9759(int i) {
        return this.f18433.f5767[this.f18434.mo9774(i)];
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final int mo9760() {
        return this.f18434.mo9760();
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean mo9761(int i, long j) {
        return this.f18434.mo9761(i, j);
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ˏי, reason: contains not printable characters */
    public final void mo9762() {
        this.f18434.mo9762();
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo9763() {
        this.f18434.mo9763();
    }

    @Override // p428.InterfaceC5067
    /* renamed from: יـ, reason: contains not printable characters */
    public final void mo9764() {
        this.f18434.mo9764();
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void mo9765(long j, long j2, long j3, List list, InterfaceC4518[] interfaceC4518Arr) {
        this.f18434.mo9765(j, j2, j3, list, interfaceC4518Arr);
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int mo9766(long j, List list) {
        return this.f18434.mo9766(j, list);
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final int mo9767() {
        return this.f18434.mo9767();
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo9768() {
        this.f18434.mo9768();
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void mo9769(float f) {
        this.f18434.mo9769(f);
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean mo9770(long j, AbstractC4519 abstractC4519, List list) {
        return this.f18434.mo9770(j, abstractC4519, list);
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo9771(boolean z) {
        this.f18434.mo9771(z);
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final Object mo9772() {
        return this.f18434.mo9772();
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C1495 mo9773() {
        return this.f18433.f5767[this.f18434.mo9754()];
    }

    @Override // p428.InterfaceC5067
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int mo9774(int i) {
        return this.f18434.mo9774(i);
    }
}
