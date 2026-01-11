package p433;

import java.util.List;
import p047.AbstractC1357;
import p372.AbstractC4524;

/* renamed from: ﹶˎ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5126 extends AbstractC4524 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final List f19327;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final long f19328;

    public C5126(long j, List list) {
        super(0L, list.size() - 1);
        this.f19328 = j;
        this.f19327 = list;
    }

    @Override // p372.InterfaceC4518
    /* renamed from: ʽ */
    public final long mo7009() {
        m9099();
        return this.f19328 + ((AbstractC1357) this.f19327.get((int) this.f16941)).f5234;
    }

    @Override // p372.InterfaceC4518
    /* renamed from: ﹳٴ */
    public final long mo7010() {
        m9099();
        AbstractC1357 abstractC1357 = (AbstractC1357) this.f19327.get((int) this.f16941);
        return this.f19328 + abstractC1357.f5234 + abstractC1357.f5226;
    }
}
