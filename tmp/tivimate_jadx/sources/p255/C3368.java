package p255;

import java.util.Arrays;
import java.util.ConcurrentModificationException;
import java.util.Map;
import p152.AbstractC2444;
import p219.AbstractC3024;
import p430.AbstractC5096;

/* renamed from: יـ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C3368 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f13167;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int[] f13168;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object[] f13169;

    public C3368(int i) {
        this.f13168 = i == 0 ? AbstractC3024.f11537 : new int[i];
        this.f13169 = i == 0 ? AbstractC3024.f11536 : new Object[i << 1];
    }

    public void clear() {
        if (this.f13167 > 0) {
            this.f13168 = AbstractC3024.f11537;
            this.f13169 = AbstractC3024.f11536;
            this.f13167 = 0;
        }
        if (this.f13167 > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return m7221(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return m7224(obj) >= 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof C3368) {
                int i = this.f13167;
                if (i != ((C3368) obj).f13167) {
                    return false;
                }
                C3368 c3368 = (C3368) obj;
                for (int i2 = 0; i2 < i; i2++) {
                    Object m7225 = m7225(i2);
                    Object m7220 = m7220(i2);
                    Object obj2 = c3368.get(m7225);
                    if (m7220 == null) {
                        if (obj2 != null || !c3368.containsKey(m7225)) {
                            return false;
                        }
                    } else if (!m7220.equals(obj2)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(obj instanceof Map) || this.f13167 != ((Map) obj).size()) {
                return false;
            }
            int i3 = this.f13167;
            for (int i4 = 0; i4 < i3; i4++) {
                Object m72252 = m7225(i4);
                Object m72202 = m7220(i4);
                Object obj3 = ((Map) obj).get(m72252);
                if (m72202 == null) {
                    if (obj3 != null || !((Map) obj).containsKey(m72252)) {
                        return false;
                    }
                } else if (!m72202.equals(obj3)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public Object get(Object obj) {
        int m7221 = m7221(obj);
        if (m7221 >= 0) {
            return this.f13169[(m7221 << 1) + 1];
        }
        return null;
    }

    public final Object getOrDefault(Object obj, Object obj2) {
        int m7221 = m7221(obj);
        return m7221 >= 0 ? this.f13169[(m7221 << 1) + 1] : obj2;
    }

    public int hashCode() {
        int[] iArr = this.f13168;
        Object[] objArr = this.f13169;
        int i = this.f13167;
        int i2 = 1;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            Object obj = objArr[i2];
            i4 += (obj != null ? obj.hashCode() : 0) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return i4;
    }

    public final boolean isEmpty() {
        return this.f13167 <= 0;
    }

    public Object put(Object obj, Object obj2) {
        int i = this.f13167;
        int hashCode = obj != null ? obj.hashCode() : 0;
        int m7219 = obj != null ? m7219(hashCode, obj) : m7222();
        if (m7219 >= 0) {
            int i2 = (m7219 << 1) + 1;
            Object[] objArr = this.f13169;
            Object obj3 = objArr[i2];
            objArr[i2] = obj2;
            return obj3;
        }
        int i3 = ~m7219;
        int[] iArr = this.f13168;
        if (i >= iArr.length) {
            int i4 = 8;
            if (i >= 8) {
                i4 = (i >> 1) + i;
            } else if (i < 4) {
                i4 = 4;
            }
            this.f13168 = Arrays.copyOf(iArr, i4);
            this.f13169 = Arrays.copyOf(this.f13169, i4 << 1);
            if (i != this.f13167) {
                throw new ConcurrentModificationException();
            }
        }
        if (i3 < i) {
            int[] iArr2 = this.f13168;
            int i5 = i3 + 1;
            AbstractC5096.m9998(i5, i3, i, iArr2, iArr2);
            Object[] objArr2 = this.f13169;
            AbstractC5096.m10002(i5 << 1, i3 << 1, this.f13167 << 1, objArr2, objArr2);
        }
        int i6 = this.f13167;
        if (i == i6) {
            int[] iArr3 = this.f13168;
            if (i3 < iArr3.length) {
                iArr3[i3] = hashCode;
                Object[] objArr3 = this.f13169;
                int i7 = i3 << 1;
                objArr3[i7] = obj;
                objArr3[i7 + 1] = obj2;
                this.f13167 = i6 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public final Object putIfAbsent(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 == null ? put(obj, obj2) : obj3;
    }

    public Object remove(Object obj) {
        int m7221 = m7221(obj);
        if (m7221 >= 0) {
            return mo4688(m7221);
        }
        return null;
    }

    public final boolean remove(Object obj, Object obj2) {
        int m7221 = m7221(obj);
        if (m7221 < 0 || !AbstractC2444.m5562(obj2, m7220(m7221))) {
            return false;
        }
        mo4688(m7221);
        return true;
    }

    public final Object replace(Object obj, Object obj2) {
        int m7221 = m7221(obj);
        if (m7221 >= 0) {
            return mo4686(m7221, obj2);
        }
        return null;
    }

    public final boolean replace(Object obj, Object obj2, Object obj3) {
        int m7221 = m7221(obj);
        if (m7221 < 0 || !AbstractC2444.m5562(obj2, m7220(m7221))) {
            return false;
        }
        mo4686(m7221, obj3);
        return true;
    }

    public final int size() {
        return this.f13167;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f13167 * 28);
        sb.append('{');
        int i = this.f13167;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object m7225 = m7225(i2);
            if (m7225 != sb) {
                sb.append(m7225);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object m7220 = m7220(i2);
            if (m7220 != sb) {
                sb.append(m7220);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: ʼˎ */
    public Object mo4686(int i, Object obj) {
        boolean z = false;
        if (i >= 0 && i < this.f13167) {
            z = true;
        }
        if (!z) {
            AbstractC3024.m6552("Expected index to be within 0..size()-1, but was " + i);
            throw null;
        }
        int i2 = (i << 1) + 1;
        Object[] objArr = this.f13169;
        Object obj2 = objArr[i2];
        objArr[i2] = obj;
        return obj2;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m7219(int i, Object obj) {
        int i2 = this.f13167;
        if (i2 == 0) {
            return -1;
        }
        int m6554 = AbstractC3024.m6554(this.f13168, i2, i);
        if (m6554 < 0 || AbstractC2444.m5562(obj, this.f13169[m6554 << 1])) {
            return m6554;
        }
        int i3 = m6554 + 1;
        while (i3 < i2 && this.f13168[i3] == i) {
            if (AbstractC2444.m5562(obj, this.f13169[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = m6554 - 1; i4 >= 0 && this.f13168[i4] == i; i4--) {
            if (AbstractC2444.m5562(obj, this.f13169[i4 << 1])) {
                return i4;
            }
        }
        return ~i3;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final Object m7220(int i) {
        boolean z = false;
        if (i >= 0 && i < this.f13167) {
            z = true;
        }
        if (z) {
            return this.f13169[(i << 1) + 1];
        }
        AbstractC3024.m6552("Expected index to be within 0..size()-1, but was " + i);
        throw null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m7221(Object obj) {
        return obj == null ? m7222() : m7219(obj.hashCode(), obj);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int m7222() {
        int i = this.f13167;
        if (i == 0) {
            return -1;
        }
        int m6554 = AbstractC3024.m6554(this.f13168, i, 0);
        if (m6554 < 0 || this.f13169[m6554 << 1] == null) {
            return m6554;
        }
        int i2 = m6554 + 1;
        while (i2 < i && this.f13168[i2] == 0) {
            if (this.f13169[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = m6554 - 1; i3 >= 0 && this.f13168[i3] == 0; i3--) {
            if (this.f13169[i3 << 1] == null) {
                return i3;
            }
        }
        return ~i2;
    }

    /* renamed from: ᵎﹶ */
    public void mo4687(C3359 c3359) {
        int i = c3359.f13167;
        m7223(this.f13167 + i);
        if (this.f13167 != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                put(c3359.m7225(i2), c3359.m7220(i2));
            }
        } else if (i > 0) {
            AbstractC5096.m9998(0, 0, i, c3359.f13168, this.f13168);
            AbstractC5096.m10002(0, 0, i << 1, c3359.f13169, this.f13169);
            this.f13167 = i;
        }
    }

    /* renamed from: ᵔᵢ */
    public Object mo4688(int i) {
        int i2;
        if (i < 0 || i >= (i2 = this.f13167)) {
            AbstractC3024.m6552("Expected index to be within 0..size()-1, but was " + i);
            throw null;
        }
        Object[] objArr = this.f13169;
        int i3 = i << 1;
        Object obj = objArr[i3 + 1];
        if (i2 <= 1) {
            clear();
            return obj;
        }
        int i4 = i2 - 1;
        int[] iArr = this.f13168;
        if (iArr.length <= 8 || i2 >= iArr.length / 3) {
            if (i < i4) {
                int i5 = i + 1;
                AbstractC5096.m9998(i, i5, i2, iArr, iArr);
                Object[] objArr2 = this.f13169;
                AbstractC5096.m10002(i3, i5 << 1, i2 << 1, objArr2, objArr2);
            }
            Object[] objArr3 = this.f13169;
            int i6 = i4 << 1;
            objArr3[i6] = null;
            objArr3[i6 + 1] = null;
        } else {
            int i7 = i2 > 8 ? i2 + (i2 >> 1) : 8;
            this.f13168 = Arrays.copyOf(iArr, i7);
            this.f13169 = Arrays.copyOf(this.f13169, i7 << 1);
            if (i2 != this.f13167) {
                throw new ConcurrentModificationException();
            }
            if (i > 0) {
                AbstractC5096.m9998(0, 0, i, iArr, this.f13168);
                AbstractC5096.m10002(0, 0, i3, objArr, this.f13169);
            }
            if (i < i4) {
                int i8 = i + 1;
                AbstractC5096.m9998(i, i8, i2, iArr, this.f13168);
                AbstractC5096.m10002(i3, i8 << 1, i2 << 1, objArr, this.f13169);
            }
        }
        if (i2 != this.f13167) {
            throw new ConcurrentModificationException();
        }
        this.f13167 = i4;
        return obj;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7223(int i) {
        int i2 = this.f13167;
        int[] iArr = this.f13168;
        if (iArr.length < i) {
            this.f13168 = Arrays.copyOf(iArr, i);
            this.f13169 = Arrays.copyOf(this.f13169, i * 2);
        }
        if (this.f13167 != i2) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m7224(Object obj) {
        int i = this.f13167 * 2;
        Object[] objArr = this.f13169;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Object m7225(int i) {
        boolean z = false;
        if (i >= 0 && i < this.f13167) {
            z = true;
        }
        if (z) {
            return this.f13169[i << 1];
        }
        AbstractC3024.m6552("Expected index to be within 0..size()-1, but was " + i);
        throw null;
    }
}
