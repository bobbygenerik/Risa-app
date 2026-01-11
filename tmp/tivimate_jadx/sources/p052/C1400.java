package p052;

import java.util.Map;

/* renamed from: ʽᴵ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1400 implements Map.Entry {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C1400 f5480;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C1400 f5481;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C1400 f5482;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public Object f5483;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Object f5484;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f5485;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C1400 f5486;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C1400 f5487;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f5488;

    public C1400() {
        this.f5484 = null;
        this.f5485 = -1;
        this.f5487 = this;
        this.f5482 = this;
    }

    public C1400(C1400 c1400, Object obj, int i, C1400 c14002, C1400 c14003) {
        this.f5481 = c1400;
        this.f5484 = obj;
        this.f5485 = i;
        this.f5488 = 1;
        this.f5482 = c14002;
        this.f5487 = c14003;
        c14003.f5482 = this;
        c14002.f5487 = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.f5484;
            if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                Object obj3 = this.f5483;
                if (obj3 == null) {
                    if (entry.getValue() == null) {
                        return true;
                    }
                } else if (obj3.equals(entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f5484;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f5483;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Object obj = this.f5484;
        int hashCode = obj == null ? 0 : obj.hashCode();
        Object obj2 = this.f5483;
        return (obj2 != null ? obj2.hashCode() : 0) ^ hashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        Object obj2 = this.f5483;
        this.f5483 = obj;
        return obj2;
    }

    public final String toString() {
        return this.f5484 + "=" + this.f5483;
    }
}
