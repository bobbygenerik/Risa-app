package p017;

import com.google.android.gms.internal.measurement.ᵎ;
import j$.util.Objects;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* renamed from: ʼʻ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0972 extends AbstractSet {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f3932;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C0944 f3933;

    public /* synthetic */ C0972(C0944 c0944, int i) {
        this.f3932 = i;
        this.f3933 = c0944;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        switch (this.f3932) {
            case 0:
                this.f3933.clear();
                return;
            default:
                this.f3933.clear();
                return;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        switch (this.f3932) {
            case 0:
                C0944 c0944 = this.f3933;
                Map m3212 = c0944.m3212();
                if (m3212 != null) {
                    return m3212.entrySet().contains(obj);
                }
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    int m3215 = c0944.m3215(entry.getKey());
                    if (m3215 != -1 && ᵎ.ᵎﹶ(c0944.m3216()[m3215], entry.getValue())) {
                        return true;
                    }
                }
                return false;
            default:
                return this.f3933.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f3932) {
            case 0:
                C0944 c0944 = this.f3933;
                Map m3212 = c0944.m3212();
                return m3212 != null ? m3212.entrySet().iterator() : new C0977(c0944, 1);
            default:
                C0944 c09442 = this.f3933;
                Map m32122 = c09442.m3212();
                return m32122 != null ? m32122.keySet().iterator() : new C0977(c09442, 0);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        switch (this.f3932) {
            case 0:
                C0944 c0944 = this.f3933;
                Map m3212 = c0944.m3212();
                if (m3212 != null) {
                    return m3212.entrySet().remove(obj);
                }
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    if (!c0944.m3217()) {
                        int m3214 = c0944.m3214();
                        Object key = entry.getKey();
                        Object value = entry.getValue();
                        Object obj2 = c0944.f3870;
                        Objects.requireNonNull(obj2);
                        int m3284 = AbstractC1004.m3284(key, value, m3214, obj2, c0944.m3211(), c0944.m3213(), c0944.m3216());
                        if (m3284 != -1) {
                            c0944.m3220(m3284, m3214);
                            c0944.f3873--;
                            c0944.f3876 += 32;
                            return true;
                        }
                    }
                }
                return false;
            default:
                C0944 c09442 = this.f3933;
                Map m32122 = c09442.m3212();
                return m32122 != null ? m32122.keySet().remove(obj) : c09442.m3218(obj) != C0944.f3868;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.f3932) {
            case 0:
                return this.f3933.size();
            default:
                return this.f3933.size();
        }
    }
}
