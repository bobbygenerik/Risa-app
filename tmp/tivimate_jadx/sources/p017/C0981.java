package p017;

import java.io.Serializable;

/* renamed from: ʼʻ.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C0981 extends AbstractC0949 implements Serializable {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final transient C0987 f3953;

    public C0981(C0987 c0987, int i) {
        this.f3953 = c0987;
    }

    @Override // p017.AbstractC0965
    /* renamed from: ʽ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public AbstractC0996 mo3247() {
        return this.f3953;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC0993 m3252(String str) {
        AbstractC0993 abstractC0993 = (AbstractC0993) this.f3953.get(str);
        if (abstractC0993 != null) {
            return abstractC0993;
        }
        C0982 c0982 = AbstractC0993.f3977;
        return C0956.f3901;
    }

    @Override // p017.AbstractC0965
    /* renamed from: ⁱˊ */
    public final boolean mo3246(Object obj) {
        return obj != null && super.mo3246(obj);
    }
}
