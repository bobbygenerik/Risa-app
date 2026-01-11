package p052;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Set;
import ʻٴ.ˑﹳ;

/* renamed from: ʽᴵ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1418 extends AbstractMap implements Serializable {

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final ˑﹳ f5550 = new ˑﹳ(2);

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public C1406 f5554;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public C1406 f5556;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f5553 = 0;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f5558 = 0;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Comparator f5552 = f5550;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C1400 f5551 = new C1400();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C1400[] f5557 = new C1400[16];

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f5555 = 12;

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Arrays.fill(this.f5557, (Object) null);
        this.f5553 = 0;
        this.f5558++;
        C1400 c1400 = this.f5551;
        C1400 c14002 = c1400.f5482;
        while (c14002 != c1400) {
            C1400 c14003 = c14002.f5482;
            c14002.f5487 = null;
            c14002.f5482 = null;
            c14002 = c14003;
        }
        c1400.f5487 = c1400;
        c1400.f5482 = c1400;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        C1400 c1400 = null;
        if (obj != null) {
            try {
                c1400 = m4172(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return c1400 != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        C1406 c1406 = this.f5556;
        if (c1406 != null) {
            return c1406;
        }
        C1406 c14062 = new C1406(this, 0);
        this.f5556 = c14062;
        return c14062;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(java.lang.Object r3) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L9
            r1 = 0
            ʽᴵ.ʻٴ r3 = r2.m4172(r3, r1)     // Catch: java.lang.ClassCastException -> L9
            goto La
        L9:
            r3 = r0
        La:
            if (r3 == 0) goto Lf
            java.lang.Object r3 = r3.f5483
            return r3
        Lf:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p052.C1418.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        C1406 c1406 = this.f5554;
        if (c1406 != null) {
            return c1406;
        }
        C1406 c14062 = new C1406(this, 1);
        this.f5554 = c14062;
        return c14062;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj == null) {
            throw new NullPointerException("key == null");
        }
        C1400 m4172 = m4172(obj, true);
        Object obj3 = m4172.f5483;
        m4172.f5483 = obj2;
        return obj3;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0012  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object remove(java.lang.Object r3) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L9
            r1 = 0
            ʽᴵ.ʻٴ r3 = r2.m4172(r3, r1)     // Catch: java.lang.ClassCastException -> L9
            goto La
        L9:
            r3 = r0
        La:
            if (r3 == 0) goto L10
            r1 = 1
            r2.m4168(r3, r1)
        L10:
            if (r3 == 0) goto L15
            java.lang.Object r3 = r3.f5483
            return r3
        L15:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p052.C1418.remove(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f5553;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4168(C1400 c1400, boolean z) {
        C1400 c14002;
        C1400 c14003;
        int i;
        if (z) {
            C1400 c14004 = c1400.f5487;
            c14004.f5482 = c1400.f5482;
            c1400.f5482.f5487 = c14004;
            c1400.f5487 = null;
            c1400.f5482 = null;
        }
        C1400 c14005 = c1400.f5486;
        C1400 c14006 = c1400.f5480;
        C1400 c14007 = c1400.f5481;
        int i2 = 0;
        if (c14005 == null || c14006 == null) {
            if (c14005 != null) {
                m4169(c1400, c14005);
                c1400.f5486 = null;
            } else if (c14006 != null) {
                m4169(c1400, c14006);
                c1400.f5480 = null;
            } else {
                m4169(c1400, null);
            }
            m4171(c14007, false);
            this.f5553--;
            this.f5558++;
            return;
        }
        if (c14005.f5488 > c14006.f5488) {
            C1400 c14008 = c14005.f5480;
            while (true) {
                C1400 c14009 = c14008;
                c14003 = c14005;
                c14005 = c14009;
                if (c14005 == null) {
                    break;
                } else {
                    c14008 = c14005.f5480;
                }
            }
        } else {
            C1400 c140010 = c14006.f5486;
            while (true) {
                c14002 = c14006;
                c14006 = c140010;
                if (c14006 == null) {
                    break;
                } else {
                    c140010 = c14006.f5486;
                }
            }
            c14003 = c14002;
        }
        m4168(c14003, false);
        C1400 c140011 = c1400.f5486;
        if (c140011 != null) {
            i = c140011.f5488;
            c14003.f5486 = c140011;
            c140011.f5481 = c14003;
            c1400.f5486 = null;
        } else {
            i = 0;
        }
        C1400 c140012 = c1400.f5480;
        if (c140012 != null) {
            i2 = c140012.f5488;
            c14003.f5480 = c140012;
            c140012.f5481 = c14003;
            c1400.f5480 = null;
        }
        c14003.f5488 = Math.max(i, i2) + 1;
        m4169(c1400, c14003);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m4169(C1400 c1400, C1400 c14002) {
        C1400 c14003 = c1400.f5481;
        c1400.f5481 = null;
        if (c14002 != null) {
            c14002.f5481 = c14003;
        }
        if (c14003 == null) {
            int i = c1400.f5485;
            this.f5557[i & (r0.length - 1)] = c14002;
        } else if (c14003.f5486 == c1400) {
            c14003.f5486 = c14002;
        } else {
            c14003.f5480 = c14002;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m4170(C1400 c1400) {
        C1400 c14002 = c1400.f5486;
        C1400 c14003 = c1400.f5480;
        C1400 c14004 = c14003.f5486;
        C1400 c14005 = c14003.f5480;
        c1400.f5480 = c14004;
        if (c14004 != null) {
            c14004.f5481 = c1400;
        }
        m4169(c1400, c14003);
        c14003.f5486 = c1400;
        c1400.f5481 = c14003;
        int max = Math.max(c14002 != null ? c14002.f5488 : 0, c14004 != null ? c14004.f5488 : 0) + 1;
        c1400.f5488 = max;
        c14003.f5488 = Math.max(max, c14005 != null ? c14005.f5488 : 0) + 1;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4171(C1400 c1400, boolean z) {
        while (c1400 != null) {
            C1400 c14002 = c1400.f5486;
            C1400 c14003 = c1400.f5480;
            int i = c14002 != null ? c14002.f5488 : 0;
            int i2 = c14003 != null ? c14003.f5488 : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                C1400 c14004 = c14003.f5486;
                C1400 c14005 = c14003.f5480;
                int i4 = (c14004 != null ? c14004.f5488 : 0) - (c14005 != null ? c14005.f5488 : 0);
                if (i4 != -1 && (i4 != 0 || z)) {
                    m4173(c14003);
                }
                m4170(c1400);
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                C1400 c14006 = c14002.f5486;
                C1400 c14007 = c14002.f5480;
                int i5 = (c14006 != null ? c14006.f5488 : 0) - (c14007 != null ? c14007.f5488 : 0);
                if (i5 != 1 && (i5 != 0 || z)) {
                    m4170(c14002);
                }
                m4173(c1400);
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                c1400.f5488 = i + 1;
                if (z) {
                    return;
                }
            } else {
                c1400.f5488 = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            c1400 = c1400.f5481;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1400 m4172(Object obj, boolean z) {
        int i;
        C1400 c1400;
        boolean z2;
        C1400 c14002;
        C1400 c14003;
        C1400 c14004;
        C1400 c14005;
        C1400 c14006;
        C1400[] c1400Arr = this.f5557;
        int hashCode = obj.hashCode();
        int i2 = hashCode ^ ((hashCode >>> 20) ^ (hashCode >>> 12));
        int i3 = ((i2 >>> 7) ^ i2) ^ (i2 >>> 4);
        boolean z3 = true;
        int length = i3 & (c1400Arr.length - 1);
        C1400 c14007 = c1400Arr[length];
        Comparator comparator = f5550;
        C1400 c14008 = null;
        Comparator comparator2 = this.f5552;
        if (c14007 != null) {
            Comparable comparable = comparator2 == comparator ? (Comparable) obj : null;
            while (true) {
                Object obj2 = c14007.f5484;
                i = comparable != null ? comparable.compareTo(obj2) : comparator2.compare(obj, obj2);
                if (i == 0) {
                    return c14007;
                }
                C1400 c14009 = i < 0 ? c14007.f5486 : c14007.f5480;
                if (c14009 == null) {
                    break;
                }
                c14007 = c14009;
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        C1400 c140010 = this.f5551;
        if (c14007 != null) {
            C1400 c140011 = c14007;
            c1400 = new C1400(c140011, obj, i3, c140010, c140010.f5487);
            if (i < 0) {
                c140011.f5486 = c1400;
            } else {
                c140011.f5480 = c1400;
            }
            m4171(c140011, true);
        } else {
            if (comparator2 == comparator && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            c1400 = new C1400(c14007, obj, i3, c140010, c140010.f5487);
            c1400Arr[length] = c1400;
        }
        int i4 = this.f5553;
        this.f5553 = i4 + 1;
        if (i4 > this.f5555) {
            C1400[] c1400Arr2 = this.f5557;
            int length2 = c1400Arr2.length;
            int i5 = length2 * 2;
            C1400[] c1400Arr3 = new C1400[i5];
            byte b = 0;
            C1417 c1417 = new C1417(b, 0);
            C1417 c14172 = new C1417((byte) 0, b);
            int i6 = 0;
            while (i6 < length2) {
                C1400 c140012 = c1400Arr2[i6];
                if (c140012 == null) {
                    z2 = z3;
                    c14003 = c14008;
                } else {
                    C1400 c140013 = c14008;
                    for (C1400 c140014 = c140012; c140014 != null; c140014 = c140014.f5486) {
                        c140014.f5481 = c140013;
                        c140013 = c140014;
                    }
                    int i7 = 0;
                    int i8 = 0;
                    while (true) {
                        if (c140013 != null) {
                            z2 = z3;
                            C1400 c140015 = c140013.f5481;
                            c140013.f5481 = c14008;
                            C1400 c140016 = c140013.f5480;
                            while (true) {
                                C1400 c140017 = c140016;
                                c14002 = c140015;
                                c140015 = c140017;
                                if (c140015 == null) {
                                    break;
                                }
                                c140015.f5481 = c14002;
                                c140016 = c140015.f5486;
                            }
                        } else {
                            C1400 c140018 = c140013;
                            c140013 = c14008;
                            c14002 = c140018;
                            z2 = z3;
                        }
                        if (c140013 == null) {
                            break;
                        }
                        if ((c140013.f5485 & length2) == 0) {
                            i7++;
                        } else {
                            i8++;
                        }
                        c140013 = c14002;
                        z3 = z2;
                        c14008 = null;
                    }
                    c1417.f5548 = ((Integer.highestOneBit(i7) * 2) - 1) - i7;
                    c1417.f5546 = 0;
                    c1417.f5545 = 0;
                    c14003 = null;
                    c1417.f5547 = null;
                    c14172.f5548 = ((Integer.highestOneBit(i8) * 2) - 1) - i8;
                    c14172.f5546 = 0;
                    c14172.f5545 = 0;
                    c14172.f5547 = null;
                    C1400 c140019 = null;
                    while (c140012 != null) {
                        c140012.f5481 = c140019;
                        C1400 c140020 = c140012;
                        c140012 = c140012.f5486;
                        c140019 = c140020;
                    }
                    while (true) {
                        if (c140019 != null) {
                            C1400 c140021 = c140019.f5481;
                            c140019.f5481 = null;
                            C1400 c140022 = c140019.f5480;
                            while (true) {
                                C1400 c140023 = c140022;
                                c14004 = c140021;
                                c140021 = c140023;
                                if (c140021 == null) {
                                    break;
                                }
                                c140021.f5481 = c14004;
                                c140022 = c140021.f5486;
                            }
                        } else {
                            c14004 = c140019;
                            c140019 = null;
                        }
                        if (c140019 == null) {
                            break;
                        }
                        if ((c140019.f5485 & length2) == 0) {
                            c1417.m4166(c140019);
                        } else {
                            c14172.m4166(c140019);
                        }
                        c140019 = c14004;
                    }
                    if (i7 > 0) {
                        c14005 = (C1400) c1417.f5547;
                        if (c14005.f5481 != null) {
                            throw new IllegalStateException();
                        }
                    } else {
                        c14005 = null;
                    }
                    c1400Arr3[i6] = c14005;
                    int i9 = i6 + length2;
                    if (i8 > 0) {
                        c14006 = (C1400) c14172.f5547;
                        if (c14006.f5481 != null) {
                            throw new IllegalStateException();
                        }
                    } else {
                        c14006 = null;
                    }
                    c1400Arr3[i9] = c14006;
                }
                i6++;
                c14008 = c14003;
                z3 = z2;
            }
            this.f5557 = c1400Arr3;
            this.f5555 = (i5 / 4) + (i5 / 2);
        }
        this.f5558++;
        return c1400;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m4173(C1400 c1400) {
        C1400 c14002 = c1400.f5486;
        C1400 c14003 = c1400.f5480;
        C1400 c14004 = c14002.f5486;
        C1400 c14005 = c14002.f5480;
        c1400.f5486 = c14005;
        if (c14005 != null) {
            c14005.f5481 = c1400;
        }
        m4169(c1400, c14002);
        c14002.f5480 = c1400;
        c1400.f5481 = c14002;
        int max = Math.max(c14003 != null ? c14003.f5488 : 0, c14005 != null ? c14005.f5488 : 0) + 1;
        c1400.f5488 = max;
        c14002.f5488 = Math.max(max, c14004 != null ? c14004.f5488 : 0) + 1;
    }
}
