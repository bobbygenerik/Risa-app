package p041;

import p316.AbstractC3902;
import p373.EnumC4532;

/* renamed from: ʽʿ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1304 extends AbstractC3902 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public /* synthetic */ Object f5003;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f5004;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ C1316 f5005;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1304(C1316 c1316, AbstractC3902 abstractC3902) {
        super(abstractC3902);
        this.f5005 = c1316;
    }

    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    public final Object mo3389(Object obj) {
        this.f5003 = obj;
        this.f5004 |= Integer.MIN_VALUE;
        Object m3923 = this.f5005.m3923(null, 0, 0L, this);
        return m3923 == EnumC4532.f16960 ? m3923 : new C1309(m3923);
    }
}
