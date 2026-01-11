package p041;

import p316.AbstractC3902;
import p373.EnumC4532;

/* renamed from: ʽʿ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1300 extends AbstractC3902 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public /* synthetic */ Object f4997;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f4998;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ C1316 f4999;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1300(C1316 c1316, AbstractC3902 abstractC3902) {
        super(abstractC3902);
        this.f4999 = c1316;
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        this.f4997 = obj;
        this.f4998 |= Integer.MIN_VALUE;
        Object m3919 = C1316.m3919(this.f4999, this);
        return m3919 == EnumC4532.f16960 ? m3919 : new C1309(m3919);
    }
}
