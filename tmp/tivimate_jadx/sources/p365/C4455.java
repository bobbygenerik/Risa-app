package p365;

import java.util.Map;

/* renamed from: ᵔﹳ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4455 implements Map.Entry {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C4455 f16674;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f16675;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C4455 f16676;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f16677;

    public C4455(Object obj, Object obj2) {
        this.f16675 = obj;
        this.f16677 = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C4455)) {
            return false;
        }
        C4455 c4455 = (C4455) obj;
        return this.f16675.equals(c4455.f16675) && this.f16677.equals(c4455.f16677);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f16675;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f16677;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        return this.f16675.hashCode() ^ this.f16677.hashCode();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException("An entry modification is not supported");
    }

    public final String toString() {
        return this.f16675 + "=" + this.f16677;
    }
}
