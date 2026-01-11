package com.google.android.gms.internal.play_billing;

import android.support.v4.media.session.AbstractC0001;
import com.google.android.gms.internal.measurement.C0317;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p137.AbstractC2305;
import p223.C3056;
import sun.misc.Unsafe;

/* renamed from: com.google.android.gms.internal.play_billing.ﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0644 implements InterfaceC0571 {

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final int[] f2492 = new int[0];

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final Unsafe f2493 = AbstractC0641.m2253();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C0539 f2494;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f2495;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f2496;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AbstractC0601 f2497;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f2498;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f2499;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object[] f2500;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int[] f2501;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int[] f2502;

    public C0644(int[] iArr, Object[] objArr, int i, int i2, AbstractC0601 abstractC0601, int[] iArr2, int i3, int i4, C0539 c0539, C0539 c05392) {
        this.f2501 = iArr;
        this.f2500 = objArr;
        this.f2495 = i;
        this.f2496 = i2;
        this.f2502 = iArr2;
        this.f2498 = i3;
        this.f2499 = i4;
        this.f2494 = c0539;
        this.f2497 = abstractC0601;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static int m2269(long j, Object obj) {
        return ((Integer) AbstractC0641.m2264(j, obj)).intValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0274  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0293  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0277  */
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.play_billing.C0644 m2270(com.google.android.gms.internal.play_billing.C0535 r35, com.google.android.gms.internal.play_billing.C0539 r36, com.google.android.gms.internal.play_billing.C0539 r37) {
        /*
            Method dump skipped, instructions count: 1054
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.C0644.m2270(com.google.android.gms.internal.play_billing.ʽˑ, com.google.android.gms.internal.play_billing.ʾˊ, com.google.android.gms.internal.play_billing.ʾˊ):com.google.android.gms.internal.play_billing.ﹶ");
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static int m2271(int i) {
        return (i >>> 20) & 255;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static Field m2272(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields), e);
        }
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static long m2273(long j, Object obj) {
        return ((Long) AbstractC0641.m2264(j, obj)).longValue();
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static boolean m2274(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof AbstractC0529) {
            return ((AbstractC0529) obj).m2045();
        }
        return true;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final int m2275(int i) {
        return this.f2501[i + 1];
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01d5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01c7 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ʼˎ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo2144(com.google.android.gms.internal.play_billing.AbstractC0529 r8, com.google.android.gms.internal.play_billing.AbstractC0529 r9) {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.C0644.mo2144(com.google.android.gms.internal.play_billing.ʼـ, com.google.android.gms.internal.play_billing.ʼـ):boolean");
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m2276(int i, Object obj) {
        int i2 = this.f2501[i + 2];
        long j = i2 & 1048575;
        if (j == 1048575) {
            int m2275 = m2275(i);
            long j2 = m2275 & 1048575;
            switch (m2271(m2275)) {
                case 0:
                    if (Double.doubleToRawLongBits(AbstractC0641.f2481.mo2168(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 1:
                    if (Float.floatToRawIntBits(AbstractC0641.f2481.mo2167(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 2:
                    if (AbstractC0641.m2268(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (AbstractC0641.m2268(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (AbstractC0641.m2260(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (AbstractC0641.m2268(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (AbstractC0641.m2260(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    return AbstractC0641.f2481.mo2166(j2, obj);
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    Object m2264 = AbstractC0641.m2264(j2, obj);
                    if (m2264 instanceof String) {
                        if (((String) m2264).isEmpty()) {
                            return false;
                        }
                    } else {
                        if (!(m2264 instanceof C0585)) {
                            throw new IllegalArgumentException();
                        }
                        if (C0585.f2388.equals(m2264)) {
                            return false;
                        }
                    }
                    break;
                case 9:
                    if (AbstractC0641.m2264(j2, obj) == null) {
                        return false;
                    }
                    break;
                case 10:
                    if (C0585.f2388.equals(AbstractC0641.m2264(j2, obj))) {
                        return false;
                    }
                    break;
                case 11:
                    if (AbstractC0641.m2260(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (AbstractC0641.m2260(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (AbstractC0641.m2260(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (AbstractC0641.m2268(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (AbstractC0641.m2260(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (AbstractC0641.m2268(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (AbstractC0641.m2264(j2, obj) == null) {
                        return false;
                    }
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        } else if (((1 << (i2 >>> 20)) & AbstractC0641.m2260(j, obj)) == 0) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ʽ */
    public final boolean mo2145(Object obj) {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (i5 < this.f2498) {
            int i7 = this.f2502[i5];
            int[] iArr = this.f2501;
            int i8 = iArr[i7];
            int m2275 = m2275(i7);
            int i9 = iArr[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i6) {
                if (i10 != 1048575) {
                    i4 = f2493.getInt(obj, i10);
                }
                i2 = i7;
                i3 = i4;
                i = i10;
            } else {
                int i12 = i4;
                i = i6;
                i2 = i7;
                i3 = i12;
            }
            if ((268435456 & m2275) == 0 || m2289(obj, i2, i, i3, i11)) {
                int m2271 = m2271(m2275);
                if (m2271 == 9 || m2271 == 17) {
                    if (m2289(obj, i2, i, i3, i11) && !m2287(i2).mo2145(AbstractC0641.m2264(m2275 & 1048575, obj))) {
                    }
                    i5++;
                    i6 = i;
                    i4 = i3;
                } else {
                    if (m2271 != 27) {
                        if (m2271 == 60 || m2271 == 68) {
                            if (m2284(i8, i2, obj) && !m2287(i2).mo2145(AbstractC0641.m2264(m2275 & 1048575, obj))) {
                            }
                        } else if (m2271 != 49) {
                            if (m2271 == 50 && !((C0546) AbstractC0641.m2264(m2275 & 1048575, obj)).isEmpty()) {
                                int i13 = i2 / 3;
                                throw AbstractC2305.m5368(this.f2500[i13 + i13]);
                            }
                        }
                        i5++;
                        i6 = i;
                        i4 = i3;
                    }
                    List list = (List) AbstractC0641.m2264(m2275 & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        InterfaceC0571 m2287 = m2287(i2);
                        for (int i14 = 0; i14 < list.size(); i14++) {
                            if (m2287.mo2145(list.get(i14))) {
                            }
                        }
                    }
                    i5++;
                    i6 = i;
                    i4 = i3;
                }
            }
            return false;
        }
        return true;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object m2277(int i, Object obj) {
        InterfaceC0571 m2287 = m2287(i);
        int m2275 = m2275(i) & 1048575;
        if (!m2276(i, obj)) {
            return m2287.mo2151();
        }
        Object object = f2493.getObject(obj, m2275);
        if (m2274(object)) {
            return object;
        }
        AbstractC0529 mo2151 = m2287.mo2151();
        if (object != null) {
            m2287.mo2146(mo2151, object);
        }
        return mo2151;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC0594 m2278(int i) {
        int i2 = i / 3;
        return (InterfaceC0594) this.f2500[i2 + i2 + 1];
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m2279(Object obj, int i, Object obj2) {
        if (m2276(i, obj2)) {
            int m2275 = m2275(i) & 1048575;
            Unsafe unsafe = f2493;
            long j = m2275;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f2501[i] + " is present but null: " + obj2.toString());
            }
            InterfaceC0571 m2287 = m2287(i);
            if (!m2276(i, obj)) {
                if (m2274(object)) {
                    AbstractC0529 mo2151 = m2287.mo2151();
                    m2287.mo2146(mo2151, object);
                    unsafe.putObject(obj, j, mo2151);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                m2290(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!m2274(object2)) {
                AbstractC0529 mo21512 = m2287.mo2151();
                m2287.mo2146(mo21512, object2);
                unsafe.putObject(obj, j, mo21512);
                object2 = mo21512;
            }
            m2287.mo2146(object2, object);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ˈ */
    public final void mo2146(Object obj, Object obj2) {
        Object obj3;
        if (!m2274(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.f2501;
            if (i >= iArr.length) {
                AbstractC0531.m2055(obj, obj2);
                return;
            }
            int m2275 = m2275(i);
            int i2 = m2275 & 1048575;
            int m2271 = m2271(m2275);
            int i3 = iArr[i];
            long j = i2;
            switch (m2271) {
                case 0:
                    if (m2276(i, obj2)) {
                        AbstractC0576 abstractC0576 = AbstractC0641.f2481;
                        obj3 = obj;
                        abstractC0576.mo2165(obj3, j, abstractC0576.mo2168(j, obj2));
                        m2290(i, obj3);
                        break;
                    }
                    break;
                case 1:
                    if (m2276(i, obj2)) {
                        AbstractC0576 abstractC05762 = AbstractC0641.f2481;
                        abstractC05762.mo2169(obj, j, abstractC05762.mo2167(j, obj2));
                        m2290(i, obj);
                        break;
                    }
                    break;
                case 2:
                    if (m2276(i, obj2)) {
                        AbstractC0641.m2261(obj, j, AbstractC0641.m2268(j, obj2));
                        m2290(i, obj);
                        break;
                    }
                    break;
                case 3:
                    if (m2276(i, obj2)) {
                        AbstractC0641.m2261(obj, j, AbstractC0641.m2268(j, obj2));
                        m2290(i, obj);
                        break;
                    }
                    break;
                case 4:
                    if (m2276(i, obj2)) {
                        AbstractC0641.m2256(j, obj, AbstractC0641.m2260(j, obj2));
                        m2290(i, obj);
                        break;
                    }
                    break;
                case 5:
                    if (m2276(i, obj2)) {
                        AbstractC0641.m2261(obj, j, AbstractC0641.m2268(j, obj2));
                        m2290(i, obj);
                        break;
                    }
                    break;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (m2276(i, obj2)) {
                        AbstractC0641.m2256(j, obj, AbstractC0641.m2260(j, obj2));
                        m2290(i, obj);
                        break;
                    }
                    break;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    if (m2276(i, obj2)) {
                        AbstractC0576 abstractC05763 = AbstractC0641.f2481;
                        abstractC05763.mo2163(obj, j, abstractC05763.mo2166(j, obj2));
                        m2290(i, obj);
                        break;
                    }
                    break;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    if (m2276(i, obj2)) {
                        AbstractC0641.m2267(j, obj, AbstractC0641.m2264(j, obj2));
                        m2290(i, obj);
                        break;
                    }
                    break;
                case 9:
                    m2279(obj, i, obj2);
                    break;
                case 10:
                    if (m2276(i, obj2)) {
                        AbstractC0641.m2267(j, obj, AbstractC0641.m2264(j, obj2));
                        m2290(i, obj);
                        break;
                    }
                    break;
                case 11:
                    if (m2276(i, obj2)) {
                        AbstractC0641.m2256(j, obj, AbstractC0641.m2260(j, obj2));
                        m2290(i, obj);
                        break;
                    }
                    break;
                case 12:
                    if (m2276(i, obj2)) {
                        AbstractC0641.m2256(j, obj, AbstractC0641.m2260(j, obj2));
                        m2290(i, obj);
                        break;
                    }
                    break;
                case 13:
                    if (m2276(i, obj2)) {
                        AbstractC0641.m2256(j, obj, AbstractC0641.m2260(j, obj2));
                        m2290(i, obj);
                        break;
                    }
                    break;
                case 14:
                    if (m2276(i, obj2)) {
                        AbstractC0641.m2261(obj, j, AbstractC0641.m2268(j, obj2));
                        m2290(i, obj);
                        break;
                    }
                    break;
                case 15:
                    if (m2276(i, obj2)) {
                        AbstractC0641.m2256(j, obj, AbstractC0641.m2260(j, obj2));
                        m2290(i, obj);
                        break;
                    }
                    break;
                case 16:
                    if (m2276(i, obj2)) {
                        AbstractC0641.m2261(obj, j, AbstractC0641.m2268(j, obj2));
                        m2290(i, obj);
                        break;
                    }
                    break;
                case 17:
                    m2279(obj, i, obj2);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    InterfaceC0543 interfaceC0543 = (InterfaceC0543) AbstractC0641.m2264(j, obj);
                    InterfaceC0543 interfaceC05432 = (InterfaceC0543) AbstractC0641.m2264(j, obj2);
                    int size = interfaceC0543.size();
                    int size2 = interfaceC05432.size();
                    if (size > 0 && size2 > 0) {
                        if (!((AbstractC0556) interfaceC0543).f2342) {
                            interfaceC0543 = interfaceC0543.mo2101(size2 + size);
                        }
                        interfaceC0543.addAll(interfaceC05432);
                    }
                    if (size > 0) {
                        interfaceC05432 = interfaceC0543;
                    }
                    AbstractC0641.m2267(j, obj, interfaceC05432);
                    break;
                case 50:
                    C0539 c0539 = AbstractC0531.f2299;
                    AbstractC0641.m2267(j, obj, C0539.m2086(AbstractC0641.m2264(j, obj), AbstractC0641.m2264(j, obj2)));
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (m2284(i3, i, obj2)) {
                        AbstractC0641.m2267(j, obj, AbstractC0641.m2264(j, obj2));
                        AbstractC0641.m2256(iArr[i + 2] & 1048575, obj, i3);
                        break;
                    }
                    break;
                case 60:
                    m2286(obj, i, obj2);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (m2284(i3, i, obj2)) {
                        AbstractC0641.m2267(j, obj, AbstractC0641.m2264(j, obj2));
                        AbstractC0641.m2256(iArr[i + 2] & 1048575, obj, i3);
                        break;
                    }
                    break;
                case 68:
                    m2286(obj, i, obj2);
                    break;
            }
            obj3 = obj;
            i += 3;
            obj = obj3;
        }
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Object m2280(int i, int i2, Object obj) {
        InterfaceC0571 m2287 = m2287(i2);
        if (!m2284(i, i2, obj)) {
            return m2287.mo2151();
        }
        Object object = f2493.getObject(obj, m2275(i2) & 1048575);
        if (m2274(object)) {
            return object;
        }
        AbstractC0529 mo2151 = m2287.mo2151();
        if (object != null) {
            m2287.mo2146(mo2151, object);
        }
        return mo2151;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m2281(Object obj, int i, Object obj2) {
        f2493.putObject(obj, m2275(i) & 1048575, obj2);
        m2290(i, obj);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean m2282(AbstractC0529 abstractC0529, AbstractC0529 abstractC05292, int i) {
        return m2276(i, abstractC0529) == m2276(i, abstractC05292);
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    /* renamed from: ˏי, reason: contains not printable characters */
    public final int m2283(java.lang.Object r38, byte[] r39, int r40, int r41, int r42, com.google.android.gms.internal.measurement.C0317 r43) {
        /*
            Method dump skipped, instructions count: 4004
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.C0644.m2283(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.ˈʻ):int");
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ˑﹳ */
    public final void mo2147(Object obj, C0618 c0618) {
        int i;
        int i2;
        C0644 c0644 = this;
        Unsafe unsafe = f2493;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (true) {
            int[] iArr = c0644.f2501;
            if (i4 >= iArr.length) {
                ((AbstractC0529) obj).zzc.m2303(c0618);
                return;
            }
            int m2275 = c0644.m2275(i4);
            int m2271 = m2271(m2275);
            int i7 = iArr[i4];
            if (m2271 <= 17) {
                int i8 = iArr[i4 + 2];
                int i9 = i8 & i3;
                if (i9 != i6) {
                    i5 = i9 == i3 ? 0 : unsafe.getInt(obj, i9);
                    i6 = i9;
                }
                i = 1 << (i8 >>> 20);
            } else {
                i = 0;
            }
            long j = m2275 & i3;
            switch (m2271) {
                case 0:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        ((C0606) c0618.f2447).m2209(i7, Double.doubleToRawLongBits(AbstractC0641.f2481.mo2168(j, obj)));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        ((C0606) c0618.f2447).m2205(i7, Float.floatToRawIntBits(AbstractC0641.f2481.mo2167(j, obj)));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        ((C0606) c0618.f2447).m2202(i7, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        ((C0606) c0618.f2447).m2202(i7, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        ((C0606) c0618.f2447).m2201(i7, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        ((C0606) c0618.f2447).m2209(i7, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        ((C0606) c0618.f2447).m2205(i7, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        byte mo2166 = AbstractC0641.f2481.mo2166(j, obj);
                        C0606 c0606 = (C0606) c0618.f2447;
                        c0606.m2207(i7 << 3);
                        int i10 = c0606.f2418;
                        try {
                            int i11 = i10 + 1;
                            try {
                                c0606.f2416[i10] = mo2166;
                                c0606.f2418 = i11;
                                break;
                            } catch (IndexOutOfBoundsException e) {
                                e = e;
                                i10 = i11;
                                throw new zzen(i10, c0606.f2417, 1, e);
                            }
                        } catch (IndexOutOfBoundsException e2) {
                            e = e2;
                        }
                    } else {
                        continue;
                    }
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof String) {
                            ((C0606) c0618.f2447).m2214(i7, (String) object);
                            break;
                        } else {
                            ((C0606) c0618.f2447).m2213(i7, (C0585) object);
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        c0618.m2219(i7, unsafe.getObject(obj, j), c0644.m2287(i4));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        ((C0606) c0618.f2447).m2213(i7, (C0585) unsafe.getObject(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        ((C0606) c0618.f2447).m2212(i7, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        ((C0606) c0618.f2447).m2201(i7, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        ((C0606) c0618.f2447).m2205(i7, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        ((C0606) c0618.f2447).m2209(i7, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        int i12 = unsafe.getInt(obj, j);
                        ((C0606) c0618.f2447).m2212(i7, (i12 >> 31) ^ (i12 + i12));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        long j2 = unsafe.getLong(obj, j);
                        ((C0606) c0618.f2447).m2202(i7, (j2 >> 63) ^ (j2 + j2));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (c0644.m2289(obj, i4, i6, i5, i)) {
                        c0618.m2218(i7, unsafe.getObject(obj, j), c0644.m2287(i4));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    AbstractC0531.m2075(iArr[i4], (List) unsafe.getObject(obj, j), c0618, false);
                    break;
                case 19:
                    AbstractC0531.m2052(iArr[i4], (List) unsafe.getObject(obj, j), c0618, false);
                    break;
                case 20:
                    AbstractC0531.m2058(iArr[i4], (List) unsafe.getObject(obj, j), c0618, false);
                    break;
                case 21:
                    AbstractC0531.m2060(iArr[i4], (List) unsafe.getObject(obj, j), c0618, false);
                    break;
                case 22:
                    AbstractC0531.m2066(iArr[i4], (List) unsafe.getObject(obj, j), c0618, false);
                    break;
                case 23:
                    AbstractC0531.m2057(iArr[i4], (List) unsafe.getObject(obj, j), c0618, false);
                    break;
                case 24:
                    AbstractC0531.m2063(iArr[i4], (List) unsafe.getObject(obj, j), c0618, false);
                    break;
                case 25:
                    AbstractC0531.m2071(iArr[i4], (List) unsafe.getObject(obj, j), c0618, false);
                    break;
                case 26:
                    int i13 = iArr[i4];
                    List list = (List) unsafe.getObject(obj, j);
                    C0539 c0539 = AbstractC0531.f2299;
                    if (list != null && !list.isEmpty()) {
                        c0618.getClass();
                        for (int i14 = 0; i14 < list.size(); i14++) {
                            ((C0606) c0618.f2447).m2214(i13, (String) list.get(i14));
                        }
                        break;
                    }
                    break;
                case 27:
                    int i15 = iArr[i4];
                    List list2 = (List) unsafe.getObject(obj, j);
                    InterfaceC0571 m2287 = c0644.m2287(i4);
                    C0539 c05392 = AbstractC0531.f2299;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i16 = 0; i16 < list2.size(); i16++) {
                            c0618.m2219(i15, list2.get(i16), m2287);
                        }
                        break;
                    }
                    break;
                case 28:
                    int i17 = iArr[i4];
                    List list3 = (List) unsafe.getObject(obj, j);
                    C0539 c05393 = AbstractC0531.f2299;
                    if (list3 != null && !list3.isEmpty()) {
                        c0618.getClass();
                        for (int i18 = 0; i18 < list3.size(); i18++) {
                            ((C0606) c0618.f2447).m2213(i17, (C0585) list3.get(i18));
                        }
                        break;
                    }
                    break;
                case 29:
                    AbstractC0531.m2056(iArr[i4], (List) unsafe.getObject(obj, j), c0618, false);
                    break;
                case 30:
                    AbstractC0531.m2065(iArr[i4], (List) unsafe.getObject(obj, j), c0618, false);
                    break;
                case 31:
                    AbstractC0531.m2053(iArr[i4], (List) unsafe.getObject(obj, j), c0618, false);
                    break;
                case 32:
                    AbstractC0531.m2072(iArr[i4], (List) unsafe.getObject(obj, j), c0618, false);
                    break;
                case 33:
                    AbstractC0531.m2074(iArr[i4], (List) unsafe.getObject(obj, j), c0618, false);
                    break;
                case 34:
                    AbstractC0531.m2073(iArr[i4], (List) unsafe.getObject(obj, j), c0618, false);
                    break;
                case 35:
                    AbstractC0531.m2075(iArr[i4], (List) unsafe.getObject(obj, j), c0618, true);
                    break;
                case 36:
                    AbstractC0531.m2052(iArr[i4], (List) unsafe.getObject(obj, j), c0618, true);
                    break;
                case 37:
                    AbstractC0531.m2058(iArr[i4], (List) unsafe.getObject(obj, j), c0618, true);
                    break;
                case 38:
                    AbstractC0531.m2060(iArr[i4], (List) unsafe.getObject(obj, j), c0618, true);
                    break;
                case 39:
                    AbstractC0531.m2066(iArr[i4], (List) unsafe.getObject(obj, j), c0618, true);
                    break;
                case 40:
                    AbstractC0531.m2057(iArr[i4], (List) unsafe.getObject(obj, j), c0618, true);
                    break;
                case 41:
                    AbstractC0531.m2063(iArr[i4], (List) unsafe.getObject(obj, j), c0618, true);
                    break;
                case 42:
                    AbstractC0531.m2071(iArr[i4], (List) unsafe.getObject(obj, j), c0618, true);
                    break;
                case 43:
                    AbstractC0531.m2056(iArr[i4], (List) unsafe.getObject(obj, j), c0618, true);
                    break;
                case 44:
                    AbstractC0531.m2065(iArr[i4], (List) unsafe.getObject(obj, j), c0618, true);
                    break;
                case 45:
                    AbstractC0531.m2053(iArr[i4], (List) unsafe.getObject(obj, j), c0618, true);
                    break;
                case 46:
                    AbstractC0531.m2072(iArr[i4], (List) unsafe.getObject(obj, j), c0618, true);
                    break;
                case 47:
                    AbstractC0531.m2074(iArr[i4], (List) unsafe.getObject(obj, j), c0618, true);
                    break;
                case 48:
                    AbstractC0531.m2073(iArr[i4], (List) unsafe.getObject(obj, j), c0618, true);
                    break;
                case 49:
                    int i19 = iArr[i4];
                    List list4 = (List) unsafe.getObject(obj, j);
                    InterfaceC0571 m22872 = c0644.m2287(i4);
                    C0539 c05394 = AbstractC0531.f2299;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i20 = 0; i20 < list4.size(); i20++) {
                            c0618.m2218(i19, list4.get(i20), m22872);
                        }
                        break;
                    }
                    break;
                case 50:
                    if (unsafe.getObject(obj, j) != null) {
                        int i21 = i4 / 3;
                        throw AbstractC2305.m5368(c0644.f2500[i21 + i21]);
                    }
                    break;
                case 51:
                    if (c0644.m2284(i7, i4, obj)) {
                        ((C0606) c0618.f2447).m2209(i7, Double.doubleToRawLongBits(((Double) AbstractC0641.m2264(j, obj)).doubleValue()));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (c0644.m2284(i7, i4, obj)) {
                        ((C0606) c0618.f2447).m2205(i7, Float.floatToRawIntBits(((Float) AbstractC0641.m2264(j, obj)).floatValue()));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (c0644.m2284(i7, i4, obj)) {
                        ((C0606) c0618.f2447).m2202(i7, m2273(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (c0644.m2284(i7, i4, obj)) {
                        ((C0606) c0618.f2447).m2202(i7, m2273(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (c0644.m2284(i7, i4, obj)) {
                        ((C0606) c0618.f2447).m2201(i7, m2269(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (c0644.m2284(i7, i4, obj)) {
                        ((C0606) c0618.f2447).m2209(i7, m2273(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (c0644.m2284(i7, i4, obj)) {
                        ((C0606) c0618.f2447).m2205(i7, m2269(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (c0644.m2284(i7, i4, obj)) {
                        byte booleanValue = ((Boolean) AbstractC0641.m2264(j, obj)).booleanValue();
                        C0606 c06062 = (C0606) c0618.f2447;
                        c06062.m2207(i7 << 3);
                        int i22 = c06062.f2418;
                        try {
                            i2 = i22 + 1;
                        } catch (IndexOutOfBoundsException e3) {
                            e = e3;
                        }
                        try {
                            c06062.f2416[i22] = booleanValue;
                            c06062.f2418 = i2;
                            break;
                        } catch (IndexOutOfBoundsException e4) {
                            e = e4;
                            i22 = i2;
                            throw new zzen(i22, c06062.f2417, 1, e);
                        }
                    } else {
                        continue;
                    }
                case 59:
                    if (c0644.m2284(i7, i4, obj)) {
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof String) {
                            ((C0606) c0618.f2447).m2214(i7, (String) object2);
                            break;
                        } else {
                            ((C0606) c0618.f2447).m2213(i7, (C0585) object2);
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (c0644.m2284(i7, i4, obj)) {
                        c0618.m2219(i7, unsafe.getObject(obj, j), c0644.m2287(i4));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (c0644.m2284(i7, i4, obj)) {
                        ((C0606) c0618.f2447).m2213(i7, (C0585) unsafe.getObject(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (c0644.m2284(i7, i4, obj)) {
                        ((C0606) c0618.f2447).m2212(i7, m2269(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (c0644.m2284(i7, i4, obj)) {
                        ((C0606) c0618.f2447).m2201(i7, m2269(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (c0644.m2284(i7, i4, obj)) {
                        ((C0606) c0618.f2447).m2205(i7, m2269(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (c0644.m2284(i7, i4, obj)) {
                        ((C0606) c0618.f2447).m2209(i7, m2273(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (c0644.m2284(i7, i4, obj)) {
                        int m2269 = m2269(j, obj);
                        ((C0606) c0618.f2447).m2212(i7, (m2269 >> 31) ^ (m2269 + m2269));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (c0644.m2284(i7, i4, obj)) {
                        long m2273 = m2273(j, obj);
                        ((C0606) c0618.f2447).m2202(i7, (m2273 >> 63) ^ (m2273 + m2273));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (c0644.m2284(i7, i4, obj)) {
                        c0618.m2218(i7, unsafe.getObject(obj, j), c0644.m2287(i4));
                        break;
                    } else {
                        break;
                    }
            }
            i4 += 3;
            i3 = 1048575;
            c0644 = this;
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final boolean m2284(int i, int i2, Object obj) {
        return AbstractC0641.m2260((long) (this.f2501[i2 + 2] & 1048575), obj) == i;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final int m2285(int i, int i2) {
        int[] iArr = this.f2501;
        int length = (iArr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = iArr[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m2286(Object obj, int i, Object obj2) {
        int[] iArr = this.f2501;
        int i2 = iArr[i];
        if (m2284(i2, i, obj2)) {
            int m2275 = m2275(i) & 1048575;
            Unsafe unsafe = f2493;
            long j = m2275;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2.toString());
            }
            InterfaceC0571 m2287 = m2287(i);
            if (!m2284(i2, i, obj)) {
                if (m2274(object)) {
                    AbstractC0529 mo2151 = m2287.mo2151();
                    m2287.mo2146(mo2151, object);
                    unsafe.putObject(obj, j, mo2151);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                AbstractC0641.m2256(iArr[i + 2] & 1048575, obj, i2);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!m2274(object2)) {
                AbstractC0529 mo21512 = m2287.mo2151();
                m2287.mo2146(mo21512, object2);
                unsafe.putObject(obj, j, mo21512);
                object2 = mo21512;
            }
            m2287.mo2146(object2, object);
        }
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC0571 m2287(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.f2500;
        InterfaceC0571 interfaceC0571 = (InterfaceC0571) objArr[i3];
        if (interfaceC0571 != null) {
            return interfaceC0571;
        }
        InterfaceC0571 m2245 = C0637.f2473.m2245((Class) objArr[i3 + 1]);
        objArr[i3] = m2245;
        return m2245;
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ᵎﹶ */
    public final void mo2148(Object obj, byte[] bArr, int i, int i2, C0317 c0317) {
        m2283(obj, bArr, i, i2, 0, c0317);
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m2288(Object obj, int i, Object obj2, int i2) {
        f2493.putObject(obj, m2275(i2) & 1048575, obj2);
        AbstractC0641.m2256(this.f2501[i2 + 2] & 1048575, obj, i);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x004c. Please report as an issue. */
    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ᵔᵢ */
    public final int mo2149(AbstractC0601 abstractC0601) {
        int i;
        int m2199;
        int m2200;
        int i2;
        int i3;
        int mo2048;
        int m21992;
        int size;
        int m2069;
        int m21993;
        int m21994;
        int m21995;
        int i4;
        int m21996;
        int m22002;
        C0644 c0644 = this;
        AbstractC0601 abstractC06012 = abstractC0601;
        Unsafe unsafe = f2493;
        int i5 = 1048575;
        int i6 = 1048575;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int[] iArr = c0644.f2501;
            if (i7 >= iArr.length) {
                return ((AbstractC0529) abstractC0601).zzc.m2305() + i9;
            }
            int m2275 = c0644.m2275(i7);
            int m2271 = m2271(m2275);
            int i10 = iArr[i7];
            int i11 = iArr[i7 + 2];
            int i12 = i11 & i5;
            if (m2271 <= 17) {
                if (i12 != i6) {
                    i8 = i12 == i5 ? 0 : unsafe.getInt(abstractC06012, i12);
                    i6 = i12;
                }
                i = 1 << (i11 >>> 20);
            } else {
                i = 0;
            }
            int i13 = m2275 & i5;
            if (m2271 >= EnumC0610.f2436.f2438) {
                EnumC0610.f2434.getClass();
            }
            long j = i13;
            switch (m2271) {
                case 0:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m18(i10 << 3, 8, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 1:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m18(i10 << 3, 4, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 2:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        long j2 = unsafe.getLong(abstractC06012, j);
                        m2199 = C0606.m2199(i10 << 3);
                        m2200 = C0606.m2200(j2);
                        i2 = m2200 + m2199;
                        i9 += i2;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    } else {
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                case 3:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        long j3 = unsafe.getLong(abstractC06012, j);
                        m2199 = C0606.m2199(i10 << 3);
                        m2200 = C0606.m2200(j3);
                        i2 = m2200 + m2199;
                        i9 += i2;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    } else {
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                case 4:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        long j4 = unsafe.getInt(abstractC06012, j);
                        m2199 = C0606.m2199(i10 << 3);
                        m2200 = C0606.m2200(j4);
                        i2 = m2200 + m2199;
                        i9 += i2;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    } else {
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                case 5:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m18(i10 << 3, 8, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m18(i10 << 3, 4, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m18(i10 << 3, 1, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        int i14 = i10 << 3;
                        Object object = unsafe.getObject(abstractC06012, j);
                        if (object instanceof C0585) {
                            int m21997 = C0606.m2199(i14);
                            int mo2031 = ((C0585) object).mo2031();
                            i9 = AbstractC0001.m12(mo2031, mo2031, m21997, i9);
                        } else {
                            m2199 = C0606.m2199(i14);
                            m2200 = C0606.m2198((String) object);
                            i2 = m2200 + m2199;
                            i9 += i2;
                        }
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 9:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        Object object2 = unsafe.getObject(abstractC06012, j);
                        InterfaceC0571 m2287 = c0644.m2287(i7);
                        C0539 c0539 = AbstractC0531.f2299;
                        int m21998 = C0606.m2199(i10 << 3);
                        int mo20482 = ((AbstractC0601) object2).mo2048(m2287);
                        i9 = AbstractC0001.m12(mo20482, mo20482, m21998, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 10:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        C0585 c0585 = (C0585) unsafe.getObject(abstractC06012, j);
                        int m21999 = C0606.m2199(i10 << 3);
                        int mo20312 = c0585.mo2031();
                        i9 = AbstractC0001.m12(mo20312, mo20312, m21999, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 11:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m18(unsafe.getInt(abstractC06012, j), C0606.m2199(i10 << 3), i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 12:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        long j5 = unsafe.getInt(abstractC06012, j);
                        m2199 = C0606.m2199(i10 << 3);
                        m2200 = C0606.m2200(j5);
                        i2 = m2200 + m2199;
                        i9 += i2;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    } else {
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                case 13:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m18(i10 << 3, 4, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 14:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m18(i10 << 3, 8, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 15:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        int i15 = unsafe.getInt(abstractC06012, j);
                        i9 = AbstractC0001.m18((i15 >> 31) ^ (i15 + i15), C0606.m2199(i10 << 3), i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 16:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        long j6 = unsafe.getLong(abstractC06012, j);
                        m2199 = C0606.m2199(i10 << 3);
                        m2200 = C0606.m2200((j6 >> 63) ^ (j6 + j6));
                        i2 = m2200 + m2199;
                        i9 += i2;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    } else {
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                case 17:
                    if (c0644.m2289(abstractC06012, i7, i6, i8, i)) {
                        AbstractC0601 abstractC06013 = (AbstractC0601) unsafe.getObject(abstractC06012, j);
                        InterfaceC0571 m22872 = c0644.m2287(i7);
                        int m219910 = C0606.m2199(i10 << 3);
                        i3 = m219910 + m219910;
                        mo2048 = abstractC06013.mo2048(m22872);
                        i2 = mo2048 + i3;
                        i9 += i2;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    } else {
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                case 18:
                    i2 = AbstractC0531.m2070(i10, (List) unsafe.getObject(abstractC06012, j));
                    i9 += i2;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 19:
                    i2 = AbstractC0531.m2068(i10, (List) unsafe.getObject(abstractC06012, j));
                    i9 += i2;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 20:
                    List list = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c05392 = AbstractC0531.f2299;
                    if (list.size() != 0) {
                        m21992 = (C0606.m2199(i10 << 3) * list.size()) + AbstractC0531.m2059(list);
                        i9 += m21992;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                    m21992 = 0;
                    i9 += m21992;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 21:
                    List list2 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c05393 = AbstractC0531.f2299;
                    size = list2.size();
                    if (size != 0) {
                        m2069 = AbstractC0531.m2069(list2);
                        m21993 = C0606.m2199(i10 << 3);
                        m21994 = (m21993 * size) + m2069;
                        i9 += m21994;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                    m21994 = 0;
                    i9 += m21994;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 22:
                    List list3 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c05394 = AbstractC0531.f2299;
                    size = list3.size();
                    if (size != 0) {
                        m2069 = AbstractC0531.m2054(list3);
                        m21993 = C0606.m2199(i10 << 3);
                        m21994 = (m21993 * size) + m2069;
                        i9 += m21994;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                    m21994 = 0;
                    i9 += m21994;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 23:
                    i2 = AbstractC0531.m2070(i10, (List) unsafe.getObject(abstractC06012, j));
                    i9 += i2;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 24:
                    i2 = AbstractC0531.m2068(i10, (List) unsafe.getObject(abstractC06012, j));
                    i9 += i2;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 25:
                    List list4 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c05395 = AbstractC0531.f2299;
                    int size2 = list4.size();
                    if (size2 != 0) {
                        m21992 = (C0606.m2199(i10 << 3) + 1) * size2;
                        i9 += m21992;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                    m21992 = 0;
                    i9 += m21992;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 26:
                    List list5 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c05396 = AbstractC0531.f2299;
                    int size3 = list5.size();
                    if (size3 != 0) {
                        m21994 = C0606.m2199(i10 << 3) * size3;
                        for (int i16 = 0; i16 < size3; i16++) {
                            Object obj = list5.get(i16);
                            if (obj instanceof C0585) {
                                int mo20313 = ((C0585) obj).mo2031();
                                m21994 = AbstractC0001.m18(mo20313, mo20313, m21994);
                            } else {
                                m21994 = C0606.m2198((String) obj) + m21994;
                            }
                        }
                        i9 += m21994;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                    m21994 = 0;
                    i9 += m21994;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 27:
                    List list6 = (List) unsafe.getObject(abstractC06012, j);
                    InterfaceC0571 m22873 = c0644.m2287(i7);
                    C0539 c05397 = AbstractC0531.f2299;
                    int size4 = list6.size();
                    if (size4 == 0) {
                        m21995 = 0;
                    } else {
                        m21995 = C0606.m2199(i10 << 3) * size4;
                        for (int i17 = 0; i17 < size4; i17++) {
                            int mo20483 = ((AbstractC0601) list6.get(i17)).mo2048(m22873);
                            m21995 = AbstractC0001.m18(mo20483, mo20483, m21995);
                        }
                    }
                    i9 += m21995;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 28:
                    List list7 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c05398 = AbstractC0531.f2299;
                    int size5 = list7.size();
                    if (size5 != 0) {
                        m21994 = C0606.m2199(i10 << 3) * size5;
                        for (int i18 = 0; i18 < list7.size(); i18++) {
                            int mo20314 = ((C0585) list7.get(i18)).mo2031();
                            m21994 = AbstractC0001.m18(mo20314, mo20314, m21994);
                        }
                        i9 += m21994;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                    m21994 = 0;
                    i9 += m21994;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 29:
                    List list8 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c05399 = AbstractC0531.f2299;
                    size = list8.size();
                    if (size != 0) {
                        m2069 = AbstractC0531.m2061(list8);
                        m21993 = C0606.m2199(i10 << 3);
                        m21994 = (m21993 * size) + m2069;
                        i9 += m21994;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                    m21994 = 0;
                    i9 += m21994;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 30:
                    List list9 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c053910 = AbstractC0531.f2299;
                    size = list9.size();
                    if (size != 0) {
                        m2069 = AbstractC0531.m2077(list9);
                        m21993 = C0606.m2199(i10 << 3);
                        m21994 = (m21993 * size) + m2069;
                        i9 += m21994;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                    m21994 = 0;
                    i9 += m21994;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 31:
                    i2 = AbstractC0531.m2068(i10, (List) unsafe.getObject(abstractC06012, j));
                    i9 += i2;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 32:
                    i2 = AbstractC0531.m2070(i10, (List) unsafe.getObject(abstractC06012, j));
                    i9 += i2;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 33:
                    List list10 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c053911 = AbstractC0531.f2299;
                    size = list10.size();
                    if (size != 0) {
                        m2069 = AbstractC0531.m2067(list10);
                        m21993 = C0606.m2199(i10 << 3);
                        m21994 = (m21993 * size) + m2069;
                        i9 += m21994;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                    m21994 = 0;
                    i9 += m21994;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 34:
                    List list11 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c053912 = AbstractC0531.f2299;
                    size = list11.size();
                    if (size != 0) {
                        m2069 = AbstractC0531.m2076(list11);
                        m21993 = C0606.m2199(i10 << 3);
                        m21994 = (m21993 * size) + m2069;
                        i9 += m21994;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                    m21994 = 0;
                    i9 += m21994;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 35:
                    List list12 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c053913 = AbstractC0531.f2299;
                    int size6 = list12.size() * 8;
                    if (size6 > 0) {
                        i9 = AbstractC0001.m12(size6, C0606.m2199(i10 << 3), size6, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 36:
                    List list13 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c053914 = AbstractC0531.f2299;
                    int size7 = list13.size() * 4;
                    if (size7 > 0) {
                        i9 = AbstractC0001.m12(size7, C0606.m2199(i10 << 3), size7, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 37:
                    int m2059 = AbstractC0531.m2059((List) unsafe.getObject(abstractC06012, j));
                    if (m2059 > 0) {
                        i9 = AbstractC0001.m12(m2059, C0606.m2199(i10 << 3), m2059, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 38:
                    int m20692 = AbstractC0531.m2069((List) unsafe.getObject(abstractC06012, j));
                    if (m20692 > 0) {
                        i9 = AbstractC0001.m12(m20692, C0606.m2199(i10 << 3), m20692, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 39:
                    int m2054 = AbstractC0531.m2054((List) unsafe.getObject(abstractC06012, j));
                    if (m2054 > 0) {
                        i9 = AbstractC0001.m12(m2054, C0606.m2199(i10 << 3), m2054, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 40:
                    List list14 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c053915 = AbstractC0531.f2299;
                    int size8 = list14.size() * 8;
                    if (size8 > 0) {
                        i9 = AbstractC0001.m12(size8, C0606.m2199(i10 << 3), size8, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 41:
                    List list15 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c053916 = AbstractC0531.f2299;
                    int size9 = list15.size() * 4;
                    if (size9 > 0) {
                        i9 = AbstractC0001.m12(size9, C0606.m2199(i10 << 3), size9, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 42:
                    List list16 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c053917 = AbstractC0531.f2299;
                    int size10 = list16.size();
                    if (size10 > 0) {
                        i9 = AbstractC0001.m12(size10, C0606.m2199(i10 << 3), size10, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 43:
                    int m2061 = AbstractC0531.m2061((List) unsafe.getObject(abstractC06012, j));
                    if (m2061 > 0) {
                        i9 = AbstractC0001.m12(m2061, C0606.m2199(i10 << 3), m2061, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 44:
                    int m2077 = AbstractC0531.m2077((List) unsafe.getObject(abstractC06012, j));
                    if (m2077 > 0) {
                        i9 = AbstractC0001.m12(m2077, C0606.m2199(i10 << 3), m2077, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 45:
                    List list17 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c053918 = AbstractC0531.f2299;
                    int size11 = list17.size() * 4;
                    if (size11 > 0) {
                        i9 = AbstractC0001.m12(size11, C0606.m2199(i10 << 3), size11, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 46:
                    List list18 = (List) unsafe.getObject(abstractC06012, j);
                    C0539 c053919 = AbstractC0531.f2299;
                    int size12 = list18.size() * 8;
                    if (size12 > 0) {
                        i9 = AbstractC0001.m12(size12, C0606.m2199(i10 << 3), size12, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 47:
                    int m2067 = AbstractC0531.m2067((List) unsafe.getObject(abstractC06012, j));
                    if (m2067 > 0) {
                        i9 = AbstractC0001.m12(m2067, C0606.m2199(i10 << 3), m2067, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 48:
                    int m2076 = AbstractC0531.m2076((List) unsafe.getObject(abstractC06012, j));
                    if (m2076 > 0) {
                        i9 = AbstractC0001.m12(m2076, C0606.m2199(i10 << 3), m2076, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 49:
                    List list19 = (List) unsafe.getObject(abstractC06012, j);
                    InterfaceC0571 m22874 = c0644.m2287(i7);
                    C0539 c053920 = AbstractC0531.f2299;
                    int size13 = list19.size();
                    if (size13 == 0) {
                        i4 = 0;
                    } else {
                        i4 = 0;
                        for (int i19 = 0; i19 < size13; i19++) {
                            AbstractC0601 abstractC06014 = (AbstractC0601) list19.get(i19);
                            int m219911 = C0606.m2199(i10 << 3);
                            i4 += abstractC06014.mo2048(m22874) + m219911 + m219911;
                        }
                    }
                    i9 += i4;
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 50:
                    int i20 = i7 / 3;
                    C0546 c0546 = (C0546) unsafe.getObject(abstractC06012, j);
                    if (c0644.f2500[i20 + i20] != null) {
                        throw new ClassCastException();
                    }
                    if (c0546.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = c0546.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 51:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        i9 = AbstractC0001.m18(i10 << 3, 8, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 52:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        i9 = AbstractC0001.m18(i10 << 3, 4, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 53:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        long m2273 = m2273(j, abstractC06012);
                        m21996 = C0606.m2199(i10 << 3);
                        m22002 = C0606.m2200(m2273);
                        i9 += m22002 + m21996;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    } else {
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                case 54:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        long m22732 = m2273(j, abstractC06012);
                        m21996 = C0606.m2199(i10 << 3);
                        m22002 = C0606.m2200(m22732);
                        i9 += m22002 + m21996;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    } else {
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                case 55:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        long m2269 = m2269(j, abstractC06012);
                        m21996 = C0606.m2199(i10 << 3);
                        m22002 = C0606.m2200(m2269);
                        i9 += m22002 + m21996;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    } else {
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                case 56:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        i9 = AbstractC0001.m18(i10 << 3, 8, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 57:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        i9 = AbstractC0001.m18(i10 << 3, 4, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 58:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        i9 = AbstractC0001.m18(i10 << 3, 1, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 59:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        int i21 = i10 << 3;
                        Object object3 = unsafe.getObject(abstractC06012, j);
                        if (object3 instanceof C0585) {
                            int m219912 = C0606.m2199(i21);
                            int mo20315 = ((C0585) object3).mo2031();
                            i9 = AbstractC0001.m12(mo20315, mo20315, m219912, i9);
                        } else {
                            m21996 = C0606.m2199(i21);
                            m22002 = C0606.m2198((String) object3);
                            i9 += m22002 + m21996;
                        }
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 60:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        Object object4 = unsafe.getObject(abstractC06012, j);
                        InterfaceC0571 m22875 = c0644.m2287(i7);
                        C0539 c053921 = AbstractC0531.f2299;
                        int m219913 = C0606.m2199(i10 << 3);
                        int mo20484 = ((AbstractC0601) object4).mo2048(m22875);
                        i9 = AbstractC0001.m12(mo20484, mo20484, m219913, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 61:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        C0585 c05852 = (C0585) unsafe.getObject(abstractC06012, j);
                        int m219914 = C0606.m2199(i10 << 3);
                        int mo20316 = c05852.mo2031();
                        i9 = AbstractC0001.m12(mo20316, mo20316, m219914, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 62:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        i9 = AbstractC0001.m18(m2269(j, abstractC06012), C0606.m2199(i10 << 3), i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 63:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        long m22692 = m2269(j, abstractC06012);
                        m21996 = C0606.m2199(i10 << 3);
                        m22002 = C0606.m2200(m22692);
                        i9 += m22002 + m21996;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    } else {
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                case 64:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        i9 = AbstractC0001.m18(i10 << 3, 4, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 65:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        i9 = AbstractC0001.m18(i10 << 3, 8, i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 66:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        int m22693 = m2269(j, abstractC06012);
                        i9 = AbstractC0001.m18((m22693 >> 31) ^ (m22693 + m22693), C0606.m2199(i10 << 3), i9);
                    }
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
                case 67:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        long m22733 = m2273(j, abstractC06012);
                        m21996 = C0606.m2199(i10 << 3);
                        m22002 = C0606.m2200((m22733 >> 63) ^ (m22733 + m22733));
                        i9 += m22002 + m21996;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    } else {
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                case 68:
                    if (c0644.m2284(i10, i7, abstractC06012)) {
                        AbstractC0601 abstractC06015 = (AbstractC0601) unsafe.getObject(abstractC06012, j);
                        InterfaceC0571 m22876 = c0644.m2287(i7);
                        int m219915 = C0606.m2199(i10 << 3);
                        i3 = m219915 + m219915;
                        mo2048 = abstractC06015.mo2048(m22876);
                        i2 = mo2048 + i3;
                        i9 += i2;
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    } else {
                        i7 += 3;
                        c0644 = this;
                        abstractC06012 = abstractC0601;
                        i5 = 1048575;
                    }
                default:
                    i7 += 3;
                    c0644 = this;
                    abstractC06012 = abstractC0601;
                    i5 = 1048575;
            }
        }
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final boolean m2289(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m2276(i, obj) : (i3 & i4) != 0;
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ⁱˊ */
    public final void mo2150(Object obj) {
        if (!m2274(obj)) {
            return;
        }
        if (obj instanceof AbstractC0529) {
            AbstractC0529 abstractC0529 = (AbstractC0529) obj;
            abstractC0529.m2049();
            abstractC0529.zza = 0;
            abstractC0529.m2044();
        }
        int i = 0;
        while (true) {
            int[] iArr = this.f2501;
            if (i >= iArr.length) {
                this.f2494.getClass();
                C0650 c0650 = ((AbstractC0529) obj).zzc;
                if (c0650.f2513) {
                    c0650.f2513 = false;
                    return;
                }
                return;
            }
            int m2275 = m2275(i);
            int i2 = 1048575 & m2275;
            int m2271 = m2271(m2275);
            long j = i2;
            if (m2271 != 9) {
                if (m2271 != 60 && m2271 != 68) {
                    switch (m2271) {
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 38:
                        case 39:
                        case 40:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 45:
                        case 46:
                        case 47:
                        case 48:
                        case 49:
                            AbstractC0556 abstractC0556 = (AbstractC0556) ((InterfaceC0543) AbstractC0641.m2264(j, obj));
                            if (!abstractC0556.f2342) {
                                break;
                            } else {
                                abstractC0556.f2342 = false;
                                break;
                            }
                        case 50:
                            Unsafe unsafe = f2493;
                            Object object = unsafe.getObject(obj, j);
                            if (object == null) {
                                break;
                            } else {
                                ((C0546) object).f2324 = false;
                                unsafe.putObject(obj, j, object);
                                break;
                            }
                    }
                } else if (m2284(iArr[i], i, obj)) {
                    m2287(i).mo2150(f2493.getObject(obj, j));
                }
                i += 3;
            }
            if (m2276(i, obj)) {
                m2287(i).mo2150(f2493.getObject(obj, j));
            }
            i += 3;
        }
    }

    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ﹳٴ */
    public final AbstractC0529 mo2151() {
        return (AbstractC0529) ((AbstractC0529) this.f2497).mo2022(4);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m2290(int i, Object obj) {
        int i2 = this.f2501[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        AbstractC0641.m2256(j, obj, (1 << (i2 >>> 20)) | AbstractC0641.m2260(j, obj));
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x01ea, code lost:
    
        if (r2 != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00d9, code lost:
    
        if (r2 != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00db, code lost:
    
        r6 = 1231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00dc, code lost:
    
        r1 = r6 + r1;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001e. Please report as an issue. */
    @Override // com.google.android.gms.internal.play_billing.InterfaceC0571
    /* renamed from: ﾞᴵ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo2152(com.google.android.gms.internal.play_billing.AbstractC0529 r11) {
        /*
            Method dump skipped, instructions count: 726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.C0644.mo2152(com.google.android.gms.internal.play_billing.ʼـ):int");
    }
}
