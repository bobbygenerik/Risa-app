package p391;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import p152.AbstractC2444;
import p386.InterfaceC4613;
import ʽٴ.ˈ;

/* renamed from: ⁱˏ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4641 implements Map, Serializable, InterfaceC4613 {

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public static final C4641 f17330;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int[] f17331;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Object[] f17332;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f17333;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int[] f17334;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public int f17335;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f17336;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C4637 f17337;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f17338;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object[] f17339;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f17340;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public C4638 f17341;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f17342;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public C4637 f17343;

    static {
        C4641 c4641 = new C4641(0);
        c4641.f17333 = true;
        f17330 = c4641;
    }

    public C4641() {
        this(8);
    }

    public C4641(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("capacity must be non-negative.");
        }
        Object[] objArr = new Object[i];
        int[] iArr = new int[i];
        int highestOneBit = Integer.highestOneBit((i < 1 ? 1 : i) * 3);
        this.f17332 = objArr;
        this.f17339 = null;
        this.f17331 = iArr;
        this.f17334 = new int[highestOneBit];
        this.f17340 = 2;
        this.f17336 = 0;
        this.f17338 = Integer.numberOfLeadingZeros(highestOneBit) + 1;
    }

    @Override // java.util.Map
    public final void clear() {
        m9207();
        int i = this.f17336 - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.f17331;
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    this.f17334[i3] = 0;
                    iArr[i2] = -1;
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        ˈ.ʾᵎ(this.f17332, 0, this.f17336);
        Object[] objArr = this.f17339;
        if (objArr != null) {
            ˈ.ʾᵎ(objArr, 0, this.f17336);
        }
        this.f17342 = 0;
        this.f17336 = 0;
        this.f17335++;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return m9214(obj) >= 0;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        int i;
        int i2 = this.f17336;
        while (true) {
            i = -1;
            i2--;
            if (i2 >= 0) {
                if (this.f17331[i2] >= 0 && AbstractC2444.m5562(this.f17339[i2], obj)) {
                    i = i2;
                    break;
                }
            } else {
                break;
            }
        }
        return i >= 0;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        C4637 c4637 = this.f17343;
        if (c4637 != null) {
            return c4637;
        }
        C4637 c46372 = new C4637(this, 0);
        this.f17343 = c46372;
        return c46372;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        boolean z;
        if (obj != this) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (this.f17342 == map.size()) {
                    for (Object obj2 : map.entrySet()) {
                        if (obj2 != null) {
                            try {
                                Map.Entry entry = (Map.Entry) obj2;
                                int m9214 = m9214(entry.getKey());
                                if (!(m9214 < 0 ? false : AbstractC2444.m5562(this.f17339[m9214], entry.getValue()))) {
                                }
                            } catch (ClassCastException unused) {
                            }
                        }
                        z = false;
                    }
                    z = true;
                    if (z) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int m9214 = m9214(obj);
        if (m9214 < 0) {
            return null;
        }
        return this.f17339[m9214];
    }

    @Override // java.util.Map
    public final int hashCode() {
        C4635 c4635 = new C4635(this, 0);
        int i = 0;
        while (c4635.hasNext()) {
            int i2 = c4635.f8313;
            C4641 c4641 = (C4641) c4635.f8314;
            if (i2 >= c4641.f17336) {
                throw new NoSuchElementException();
            }
            c4635.f8313 = i2 + 1;
            c4635.f8315 = i2;
            Object obj = c4641.f17332[i2];
            int hashCode = obj != null ? obj.hashCode() : 0;
            Object obj2 = c4641.f17339[c4635.f8315];
            int hashCode2 = obj2 != null ? obj2.hashCode() : 0;
            c4635.m5089();
            i += hashCode ^ hashCode2;
        }
        return i;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f17342 == 0;
    }

    @Override // java.util.Map
    public final Set keySet() {
        C4637 c4637 = this.f17337;
        if (c4637 != null) {
            return c4637;
        }
        C4637 c46372 = new C4637(this, 1);
        this.f17337 = c46372;
        return c46372;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        m9207();
        int m9213 = m9213(obj);
        Object[] objArr = this.f17339;
        if (objArr == null) {
            int length = this.f17332.length;
            if (length < 0) {
                throw new IllegalArgumentException("capacity must be non-negative.");
            }
            objArr = new Object[length];
            this.f17339 = objArr;
        }
        if (m9213 >= 0) {
            objArr[m9213] = obj2;
            return null;
        }
        int i = (-m9213) - 1;
        Object obj3 = objArr[i];
        objArr[i] = obj2;
        return obj3;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        m9207();
        Set<Map.Entry> entrySet = map.entrySet();
        if (entrySet.isEmpty()) {
            return;
        }
        m9209(entrySet.size());
        for (Map.Entry entry : entrySet) {
            int m9213 = m9213(entry.getKey());
            Object[] objArr = this.f17339;
            if (objArr == null) {
                int length = this.f17332.length;
                if (length < 0) {
                    throw new IllegalArgumentException("capacity must be non-negative.");
                }
                objArr = new Object[length];
                this.f17339 = objArr;
            }
            if (m9213 >= 0) {
                objArr[m9213] = entry.getValue();
            } else {
                int i = (-m9213) - 1;
                if (!AbstractC2444.m5562(entry.getValue(), objArr[i])) {
                    objArr[i] = entry.getValue();
                }
            }
        }
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        m9207();
        int m9214 = m9214(obj);
        if (m9214 < 0) {
            return null;
        }
        Object obj2 = this.f17339[m9214];
        m9206(m9214);
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return this.f17342;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.f17342 * 3) + 2);
        sb.append("{");
        int i = 0;
        C4635 c4635 = new C4635(this, 0);
        while (c4635.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            int i2 = c4635.f8313;
            C4641 c4641 = (C4641) c4635.f8314;
            if (i2 >= c4641.f17336) {
                throw new NoSuchElementException();
            }
            c4635.f8313 = i2 + 1;
            c4635.f8315 = i2;
            Object obj = c4641.f17332[i2];
            if (obj == c4641) {
                sb.append("(this Map)");
            } else {
                sb.append(obj);
            }
            sb.append('=');
            Object obj2 = c4641.f17339[c4635.f8315];
            if (obj2 == c4641) {
                sb.append("(this Map)");
            } else {
                sb.append(obj2);
            }
            c4635.m5089();
            i++;
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        C4638 c4638 = this.f17341;
        if (c4638 != null) {
            return c4638;
        }
        C4638 c46382 = new C4638(this);
        this.f17341 = c46382;
        return c46382;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0063 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:25:? A[LOOP:0: B:8:0x001f->B:25:?, LOOP_END, SYNTHETIC] */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9206(int r12) {
        /*
            r11 = this;
            java.lang.Object[] r0 = r11.f17332
            r1 = 0
            r0[r12] = r1
            java.lang.Object[] r0 = r11.f17339
            if (r0 == 0) goto Lb
            r0[r12] = r1
        Lb:
            int[] r0 = r11.f17331
            r0 = r0[r12]
            int r1 = r11.f17340
            int r1 = r1 * 2
            int[] r2 = r11.f17334
            int r2 = r2.length
            int r2 = r2 / 2
            if (r1 <= r2) goto L1b
            r1 = r2
        L1b:
            r2 = 0
            r3 = r1
            r4 = r2
            r1 = r0
        L1f:
            int r5 = r0 + (-1)
            if (r0 != 0) goto L29
            int[] r0 = r11.f17334
            int r0 = r0.length
            int r0 = r0 + (-1)
            goto L2a
        L29:
            r0 = r5
        L2a:
            int r4 = r4 + 1
            int r5 = r11.f17340
            r6 = -1
            if (r4 <= r5) goto L36
            int[] r0 = r11.f17334
            r0[r1] = r2
            goto L67
        L36:
            int[] r5 = r11.f17334
            r7 = r5[r0]
            if (r7 != 0) goto L3f
            r5[r1] = r2
            goto L67
        L3f:
            if (r7 >= 0) goto L46
            r5[r1] = r6
        L43:
            r1 = r0
            r4 = r2
            goto L60
        L46:
            java.lang.Object[] r5 = r11.f17332
            int r8 = r7 + (-1)
            r5 = r5[r8]
            int r5 = r11.m9210(r5)
            int r5 = r5 - r0
            int[] r9 = r11.f17334
            int r10 = r9.length
            int r10 = r10 + (-1)
            r5 = r5 & r10
            if (r5 < r4) goto L60
            r9[r1] = r7
            int[] r4 = r11.f17331
            r4[r8] = r1
            goto L43
        L60:
            int r3 = r3 + r6
            if (r3 >= 0) goto L1f
            int[] r0 = r11.f17334
            r0[r1] = r6
        L67:
            int[] r0 = r11.f17331
            r0[r12] = r6
            int r12 = r11.f17342
            int r12 = r12 + r6
            r11.f17342 = r12
            int r12 = r11.f17335
            int r12 = r12 + 1
            r11.f17335 = r12
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p391.C4641.m9206(int):void");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m9207() {
        if (this.f17333) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m9208(boolean z) {
        int i;
        Object[] objArr = this.f17339;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.f17336;
            if (i2 >= i) {
                break;
            }
            int[] iArr = this.f17331;
            int i4 = iArr[i2];
            if (i4 >= 0) {
                Object[] objArr2 = this.f17332;
                objArr2[i3] = objArr2[i2];
                if (objArr != null) {
                    objArr[i3] = objArr[i2];
                }
                if (z) {
                    iArr[i3] = i4;
                    this.f17334[i4] = i3 + 1;
                }
                i3++;
            }
            i2++;
        }
        ˈ.ʾᵎ(this.f17332, i3, i);
        if (objArr != null) {
            ˈ.ʾᵎ(objArr, i3, this.f17336);
        }
        this.f17336 = i3;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m9209(int i) {
        Object[] objArr = this.f17332;
        int length = objArr.length;
        int i2 = this.f17336;
        int i3 = length - i2;
        int i4 = i2 - this.f17342;
        if (i3 < i && i3 + i4 >= i && i4 >= objArr.length / 4) {
            m9208(true);
            return;
        }
        int i5 = i2 + i;
        if (i5 < 0) {
            throw new OutOfMemoryError();
        }
        if (i5 > objArr.length) {
            int length2 = objArr.length;
            int i6 = length2 + (length2 >> 1);
            if (i6 - i5 < 0) {
                i6 = i5;
            }
            if (i6 - 2147483639 > 0) {
                i6 = i5 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
            }
            this.f17332 = Arrays.copyOf(objArr, i6);
            Object[] objArr2 = this.f17339;
            this.f17339 = objArr2 != null ? Arrays.copyOf(objArr2, i6) : null;
            this.f17331 = Arrays.copyOf(this.f17331, i6);
            int highestOneBit = Integer.highestOneBit((i6 >= 1 ? i6 : 1) * 3);
            if (highestOneBit > this.f17334.length) {
                m9211(highestOneBit);
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int m9210(Object obj) {
        return ((obj != null ? obj.hashCode() : 0) * (-1640531527)) >>> this.f17338;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0032, code lost:
    
        r3[r0] = r6;
        r5.f17331[r2] = r0;
        r2 = r6;
     */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9211(int r6) {
        /*
            r5 = this;
            int r0 = r5.f17335
            int r0 = r0 + 1
            r5.f17335 = r0
            int r0 = r5.f17336
            int r1 = r5.f17342
            r2 = 0
            if (r0 <= r1) goto L10
            r5.m9208(r2)
        L10:
            int[] r0 = new int[r6]
            r5.f17334 = r0
            int r6 = java.lang.Integer.numberOfLeadingZeros(r6)
            int r6 = r6 + 1
            r5.f17338 = r6
        L1c:
            int r6 = r5.f17336
            if (r2 >= r6) goto L50
            int r6 = r2 + 1
            java.lang.Object[] r0 = r5.f17332
            r0 = r0[r2]
            int r0 = r5.m9210(r0)
            int r1 = r5.f17340
        L2c:
            int[] r3 = r5.f17334
            r4 = r3[r0]
            if (r4 != 0) goto L3a
            r3[r0] = r6
            int[] r1 = r5.f17331
            r1[r2] = r0
            r2 = r6
            goto L1c
        L3a:
            int r1 = r1 + (-1)
            if (r1 < 0) goto L48
            int r4 = r0 + (-1)
            if (r0 != 0) goto L46
            int r0 = r3.length
            int r0 = r0 + (-1)
            goto L2c
        L46:
            r0 = r4
            goto L2c
        L48:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"
            r6.<init>(r0)
            throw r6
        L50:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p391.C4641.m9211(int):void");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4641 m9212() {
        m9207();
        this.f17333 = true;
        return this.f17342 > 0 ? this : f17330;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m9213(Object obj) {
        m9207();
        while (true) {
            int m9210 = m9210(obj);
            int i = this.f17340 * 2;
            int length = this.f17334.length / 2;
            if (i > length) {
                i = length;
            }
            int i2 = 0;
            while (true) {
                int[] iArr = this.f17334;
                int i3 = iArr[m9210];
                if (i3 <= 0) {
                    int i4 = this.f17336;
                    Object[] objArr = this.f17332;
                    if (i4 < objArr.length) {
                        int i5 = i4 + 1;
                        this.f17336 = i5;
                        objArr[i4] = obj;
                        this.f17331[i4] = m9210;
                        iArr[m9210] = i5;
                        this.f17342++;
                        this.f17335++;
                        if (i2 > this.f17340) {
                            this.f17340 = i2;
                        }
                        return i4;
                    }
                    m9209(1);
                } else {
                    if (AbstractC2444.m5562(this.f17332[i3 - 1], obj)) {
                        return -i3;
                    }
                    i2++;
                    if (i2 > i) {
                        m9211(this.f17334.length * 2);
                        break;
                    }
                    m9210 = m9210 == 0 ? this.f17334.length - 1 : m9210 - 1;
                }
            }
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int m9214(Object obj) {
        int m9210 = m9210(obj);
        int i = this.f17340;
        while (true) {
            int i2 = this.f17334[m9210];
            if (i2 == 0) {
                return -1;
            }
            if (i2 > 0) {
                int i3 = i2 - 1;
                if (AbstractC2444.m5562(this.f17332[i3], obj)) {
                    return i3;
                }
            }
            i--;
            if (i < 0) {
                return -1;
            }
            m9210 = m9210 == 0 ? this.f17334.length - 1 : m9210 - 1;
        }
    }
}
