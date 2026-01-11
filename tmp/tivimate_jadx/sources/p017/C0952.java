package p017;

import com.google.android.gms.internal.measurement.ᵎ;
import java.util.Map;

/* renamed from: ʼʻ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0952 extends AbstractC0964 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C0944 f3897;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f3898;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f3899;

    public C0952(C0944 c0944, int i) {
        this.f3897 = c0944;
        Object obj = C0944.f3868;
        this.f3898 = c0944.m3213()[i];
        this.f3899 = i;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f3898;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        C0944 c0944 = this.f3897;
        Map m3212 = c0944.m3212();
        if (m3212 != null) {
            return m3212.get(this.f3898);
        }
        m3240();
        int i = this.f3899;
        if (i == -1) {
            return null;
        }
        return c0944.m3216()[i];
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        C0944 c0944 = this.f3897;
        Map m3212 = c0944.m3212();
        Object obj2 = this.f3898;
        if (m3212 != null) {
            return m3212.put(obj2, obj);
        }
        m3240();
        int i = this.f3899;
        if (i == -1) {
            c0944.put(obj2, obj);
            return null;
        }
        Object obj3 = c0944.m3216()[i];
        c0944.m3216()[this.f3899] = obj;
        return obj3;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3240() {
        int i = this.f3899;
        Object obj = this.f3898;
        C0944 c0944 = this.f3897;
        if (i != -1 && i < c0944.size()) {
            if (ᵎ.ᵎﹶ(obj, c0944.m3213()[this.f3899])) {
                return;
            }
        }
        Object obj2 = C0944.f3868;
        this.f3899 = c0944.m3215(obj);
    }
}
