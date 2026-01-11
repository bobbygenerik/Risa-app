package p420;

import j$.util.Objects;
import p055.AbstractC1445;
import p055.C1466;
import p055.C1467;

/* renamed from: ﹳᵢ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4962 extends AbstractC4940 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final Object f18486 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Object f18487;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object f18488;

    public C4962(AbstractC1445 abstractC1445, Object obj, Object obj2) {
        super(abstractC1445);
        this.f18487 = obj;
        this.f18488 = obj2;
    }

    @Override // p420.AbstractC4940, p055.AbstractC1445
    /* renamed from: ˉʿ */
    public final C1466 mo4221(int i, C1466 c1466, long j) {
        this.f18403.mo4221(i, c1466, j);
        if (Objects.equals(c1466.f5741, this.f18487)) {
            c1466.f5741 = C1466.f5726;
        }
        return c1466;
    }

    @Override // p420.AbstractC4940, p055.AbstractC1445
    /* renamed from: ⁱˊ */
    public final int mo4228(Object obj) {
        Object obj2;
        if (f18486.equals(obj) && (obj2 = this.f18488) != null) {
            obj = obj2;
        }
        return this.f18403.mo4228(obj);
    }

    @Override // p420.AbstractC4940, p055.AbstractC1445
    /* renamed from: ﾞʻ */
    public final Object mo4230(int i) {
        Object mo4230 = this.f18403.mo4230(i);
        return Objects.equals(mo4230, this.f18488) ? f18486 : mo4230;
    }

    @Override // p420.AbstractC4940, p055.AbstractC1445
    /* renamed from: ﾞᴵ */
    public final C1467 mo4231(int i, C1467 c1467, boolean z) {
        this.f18403.mo4231(i, c1467, z);
        if (Objects.equals(c1467.f5748, this.f18488) && z) {
            c1467.f5748 = f18486;
        }
        return c1467;
    }
}
