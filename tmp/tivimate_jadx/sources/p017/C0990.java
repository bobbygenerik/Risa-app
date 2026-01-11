package p017;

import java.io.Serializable;

/* renamed from: ʼʻ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0990 extends AbstractC0964 implements Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f3971;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f3972;

    public C0990(Object obj, Object obj2) {
        this.f3971 = obj;
        this.f3972 = obj2;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f3971;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f3972;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
