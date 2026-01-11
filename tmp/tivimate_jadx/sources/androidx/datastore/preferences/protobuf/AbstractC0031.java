package androidx.datastore.preferences.protobuf;

/* renamed from: androidx.datastore.preferences.protobuf.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0031 implements Cloneable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC0003 f424;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public AbstractC0003 f425;

    public AbstractC0031(AbstractC0003 abstractC0003) {
        this.f424 = abstractC0003;
        if (abstractC0003.m151()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f425 = abstractC0003.m148();
    }

    public final Object clone() {
        AbstractC0031 abstractC0031 = (AbstractC0031) this.f424.mo149(5);
        abstractC0031.f425 = m243();
        return abstractC0031;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m242() {
        if (this.f425.m151()) {
            return;
        }
        AbstractC0003 m148 = this.f424.m148();
        AbstractC0003 abstractC0003 = this.f425;
        C0034 c0034 = C0034.f426;
        c0034.getClass();
        c0034.m254(m148.getClass()).mo177(m148, abstractC0003);
        this.f425 = m148;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC0003 m243() {
        if (!this.f425.m151()) {
            return this.f425;
        }
        AbstractC0003 abstractC0003 = this.f425;
        abstractC0003.getClass();
        C0034 c0034 = C0034.f426;
        c0034.getClass();
        c0034.m254(abstractC0003.getClass()).mo176(abstractC0003);
        abstractC0003.m152();
        return this.f425;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0003 m244() {
        AbstractC0003 m243 = m243();
        m243.getClass();
        if (AbstractC0003.m147(m243, true)) {
            return m243;
        }
        throw new UninitializedMessageException();
    }
}
