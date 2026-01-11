package p017;

import com.google.android.gms.internal.measurement.ᵎ;
import com.google.android.gms.internal.play_billing.י;
import j$.util.Objects;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* renamed from: ʼʻ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0944 extends AbstractMap implements Serializable {

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final Object f3868 = new Object();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public transient Object[] f3869;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public transient Object f3870;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public transient Object[] f3871;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public transient C0972 f3872;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public transient int f3873;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public transient C0972 f3874;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public transient int[] f3875;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public transient int f3876;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public transient C0995 f3877;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractMap, ʼʻ.ʻٴ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C0944 m3209(int i) {
        ?? abstractMap = new AbstractMap();
        י.ﾞᴵ("Expected size must be >= 0", i >= 0);
        abstractMap.f3876 = Math.min(Math.max(i, 1), 1073741823);
        return abstractMap;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractMap, ʼʻ.ʻٴ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C0944 m3210() {
        ?? abstractMap = new AbstractMap();
        abstractMap.f3876 = Math.min(Math.max(3, 1), 1073741823);
        return abstractMap;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (m3217()) {
            return;
        }
        this.f3876 += 32;
        Map m3212 = m3212();
        if (m3212 != null) {
            this.f3876 = Math.min(Math.max(size(), 3), 1073741823);
            m3212.clear();
            this.f3870 = null;
            this.f3873 = 0;
            return;
        }
        Arrays.fill(m3213(), 0, this.f3873, (Object) null);
        Arrays.fill(m3216(), 0, this.f3873, (Object) null);
        Object obj = this.f3870;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(m3211(), 0, this.f3873, 0);
        this.f3873 = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map m3212 = m3212();
        return m3212 != null ? m3212.containsKey(obj) : m3215(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map m3212 = m3212();
        if (m3212 != null) {
            return m3212.containsValue(obj);
        }
        for (int i = 0; i < this.f3873; i++) {
            if (ᵎ.ᵎﹶ(obj, m3216()[i])) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        C0972 c0972 = this.f3872;
        if (c0972 != null) {
            return c0972;
        }
        C0972 c09722 = new C0972(this, 0);
        this.f3872 = c09722;
        return c09722;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Map m3212 = m3212();
        if (m3212 != null) {
            return m3212.get(obj);
        }
        int m3215 = m3215(obj);
        if (m3215 == -1) {
            return null;
        }
        return m3216()[m3215];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        C0972 c0972 = this.f3874;
        if (c0972 != null) {
            return c0972;
        }
        C0972 c09722 = new C0972(this, 1);
        this.f3874 = c09722;
        return c09722;
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x00eb  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x00fe -> B:43:0x00e4). Please report as a decompilation issue!!! */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object put(java.lang.Object r23, java.lang.Object r24) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p017.C0944.put(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        Map m3212 = m3212();
        if (m3212 != null) {
            return m3212.remove(obj);
        }
        Object m3218 = m3218(obj);
        if (m3218 == f3868) {
            return null;
        }
        return m3218;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map m3212 = m3212();
        return m3212 != null ? m3212.size() : this.f3873;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        C0995 c0995 = this.f3877;
        if (c0995 != null) {
            return c0995;
        }
        C0995 c09952 = new C0995(1, this);
        this.f3877 = c09952;
        return c09952;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int[] m3211() {
        int[] iArr = this.f3875;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Map m3212() {
        Object obj = this.f3870;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final Object[] m3213() {
        Object[] objArr = this.f3869;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m3214() {
        return (1 << (this.f3876 & 31)) - 1;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int m3215(Object obj) {
        if (m3217()) {
            return -1;
        }
        int m3295 = AbstractC1004.m3295(obj);
        int m3214 = m3214();
        Object obj2 = this.f3870;
        Objects.requireNonNull(obj2);
        int m3287 = AbstractC1004.m3287(m3295 & m3214, obj2);
        if (m3287 == 0) {
            return -1;
        }
        int i = ~m3214;
        int i2 = m3295 & i;
        do {
            int i3 = m3287 - 1;
            int i4 = m3211()[i3];
            if ((i4 & i) == i2 && ᵎ.ᵎﹶ(obj, m3213()[i3])) {
                return i3;
            }
            m3287 = i4 & m3214;
        } while (m3287 != 0);
        return -1;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final Object[] m3216() {
        Object[] objArr = this.f3871;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m3217() {
        return this.f3870 == null;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final Object m3218(Object obj) {
        if (!m3217()) {
            int m3214 = m3214();
            Object obj2 = this.f3870;
            Objects.requireNonNull(obj2);
            int m3284 = AbstractC1004.m3284(obj, null, m3214, obj2, m3211(), m3213(), null);
            if (m3284 != -1) {
                Object obj3 = m3216()[m3284];
                m3220(m3284, m3214);
                this.f3873--;
                this.f3876 += 32;
                return obj3;
            }
        }
        return f3868;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int m3219(int i, int i2, int i3, int i4) {
        Object m3286 = AbstractC1004.m3286(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            AbstractC1004.m3285(i3 & i5, i4 + 1, m3286);
        }
        Object obj = this.f3870;
        Objects.requireNonNull(obj);
        int[] m3211 = m3211();
        for (int i6 = 0; i6 <= i; i6++) {
            int m3287 = AbstractC1004.m3287(i6, obj);
            while (m3287 != 0) {
                int i7 = m3287 - 1;
                int i8 = m3211[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int m32872 = AbstractC1004.m3287(i10, m3286);
                AbstractC1004.m3285(i10, m3287, m3286);
                m3211[i7] = AbstractC1004.m3283(i9, m32872, i5);
                m3287 = i8 & i;
            }
        }
        this.f3870 = m3286;
        this.f3876 = AbstractC1004.m3283(this.f3876, 32 - Integer.numberOfLeadingZeros(i5), 31);
        return i5;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m3220(int i, int i2) {
        Object obj = this.f3870;
        Objects.requireNonNull(obj);
        int[] m3211 = m3211();
        Object[] m3213 = m3213();
        Object[] m3216 = m3216();
        int size = size();
        int i3 = size - 1;
        if (i >= i3) {
            m3213[i] = null;
            m3216[i] = null;
            m3211[i] = 0;
            return;
        }
        Object obj2 = m3213[i3];
        m3213[i] = obj2;
        m3216[i] = m3216[i3];
        m3213[i3] = null;
        m3216[i3] = null;
        m3211[i] = m3211[i3];
        m3211[i3] = 0;
        int m3295 = AbstractC1004.m3295(obj2) & i2;
        int m3287 = AbstractC1004.m3287(m3295, obj);
        if (m3287 == size) {
            AbstractC1004.m3285(m3295, i + 1, obj);
            return;
        }
        while (true) {
            int i4 = m3287 - 1;
            int i5 = m3211[i4];
            int i6 = i5 & i2;
            if (i6 == size) {
                m3211[i4] = AbstractC1004.m3283(i5, i + 1, i2);
                return;
            }
            m3287 = i6;
        }
    }
}
