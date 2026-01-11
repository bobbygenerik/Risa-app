package com.google.crypto.tink.shaded.protobuf;

import android.support.v4.media.session.AbstractC0001;
import androidx.datastore.preferences.protobuf.AbstractC0016;
import com.google.android.gms.internal.measurement.C0317;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import p137.AbstractC2305;
import p223.C3056;
import sun.misc.Unsafe;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ᵔٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0743 implements InterfaceC0711 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int f3049;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f3050;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C0722 f3051;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f3052;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C0739 f3053;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AbstractC0749 f3054;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C0700 f3055;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int[] f3056;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f3057;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object[] f3058;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int[] f3059;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final AbstractC0714 f3060;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f3061;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static final int[] f3048 = new int[0];

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static final Unsafe f3047 = AbstractC0733.m2611();

    public C0743(int[] iArr, Object[] objArr, int i, int i2, AbstractC0749 abstractC0749, int[] iArr2, int i3, int i4, C0722 c0722, C0700 c0700, AbstractC0714 abstractC0714, C0698 c0698, C0739 c0739) {
        this.f3059 = iArr;
        this.f3058 = objArr;
        this.f3050 = i;
        this.f3052 = i2;
        this.f3061 = abstractC0749 instanceof AbstractC0725;
        this.f3056 = iArr2;
        this.f3057 = i3;
        this.f3049 = i4;
        this.f3051 = c0722;
        this.f3055 = c0700;
        this.f3060 = abstractC0714;
        this.f3054 = abstractC0749;
        this.f3053 = c0739;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static long m2658(long j, Object obj) {
        return ((Long) AbstractC0733.f3024.m2533(j, obj)).longValue();
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static long m2659(int i) {
        return i & 1048575;
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public static int m2660(int i) {
        return (i & 267386880) >>> 20;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static boolean m2661(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof AbstractC0725) {
            return ((AbstractC0725) obj).m2564();
        }
        return true;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static int m2662(long j, Object obj) {
        return ((Integer) AbstractC0733.f3024.m2533(j, obj)).intValue();
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public static Field m2663(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            StringBuilder m5370 = AbstractC2305.m5370("Field ", str, " for ");
            m5370.append(cls.getName());
            m5370.append(" not found. Known fields are ");
            m5370.append(Arrays.toString(declaredFields));
            throw new RuntimeException(m5370.toString());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:107:0x0334  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0275  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x025e  */
    /* renamed from: ᵢˏ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.crypto.tink.shaded.protobuf.C0743 m2664(com.google.crypto.tink.shaded.protobuf.C0748 r34, com.google.crypto.tink.shaded.protobuf.C0722 r35, com.google.crypto.tink.shaded.protobuf.C0700 r36, com.google.crypto.tink.shaded.protobuf.AbstractC0714 r37, com.google.crypto.tink.shaded.protobuf.C0698 r38, com.google.crypto.tink.shaded.protobuf.C0739 r39) {
        /*
            Method dump skipped, instructions count: 1019
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.C0743.m2664(com.google.crypto.tink.shaded.protobuf.ﹳـ, com.google.crypto.tink.shaded.protobuf.ˑٴ, com.google.crypto.tink.shaded.protobuf.ʽʽ, com.google.crypto.tink.shaded.protobuf.ˉـ, com.google.crypto.tink.shaded.protobuf.ʼᐧ, com.google.crypto.tink.shaded.protobuf.ᵎⁱ):com.google.crypto.tink.shaded.protobuf.ᵔٴ");
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static void m2665(Object obj) {
        if (m2661(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + obj);
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m2666(Object obj, int i, Object obj2) {
        if (m2692(i, obj2)) {
            long m2668 = m2668(i) & 1048575;
            Unsafe unsafe = f3047;
            Object object = unsafe.getObject(obj2, m2668);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f3059[i] + " is present but null: " + obj2);
            }
            InterfaceC0711 m2669 = m2669(i);
            if (!m2692(i, obj)) {
                if (m2661(object)) {
                    Object mo2517 = m2669.mo2517();
                    m2669.mo2522(mo2517, object);
                    unsafe.putObject(obj, m2668, mo2517);
                } else {
                    unsafe.putObject(obj, m2668, object);
                }
                m2672(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, m2668);
            if (!m2661(object2)) {
                Object mo25172 = m2669.mo2517();
                m2669.mo2522(mo25172, object2);
                unsafe.putObject(obj, m2668, mo25172);
                object2 = mo25172;
            }
            m2669.mo2522(object2, object);
        }
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final Object m2667(int i, int i2, Object obj) {
        InterfaceC0711 m2669 = m2669(i2);
        if (!m2680(i, i2, obj)) {
            return m2669.mo2517();
        }
        Object object = f3047.getObject(obj, m2668(i2) & 1048575);
        if (m2661(object)) {
            return object;
        }
        Object mo2517 = m2669.mo2517();
        if (object != null) {
            m2669.mo2522(mo2517, object);
        }
        return mo2517;
    }

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final int m2668(int i) {
        return this.f3059[i + 1];
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ʼˎ */
    public final void mo2514(Object obj, C0729 c0729) {
        c0729.getClass();
        m2683(obj, c0729);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final InterfaceC0711 m2669(int i) {
        int i2 = (i / 3) * 2;
        Object[] objArr = this.f3058;
        InterfaceC0711 interfaceC0711 = (InterfaceC0711) objArr[i2];
        if (interfaceC0711 != null) {
            return interfaceC0711;
        }
        InterfaceC0711 m2472 = C0696.f2964.m2472((Class) objArr[i2 + 1]);
        objArr[i2] = m2472;
        return m2472;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ʽ */
    public final boolean mo2515(Object obj) {
        int i;
        int i2;
        int i3;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (i6 < this.f3057) {
            int i7 = this.f3056[i6];
            int[] iArr = this.f3059;
            int i8 = iArr[i7];
            int m2668 = m2668(i7);
            int i9 = iArr[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i4) {
                if (i10 != 1048575) {
                    i5 = f3047.getInt(obj, i10);
                }
                i2 = i7;
                i3 = i5;
                i = i10;
            } else {
                int i12 = i5;
                i = i4;
                i2 = i7;
                i3 = i12;
            }
            if ((268435456 & m2668) == 0 || m2693(obj, i2, i, i3, i11)) {
                int m2660 = m2660(m2668);
                if (m2660 == 9 || m2660 == 17) {
                    if (m2693(obj, i2, i, i3, i11)) {
                        if (!m2669(i2).mo2515(AbstractC0733.f3024.m2533(m2668 & 1048575, obj))) {
                        }
                    } else {
                        continue;
                    }
                    i6++;
                    i4 = i;
                    i5 = i3;
                } else {
                    if (m2660 != 27) {
                        if (m2660 == 60 || m2660 == 68) {
                            if (m2680(i8, i2, obj)) {
                                if (!m2669(i2).mo2515(AbstractC0733.f3024.m2533(m2668 & 1048575, obj))) {
                                }
                            } else {
                                continue;
                            }
                        } else if (m2660 != 49) {
                            if (m2660 != 50) {
                                continue;
                            } else {
                                Object m2533 = AbstractC0733.f3024.m2533(m2668 & 1048575, obj);
                                this.f3053.getClass();
                                if (!((C0715) m2533).isEmpty()) {
                                    AbstractC0001.m3(m2676(i2));
                                    throw null;
                                }
                            }
                        }
                        i6++;
                        i4 = i;
                        i5 = i3;
                    }
                    List list = (List) AbstractC0733.f3024.m2533(m2668 & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        InterfaceC0711 m2669 = m2669(i2);
                        for (int i13 = 0; i13 < list.size(); i13++) {
                            if (m2669.mo2515(list.get(i13))) {
                            }
                        }
                    }
                    i6++;
                    i4 = i;
                    i5 = i3;
                }
            }
            return false;
        }
        return true;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m2670(Object obj, int i, Object obj2) {
        long m2668 = m2668(i) & 1048575;
        Object m2533 = AbstractC0733.f3024.m2533(m2668, obj);
        C0739 c0739 = this.f3053;
        if (m2533 != null) {
            c0739.getClass();
            if (!((C0715) m2533).f3003) {
                C0715 m2529 = C0715.f3002.m2529();
                C0739.m2653(m2529, m2533);
                AbstractC0733.m2609(m2668, obj, m2529);
                m2533 = m2529;
            }
        } else {
            c0739.getClass();
            m2533 = C0715.f3002.m2529();
            AbstractC0733.m2609(m2668, obj, m2533);
        }
        c0739.getClass();
        AbstractC0001.m3(obj2);
        throw null;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final Object m2671(int i, Object obj) {
        InterfaceC0711 m2669 = m2669(i);
        long m2668 = m2668(i) & 1048575;
        if (!m2692(i, obj)) {
            return m2669.mo2517();
        }
        Object object = f3047.getObject(obj, m2668);
        if (m2661(object)) {
            return object;
        }
        Object mo2517 = m2669.mo2517();
        if (object != null) {
            m2669.mo2522(mo2517, object);
        }
        return mo2517;
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x0216, code lost:
    
        if (r4 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00df, code lost:
    
        if (r4 != false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00e1, code lost:
    
        r8 = 1231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00e2, code lost:
    
        r3 = r8 + r3;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001c. Please report as an issue. */
    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ˆʾ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo2516(com.google.crypto.tink.shaded.protobuf.AbstractC0725 r12) {
        /*
            Method dump skipped, instructions count: 796
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.C0743.mo2516(com.google.crypto.tink.shaded.protobuf.ـˆ):int");
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final void m2672(int i, Object obj) {
        int i2 = this.f3059[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        AbstractC0733.m2618(j, obj, (1 << (i2 >>> 20)) | AbstractC0733.f3024.m2543(j, obj));
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ˈ */
    public final Object mo2517() {
        this.f3051.getClass();
        return ((AbstractC0725) this.f3054).m2569();
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final int m2673(int i, int i2) {
        int[] iArr = this.f3059;
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

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m2674(long j, Object obj, int i) {
        Unsafe unsafe = f3047;
        Object m2676 = m2676(i);
        Object object = unsafe.getObject(obj, j);
        this.f3053.getClass();
        if (!((C0715) object).f3003) {
            C0715 m2529 = C0715.f3002.m2529();
            C0739.m2653(m2529, object);
            unsafe.putObject(obj, j, m2529);
        }
        AbstractC0001.m3(m2676);
        throw null;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m2675(Object obj, int i, Object obj2) {
        int i2 = this.f3059[i];
        if (AbstractC0733.f3024.m2533(m2668(i) & 1048575, obj) == null) {
            return;
        }
        m2690(i);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final Object m2676(int i) {
        return this.f3058[(i / 3) * 2];
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m2677(Object obj, long j, C0730 c0730, InterfaceC0711 interfaceC0711, C0713 c0713) {
        int mo183;
        this.f3055.getClass();
        InterfaceC0746 m2480 = C0700.m2480(j, obj);
        AbstractC0016 abstractC0016 = c0730.f3022;
        int i = c0730.f3021;
        if ((i & 7) != 3) {
            throw InvalidProtocolBufferException.m2461();
        }
        do {
            Object mo2517 = interfaceC0711.mo2517();
            c0730.m2603(mo2517, interfaceC0711, c0713);
            interfaceC0711.mo2521(mo2517);
            m2480.add(mo2517);
            if (abstractC0016.mo205() || c0730.f3020 != 0) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == i);
        c0730.f3020 = mo183;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int m2678(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, C0317 c0317) {
        int i9;
        Unsafe unsafe = f3047;
        long j2 = this.f3059[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(ﹳٴ.ﹳٴ.ʼˎ(i, bArr))));
                int i10 = i + 8;
                unsafe.putInt(obj, j2, i4);
                return i10;
            case 52:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(ﹳٴ.ﹳٴ.ᵔᵢ(i, bArr))));
                int i11 = i + 4;
                unsafe.putInt(obj, j2, i4);
                return i11;
            case 53:
            case 54:
                if (i5 != 0) {
                    return i;
                }
                int i12 = ﹳٴ.ﹳٴ.ˉˆ(bArr, i, c0317);
                unsafe.putObject(obj, j, Long.valueOf(c0317.f1957));
                unsafe.putInt(obj, j2, i4);
                return i12;
            case 55:
            case 62:
                if (i5 != 0) {
                    return i;
                }
                int i13 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i, c0317);
                unsafe.putObject(obj, j, Integer.valueOf(c0317.f1958));
                unsafe.putInt(obj, j2, i4);
                return i13;
            case 56:
            case 65:
                if (i5 != 1) {
                    return i;
                }
                unsafe.putObject(obj, j, Long.valueOf(ﹳٴ.ﹳٴ.ʼˎ(i, bArr)));
                int i14 = i + 8;
                unsafe.putInt(obj, j2, i4);
                return i14;
            case 57:
            case 64:
                if (i5 != 5) {
                    return i;
                }
                unsafe.putObject(obj, j, Integer.valueOf(ﹳٴ.ﹳٴ.ᵔᵢ(i, bArr)));
                int i15 = i + 4;
                unsafe.putInt(obj, j2, i4);
                return i15;
            case 58:
                if (i5 != 0) {
                    return i;
                }
                int i16 = ﹳٴ.ﹳٴ.ˉˆ(bArr, i, c0317);
                unsafe.putObject(obj, j, Boolean.valueOf(c0317.f1957 != 0));
                unsafe.putInt(obj, j2, i4);
                return i16;
            case 59:
                if (i5 != 2) {
                    return i;
                }
                int i17 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i, c0317);
                int i18 = c0317.f1958;
                if (i18 == 0) {
                    unsafe.putObject(obj, j, "");
                } else {
                    if ((i6 & 536870912) != 0) {
                        if (AbstractC0727.f3014.ᵔי(bArr, i17, i17 + i18) != 0) {
                            throw InvalidProtocolBufferException.m2465();
                        }
                    }
                    unsafe.putObject(obj, j, new String(bArr, i17, i18, AbstractC0702.f2979));
                    i17 += i18;
                }
                unsafe.putInt(obj, j2, i4);
                return i17;
            case 60:
                i9 = i;
                if (i5 == 2) {
                    Object m2667 = m2667(i4, i8, obj);
                    int i19 = ﹳٴ.ﹳٴ.ᴵᵔ(m2667, m2669(i8), bArr, i9, i2, c0317);
                    m2679(obj, i4, m2667, i8);
                    return i19;
                }
                break;
            case 61:
                i9 = i;
                if (i5 == 2) {
                    int i20 = ﹳٴ.ﹳٴ.ᵎﹶ(bArr, i9, c0317);
                    unsafe.putObject(obj, j, c0317.f1955);
                    unsafe.putInt(obj, j2, i4);
                    return i20;
                }
                break;
            case 63:
                i9 = i;
                if (i5 == 0) {
                    int i21 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i9, c0317);
                    int i22 = c0317.f1958;
                    m2690(i8);
                    unsafe.putObject(obj, j, Integer.valueOf(i22));
                    unsafe.putInt(obj, j2, i4);
                    return i21;
                }
                break;
            case 66:
                i9 = i;
                if (i5 == 0) {
                    int i23 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i9, c0317);
                    unsafe.putObject(obj, j, Integer.valueOf(AbstractC0016.m225(c0317.f1958)));
                    unsafe.putInt(obj, j2, i4);
                    return i23;
                }
                break;
            case 67:
                i9 = i;
                if (i5 == 0) {
                    int i24 = ﹳٴ.ﹳٴ.ˉˆ(bArr, i9, c0317);
                    unsafe.putObject(obj, j, Long.valueOf(AbstractC0016.m226(c0317.f1957)));
                    unsafe.putInt(obj, j2, i4);
                    return i24;
                }
                break;
            case 68:
                if (i5 == 3) {
                    Object m26672 = m2667(i4, i8, obj);
                    int i25 = ﹳٴ.ﹳٴ.ˈٴ(m26672, m2669(i8), bArr, i, i2, (i3 & (-8)) | 4, c0317);
                    m2679(obj, i4, m26672, i8);
                    return i25;
                }
            default:
                return i;
        }
        return i9;
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final void m2679(Object obj, int i, Object obj2, int i2) {
        f3047.putObject(obj, m2668(i2) & 1048575, obj2);
        m2691(i, i2, obj);
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean m2680(int i, int i2, Object obj) {
        return AbstractC0733.f3024.m2543((long) (this.f3059[i2 + 2] & 1048575), obj) == i;
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final void m2681(Object obj, int i, Object obj2) {
        f3047.putObject(obj, m2668(i) & 1048575, obj2);
        m2672(i, obj);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x0047. Please report as an issue. */
    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ˑﹳ */
    public final int mo2518(AbstractC0725 abstractC0725) {
        int i;
        int m2708;
        int m27082;
        int m27083;
        int m2706;
        int m27084;
        int m27062;
        int m27085;
        int m27086;
        int m27087;
        int mo2572;
        int m2705;
        int m2703;
        int m27088;
        int mo25722;
        int m2628;
        int m27089;
        int size;
        int m2626;
        int m270810;
        int m270811;
        int size2;
        int m270812;
        int m27052;
        int i2;
        int m270813;
        int m270814;
        int m27063;
        int m270815;
        int m27064;
        int i3;
        C0743 c0743 = this;
        AbstractC0725 abstractC07252 = abstractC0725;
        Unsafe unsafe = f3047;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 1048575;
        while (true) {
            int[] iArr = c0743.f3059;
            if (i4 >= iArr.length) {
                ((C0705) c0743.f3060).getClass();
                return abstractC07252.unknownFields.m2494() + i6;
            }
            int m2668 = c0743.m2668(i4);
            int m2660 = m2660(m2668);
            int i8 = iArr[i4];
            int i9 = iArr[i4 + 2];
            int i10 = i9 & 1048575;
            if (m2660 <= 17) {
                if (i10 != i7) {
                    i5 = i10 == 1048575 ? 0 : unsafe.getInt(abstractC07252, i10);
                    i7 = i10;
                }
                i = 1 << (i9 >>> 20);
            } else {
                i = 0;
            }
            long j = m2668 & 1048575;
            if (m2660 >= EnumC0750.f3074.f3076) {
                int i11 = EnumC0750.f3072.f3076;
            }
            switch (m2660) {
                case 0:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        m2708 = C0751.m2708(i8);
                        m2628 = m2708 + 8;
                        i6 += m2628;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 1:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        m27082 = C0751.m2708(i8);
                        m27086 = m27082 + 4;
                        i6 += m27086;
                    }
                    c0743 = this;
                    abstractC07252 = abstractC0725;
                    i4 += 3;
                case 2:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        long j2 = unsafe.getLong(abstractC07252, j);
                        m27083 = C0751.m2708(i8);
                        m2706 = C0751.m2706(j2);
                        i6 += m2706 + m27083;
                    }
                    c0743 = this;
                    i4 += 3;
                case 3:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        long j3 = unsafe.getLong(abstractC07252, j);
                        m27083 = C0751.m2708(i8);
                        m2706 = C0751.m2706(j3);
                        i6 += m2706 + m27083;
                    }
                    c0743 = this;
                    i4 += 3;
                case 4:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        int i12 = unsafe.getInt(abstractC07252, j);
                        m27084 = C0751.m2708(i8);
                        m27062 = C0751.m2706(i12);
                        m2703 = m27062 + m27084;
                        i6 += m2703;
                    }
                    c0743 = this;
                    i4 += 3;
                case 5:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        m27085 = C0751.m2708(i8);
                        m27086 = m27085 + 8;
                        i6 += m27086;
                    }
                    c0743 = this;
                    abstractC07252 = abstractC0725;
                    i4 += 3;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        m27082 = C0751.m2708(i8);
                        m27086 = m27082 + 4;
                        i6 += m27086;
                    }
                    c0743 = this;
                    abstractC07252 = abstractC0725;
                    i4 += 3;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        m27086 = C0751.m2708(i8) + 1;
                        i6 += m27086;
                    }
                    c0743 = this;
                    abstractC07252 = abstractC0725;
                    i4 += 3;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        Object object = unsafe.getObject(abstractC07252, j);
                        i6 = (object instanceof AbstractC0744 ? C0751.m2703(i8, (AbstractC0744) object) : C0751.m2704((String) object) + C0751.m2708(i8)) + i6;
                    }
                    c0743 = this;
                    i4 += 3;
                case 9:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        Object object2 = unsafe.getObject(abstractC07252, j);
                        InterfaceC0711 m2669 = c0743.m2669(i4);
                        Class cls = AbstractC0735.f3044;
                        m27087 = C0751.m2708(i8);
                        mo2572 = ((AbstractC0749) object2).mo2572(m2669);
                        m2705 = C0751.m2705(mo2572);
                        i3 = m2705 + mo2572 + m27087;
                        i6 += i3;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 10:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        m2703 = C0751.m2703(i8, (AbstractC0744) unsafe.getObject(abstractC07252, j));
                        i6 += m2703;
                    }
                    c0743 = this;
                    i4 += 3;
                case 11:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        int i13 = unsafe.getInt(abstractC07252, j);
                        m27084 = C0751.m2708(i8);
                        m27062 = C0751.m2705(i13);
                        m2703 = m27062 + m27084;
                        i6 += m2703;
                    }
                    c0743 = this;
                    i4 += 3;
                case 12:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        int i14 = unsafe.getInt(abstractC07252, j);
                        m27084 = C0751.m2708(i8);
                        m27062 = C0751.m2706(i14);
                        m2703 = m27062 + m27084;
                        i6 += m2703;
                    }
                    c0743 = this;
                    i4 += 3;
                case 13:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        m27082 = C0751.m2708(i8);
                        m27086 = m27082 + 4;
                        i6 += m27086;
                    }
                    c0743 = this;
                    abstractC07252 = abstractC0725;
                    i4 += 3;
                case 14:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        m27085 = C0751.m2708(i8);
                        m27086 = m27085 + 8;
                        i6 += m27086;
                    }
                    c0743 = this;
                    abstractC07252 = abstractC0725;
                    i4 += 3;
                case 15:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        int i15 = unsafe.getInt(abstractC07252, j);
                        m27084 = C0751.m2708(i8);
                        m27062 = C0751.m2707(i15);
                        m2703 = m27062 + m27084;
                        i6 += m2703;
                    }
                    c0743 = this;
                    i4 += 3;
                case 16:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        long j4 = unsafe.getLong(abstractC07252, j);
                        m27083 = C0751.m2708(i8);
                        m2706 = C0751.m2702(j4);
                        i6 += m2706 + m27083;
                    }
                    c0743 = this;
                    i4 += 3;
                case 17:
                    if (c0743.m2693(abstractC07252, i4, i7, i5, i)) {
                        AbstractC0749 abstractC0749 = (AbstractC0749) unsafe.getObject(abstractC07252, j);
                        InterfaceC0711 m26692 = c0743.m2669(i4);
                        m27088 = C0751.m2708(i8) * 2;
                        mo25722 = abstractC0749.mo2572(m26692);
                        m2628 = mo25722 + m27088;
                        i6 += m2628;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 18:
                    m2628 = AbstractC0735.m2628(i8, (List) unsafe.getObject(abstractC07252, j));
                    i6 += m2628;
                    i4 += 3;
                case 19:
                    m2628 = AbstractC0735.m2645(i8, (List) unsafe.getObject(abstractC07252, j));
                    i6 += m2628;
                    i4 += 3;
                case 20:
                    List list = (List) unsafe.getObject(abstractC07252, j);
                    Class cls2 = AbstractC0735.f3044;
                    if (list.size() != 0) {
                        m27089 = (C0751.m2708(i8) * list.size()) + AbstractC0735.m2636(list);
                        i6 += m27089;
                        i4 += 3;
                    }
                    m27089 = 0;
                    i6 += m27089;
                    i4 += 3;
                case 21:
                    List list2 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls3 = AbstractC0735.f3044;
                    size = list2.size();
                    if (size != 0) {
                        m2626 = AbstractC0735.m2626(list2);
                        m270810 = C0751.m2708(i8);
                        m27089 = (m270810 * size) + m2626;
                        i6 += m27089;
                        i4 += 3;
                    }
                    m27089 = 0;
                    i6 += m27089;
                    i4 += 3;
                case 22:
                    List list3 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls4 = AbstractC0735.f3044;
                    size = list3.size();
                    if (size != 0) {
                        m2626 = AbstractC0735.m2632(list3);
                        m270810 = C0751.m2708(i8);
                        m27089 = (m270810 * size) + m2626;
                        i6 += m27089;
                        i4 += 3;
                    }
                    m27089 = 0;
                    i6 += m27089;
                    i4 += 3;
                case 23:
                    m2628 = AbstractC0735.m2628(i8, (List) unsafe.getObject(abstractC07252, j));
                    i6 += m2628;
                    i4 += 3;
                case 24:
                    m2628 = AbstractC0735.m2645(i8, (List) unsafe.getObject(abstractC07252, j));
                    i6 += m2628;
                    i4 += 3;
                case 25:
                    List list4 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls5 = AbstractC0735.f3044;
                    int size3 = list4.size();
                    i6 += size3 == 0 ? 0 : (C0751.m2708(i8) + 1) * size3;
                    i4 += 3;
                case 26:
                    List list5 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls6 = AbstractC0735.f3044;
                    int size4 = list5.size();
                    if (size4 != 0) {
                        m27089 = C0751.m2708(i8) * size4;
                        for (int i16 = 0; i16 < size4; i16++) {
                            Object obj = list5.get(i16);
                            if (obj instanceof AbstractC0744) {
                                int size5 = ((AbstractC0744) obj).size();
                                m27089 = C0751.m2705(size5) + size5 + m27089;
                            } else {
                                m27089 = C0751.m2704((String) obj) + m27089;
                            }
                        }
                        i6 += m27089;
                        i4 += 3;
                    }
                    m27089 = 0;
                    i6 += m27089;
                    i4 += 3;
                case 27:
                    List list6 = (List) unsafe.getObject(abstractC07252, j);
                    InterfaceC0711 m26693 = c0743.m2669(i4);
                    Class cls7 = AbstractC0735.f3044;
                    int size6 = list6.size();
                    if (size6 == 0) {
                        m270811 = 0;
                    } else {
                        m270811 = C0751.m2708(i8) * size6;
                        for (int i17 = 0; i17 < size6; i17++) {
                            int mo25723 = ((AbstractC0749) list6.get(i17)).mo2572(m26693);
                            m270811 += C0751.m2705(mo25723) + mo25723;
                        }
                    }
                    i6 += m270811;
                    i4 += 3;
                case 28:
                    List list7 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls8 = AbstractC0735.f3044;
                    int size7 = list7.size();
                    if (size7 != 0) {
                        m27089 = C0751.m2708(i8) * size7;
                        for (int i18 = 0; i18 < list7.size(); i18++) {
                            int size8 = ((AbstractC0744) list7.get(i18)).size();
                            m27089 += C0751.m2705(size8) + size8;
                        }
                        i6 += m27089;
                        i4 += 3;
                    }
                    m27089 = 0;
                    i6 += m27089;
                    i4 += 3;
                case 29:
                    List list8 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls9 = AbstractC0735.f3044;
                    size = list8.size();
                    if (size != 0) {
                        m2626 = AbstractC0735.m2642(list8);
                        m270810 = C0751.m2708(i8);
                        m27089 = (m270810 * size) + m2626;
                        i6 += m27089;
                        i4 += 3;
                    }
                    m27089 = 0;
                    i6 += m27089;
                    i4 += 3;
                case 30:
                    List list9 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls10 = AbstractC0735.f3044;
                    size = list9.size();
                    if (size != 0) {
                        m2626 = AbstractC0735.m2646(list9);
                        m270810 = C0751.m2708(i8);
                        m27089 = (m270810 * size) + m2626;
                        i6 += m27089;
                        i4 += 3;
                    }
                    m27089 = 0;
                    i6 += m27089;
                    i4 += 3;
                case 31:
                    m2628 = AbstractC0735.m2645(i8, (List) unsafe.getObject(abstractC07252, j));
                    i6 += m2628;
                    i4 += 3;
                case 32:
                    m2628 = AbstractC0735.m2628(i8, (List) unsafe.getObject(abstractC07252, j));
                    i6 += m2628;
                    i4 += 3;
                case 33:
                    List list10 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls11 = AbstractC0735.f3044;
                    size = list10.size();
                    if (size != 0) {
                        m2626 = AbstractC0735.m2649(list10);
                        m270810 = C0751.m2708(i8);
                        m27089 = (m270810 * size) + m2626;
                        i6 += m27089;
                        i4 += 3;
                    }
                    m27089 = 0;
                    i6 += m27089;
                    i4 += 3;
                case 34:
                    List list11 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls12 = AbstractC0735.f3044;
                    size = list11.size();
                    if (size != 0) {
                        m2626 = AbstractC0735.m2640(list11);
                        m270810 = C0751.m2708(i8);
                        m27089 = (m270810 * size) + m2626;
                        i6 += m27089;
                        i4 += 3;
                    }
                    m27089 = 0;
                    i6 += m27089;
                    i4 += 3;
                case 35:
                    List list12 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls13 = AbstractC0735.f3044;
                    size2 = list12.size() * 8;
                    if (size2 > 0) {
                        m270812 = C0751.m2708(i8);
                        m27052 = C0751.m2705(size2);
                        i6 += m27052 + m270812 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 36:
                    List list13 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls14 = AbstractC0735.f3044;
                    size2 = list13.size() * 4;
                    if (size2 > 0) {
                        m270812 = C0751.m2708(i8);
                        m27052 = C0751.m2705(size2);
                        i6 += m27052 + m270812 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 37:
                    size2 = AbstractC0735.m2636((List) unsafe.getObject(abstractC07252, j));
                    if (size2 > 0) {
                        m270812 = C0751.m2708(i8);
                        m27052 = C0751.m2705(size2);
                        i6 += m27052 + m270812 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 38:
                    size2 = AbstractC0735.m2626((List) unsafe.getObject(abstractC07252, j));
                    if (size2 > 0) {
                        m270812 = C0751.m2708(i8);
                        m27052 = C0751.m2705(size2);
                        i6 += m27052 + m270812 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 39:
                    size2 = AbstractC0735.m2632((List) unsafe.getObject(abstractC07252, j));
                    if (size2 > 0) {
                        m270812 = C0751.m2708(i8);
                        m27052 = C0751.m2705(size2);
                        i6 += m27052 + m270812 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 40:
                    List list14 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls15 = AbstractC0735.f3044;
                    size2 = list14.size() * 8;
                    if (size2 > 0) {
                        m270812 = C0751.m2708(i8);
                        m27052 = C0751.m2705(size2);
                        i6 += m27052 + m270812 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 41:
                    List list15 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls16 = AbstractC0735.f3044;
                    size2 = list15.size() * 4;
                    if (size2 > 0) {
                        m270812 = C0751.m2708(i8);
                        m27052 = C0751.m2705(size2);
                        i6 += m27052 + m270812 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 42:
                    List list16 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls17 = AbstractC0735.f3044;
                    size2 = list16.size();
                    if (size2 > 0) {
                        m270812 = C0751.m2708(i8);
                        m27052 = C0751.m2705(size2);
                        i6 += m27052 + m270812 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 43:
                    size2 = AbstractC0735.m2642((List) unsafe.getObject(abstractC07252, j));
                    if (size2 > 0) {
                        m270812 = C0751.m2708(i8);
                        m27052 = C0751.m2705(size2);
                        i6 += m27052 + m270812 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 44:
                    size2 = AbstractC0735.m2646((List) unsafe.getObject(abstractC07252, j));
                    if (size2 > 0) {
                        m270812 = C0751.m2708(i8);
                        m27052 = C0751.m2705(size2);
                        i6 += m27052 + m270812 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 45:
                    List list17 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls18 = AbstractC0735.f3044;
                    size2 = list17.size() * 4;
                    if (size2 > 0) {
                        m270812 = C0751.m2708(i8);
                        m27052 = C0751.m2705(size2);
                        i6 += m27052 + m270812 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 46:
                    List list18 = (List) unsafe.getObject(abstractC07252, j);
                    Class cls19 = AbstractC0735.f3044;
                    size2 = list18.size() * 8;
                    if (size2 > 0) {
                        m270812 = C0751.m2708(i8);
                        m27052 = C0751.m2705(size2);
                        i6 += m27052 + m270812 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 47:
                    size2 = AbstractC0735.m2649((List) unsafe.getObject(abstractC07252, j));
                    if (size2 > 0) {
                        m270812 = C0751.m2708(i8);
                        m27052 = C0751.m2705(size2);
                        i6 += m27052 + m270812 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 48:
                    size2 = AbstractC0735.m2640((List) unsafe.getObject(abstractC07252, j));
                    if (size2 > 0) {
                        m270812 = C0751.m2708(i8);
                        m27052 = C0751.m2705(size2);
                        i6 += m27052 + m270812 + size2;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 49:
                    List list19 = (List) unsafe.getObject(abstractC07252, j);
                    InterfaceC0711 m26694 = c0743.m2669(i4);
                    Class cls20 = AbstractC0735.f3044;
                    int size9 = list19.size();
                    if (size9 == 0) {
                        i2 = 0;
                    } else {
                        i2 = 0;
                        for (int i19 = 0; i19 < size9; i19++) {
                            i2 += ((AbstractC0749) list19.get(i19)).mo2572(m26694) + (C0751.m2708(i8) * 2);
                        }
                    }
                    i6 += i2;
                    i4 += 3;
                case 50:
                    Object object3 = unsafe.getObject(abstractC07252, j);
                    Object m2676 = c0743.m2676(i4);
                    c0743.f3053.getClass();
                    C0715 c0715 = (C0715) object3;
                    if (m2676 != null) {
                        throw new ClassCastException();
                    }
                    if (c0715.isEmpty()) {
                        continue;
                    } else {
                        Iterator it = c0715.entrySet().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            entry.getKey();
                            entry.getValue();
                            throw null;
                        }
                    }
                    i4 += 3;
                case 51:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        m2708 = C0751.m2708(i8);
                        m2628 = m2708 + 8;
                        i6 += m2628;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 52:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        m270813 = C0751.m2708(i8);
                        m2628 = m270813 + 4;
                        i6 += m2628;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 53:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        long m2658 = m2658(j, abstractC07252);
                        m270814 = C0751.m2708(i8);
                        m27063 = C0751.m2706(m2658);
                        i3 = m27063 + m270814;
                        i6 += i3;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 54:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        long m26582 = m2658(j, abstractC07252);
                        m270814 = C0751.m2708(i8);
                        m27063 = C0751.m2706(m26582);
                        i3 = m27063 + m270814;
                        i6 += i3;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 55:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        int m2662 = m2662(j, abstractC07252);
                        m270815 = C0751.m2708(i8);
                        m27064 = C0751.m2706(m2662);
                        m2628 = m27064 + m270815;
                        i6 += m2628;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 56:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        m2708 = C0751.m2708(i8);
                        m2628 = m2708 + 8;
                        i6 += m2628;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 57:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        m270813 = C0751.m2708(i8);
                        m2628 = m270813 + 4;
                        i6 += m2628;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 58:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        m2628 = C0751.m2708(i8) + 1;
                        i6 += m2628;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 59:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        Object object4 = unsafe.getObject(abstractC07252, j);
                        i6 = (object4 instanceof AbstractC0744 ? C0751.m2703(i8, (AbstractC0744) object4) : C0751.m2704((String) object4) + C0751.m2708(i8)) + i6;
                    }
                    i4 += 3;
                case 60:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        Object object5 = unsafe.getObject(abstractC07252, j);
                        InterfaceC0711 m26695 = c0743.m2669(i4);
                        Class cls21 = AbstractC0735.f3044;
                        m27087 = C0751.m2708(i8);
                        mo2572 = ((AbstractC0749) object5).mo2572(m26695);
                        m2705 = C0751.m2705(mo2572);
                        i3 = m2705 + mo2572 + m27087;
                        i6 += i3;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 61:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        m2628 = C0751.m2703(i8, (AbstractC0744) unsafe.getObject(abstractC07252, j));
                        i6 += m2628;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 62:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        int m26622 = m2662(j, abstractC07252);
                        m270815 = C0751.m2708(i8);
                        m27064 = C0751.m2705(m26622);
                        m2628 = m27064 + m270815;
                        i6 += m2628;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 63:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        int m26623 = m2662(j, abstractC07252);
                        m270815 = C0751.m2708(i8);
                        m27064 = C0751.m2706(m26623);
                        m2628 = m27064 + m270815;
                        i6 += m2628;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 64:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        m270813 = C0751.m2708(i8);
                        m2628 = m270813 + 4;
                        i6 += m2628;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 65:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        m2708 = C0751.m2708(i8);
                        m2628 = m2708 + 8;
                        i6 += m2628;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 66:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        int m26624 = m2662(j, abstractC07252);
                        m270815 = C0751.m2708(i8);
                        m27064 = C0751.m2707(m26624);
                        m2628 = m27064 + m270815;
                        i6 += m2628;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 67:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        long m26583 = m2658(j, abstractC07252);
                        m270814 = C0751.m2708(i8);
                        m27063 = C0751.m2702(m26583);
                        i3 = m27063 + m270814;
                        i6 += i3;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                case 68:
                    if (c0743.m2680(i8, i4, abstractC07252)) {
                        AbstractC0749 abstractC07492 = (AbstractC0749) unsafe.getObject(abstractC07252, j);
                        InterfaceC0711 m26696 = c0743.m2669(i4);
                        m27088 = C0751.m2708(i8) * 2;
                        mo25722 = abstractC07492.mo2572(m26696);
                        m2628 = mo25722 + m27088;
                        i6 += m2628;
                        i4 += 3;
                    } else {
                        i4 += 3;
                    }
                default:
                    i4 += 3;
            }
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m2682(Object obj, int i, Object obj2) {
        int[] iArr = this.f3059;
        int i2 = iArr[i];
        if (m2680(i2, i, obj2)) {
            long m2668 = m2668(i) & 1048575;
            Unsafe unsafe = f3047;
            Object object = unsafe.getObject(obj2, m2668);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2);
            }
            InterfaceC0711 m2669 = m2669(i);
            if (!m2680(i2, i, obj)) {
                if (m2661(object)) {
                    Object mo2517 = m2669.mo2517();
                    m2669.mo2522(mo2517, object);
                    unsafe.putObject(obj, m2668, mo2517);
                } else {
                    unsafe.putObject(obj, m2668, object);
                }
                m2691(i2, i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, m2668);
            if (!m2661(object2)) {
                Object mo25172 = m2669.mo2517();
                m2669.mo2522(mo25172, object2);
                unsafe.putObject(obj, m2668, mo25172);
                object2 = mo25172;
            }
            m2669.mo2522(object2, object);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0061. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1, types: [long] */
    /* JADX WARN: Type inference failed for: r16v3 */
    /* renamed from: ـˏ, reason: contains not printable characters */
    public final void m2683(Object obj, C0729 c0729) {
        int i;
        boolean z;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        boolean z2;
        int i7;
        int i8;
        int i9;
        boolean z3;
        C0743 c0743 = this;
        int[] iArr = c0743.f3059;
        int length = iArr.length;
        Unsafe unsafe = f3047;
        int i10 = 1048575;
        int i11 = 1048575;
        int i12 = 0;
        int i13 = 0;
        while (i12 < length) {
            int m2668 = c0743.m2668(i12);
            int i14 = iArr[i12];
            int m2660 = m2660(m2668);
            if (m2660 <= 17) {
                int i15 = iArr[i12 + 2];
                z = 1;
                int i16 = i15 & i10;
                if (i16 != i11) {
                    if (i16 == i10) {
                        i = i10;
                        i13 = 0;
                    } else {
                        i = i10;
                        i13 = unsafe.getInt(obj, i16);
                    }
                    i11 = i16;
                } else {
                    i = i10;
                }
                int i17 = i13;
                i2 = i11;
                i3 = m2668;
                i4 = i17;
                i5 = m2660;
                i6 = 1 << (i15 >>> 20);
            } else {
                i = i10;
                z = 1;
                int i18 = i13;
                i2 = i11;
                i3 = m2668;
                i4 = i18;
                i5 = m2660;
                i6 = 0;
            }
            long j = i3 & i;
            int[] iArr2 = iArr;
            int i19 = 2;
            switch (i5) {
                case 0:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        double mo2540 = AbstractC0733.f3024.mo2540(j, obj);
                        C0751 c0751 = (C0751) c0729.f3018;
                        c0751.getClass();
                        c0751.m2720(i14, Double.doubleToRawLongBits(mo2540));
                    }
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 1:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        float mo2551 = AbstractC0733.f3024.mo2551(j, obj);
                        C0751 c07512 = (C0751) c0729.f3018;
                        c07512.getClass();
                        c07512.m2717(i14, Float.floatToRawIntBits(mo2551));
                    }
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 2:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        ((C0751) c0729.f3018).m2709(i14, unsafe.getLong(obj, j));
                    }
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 3:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        ((C0751) c0729.f3018).m2709(i14, unsafe.getLong(obj, j));
                    }
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 4:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        ((C0751) c0729.f3018).m2721(i14, unsafe.getInt(obj, j));
                    }
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 5:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        ((C0751) c0729.f3018).m2720(i14, unsafe.getLong(obj, j));
                    }
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        ((C0751) c0729.f3018).m2717(i14, unsafe.getInt(obj, j));
                    }
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        boolean mo2535 = AbstractC0733.f3024.mo2535(j, obj);
                        C0751 c07513 = (C0751) c0729.f3018;
                        c07513.m2715(i14, 0);
                        c07513.m2712(mo2535 ? (byte) 1 : (byte) 0);
                        c0743 = this;
                        i12 += 3;
                        i11 = i2;
                        i13 = i4;
                        i10 = i;
                        iArr = iArr2;
                    }
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof String) {
                            String str = (String) object;
                            C0751 c07514 = (C0751) c0729.f3018;
                            c07514.m2715(i14, 2);
                            int i20 = c07514.f3082;
                            byte[] bArr = c07514.f3081;
                            int i21 = c07514.f3080;
                            try {
                                int m2705 = C0751.m2705(str.length() * 3);
                                int m27052 = C0751.m2705(str.length());
                                if (m27052 == m2705) {
                                    int i22 = i21 + m27052;
                                    c07514.f3080 = i22;
                                    int i23 = AbstractC0727.f3014.ﾞᴵ(str, bArr, i22, i20 - i22);
                                    c07514.f3080 = i21;
                                    c07514.m2713((i23 - i21) - m27052);
                                    c07514.f3080 = i23;
                                } else {
                                    c07514.m2713(AbstractC0727.m2580(str));
                                    int i24 = c07514.f3080;
                                    c07514.f3080 = AbstractC0727.f3014.ﾞᴵ(str, bArr, i24, i20 - i24);
                                }
                            } catch (C0718 e) {
                                c07514.f3080 = i21;
                                C0751.f3078.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e);
                                byte[] bytes = str.getBytes(AbstractC0702.f2979);
                                try {
                                    c07514.m2713(bytes.length);
                                    c07514.m2719(bytes, 0, bytes.length);
                                } catch (IndexOutOfBoundsException e2) {
                                    throw new CodedOutputStream$OutOfSpaceException(e2);
                                }
                            } catch (IndexOutOfBoundsException e3) {
                                throw new CodedOutputStream$OutOfSpaceException(e3);
                            }
                        } else {
                            AbstractC0744 abstractC0744 = (AbstractC0744) object;
                            C0751 c07515 = (C0751) c0729.f3018;
                            c07515.m2715(i14, 2);
                            c07515.m2713(abstractC0744.size());
                            C0740 c0740 = (C0740) abstractC0744;
                            c07515.m2719(c0740.f3045, c0740.mo2655(), c0740.size());
                        }
                    }
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 9:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        c0729.m2582(i14, unsafe.getObject(obj, j), c0743.m2669(i12));
                    }
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 10:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        AbstractC0744 abstractC07442 = (AbstractC0744) unsafe.getObject(obj, j);
                        C0751 c07516 = (C0751) c0729.f3018;
                        c07516.m2715(i14, 2);
                        c07516.m2713(abstractC07442.size());
                        C0740 c07402 = (C0740) abstractC07442;
                        c07516.m2719(c07402.f3045, c07402.mo2655(), c07402.size());
                    }
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 11:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        ((C0751) c0729.f3018).m2714(i14, unsafe.getInt(obj, j));
                    }
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 12:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        ((C0751) c0729.f3018).m2721(i14, unsafe.getInt(obj, j));
                    }
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 13:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        ((C0751) c0729.f3018).m2717(i14, unsafe.getInt(obj, j));
                    }
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 14:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        ((C0751) c0729.f3018).m2720(i14, unsafe.getLong(obj, j));
                    }
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 15:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        int i25 = unsafe.getInt(obj, j);
                        ((C0751) c0729.f3018).m2714(i14, (i25 >> 31) ^ (i25 << 1));
                    }
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 16:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        long j2 = unsafe.getLong(obj, j);
                        ((C0751) c0729.f3018).m2709(i14, (j2 >> 63) ^ (j2 << 1));
                    }
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 17:
                    if (c0743.m2693(obj, i12, i2, i4, i6)) {
                        c0729.m2583(i14, unsafe.getObject(obj, j), c0743.m2669(i12));
                    }
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 18:
                    z2 = false;
                    AbstractC0735.m2641(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, false);
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 19:
                    z2 = false;
                    AbstractC0735.m2647(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, false);
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 20:
                    z2 = false;
                    AbstractC0735.m2635(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, false);
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 21:
                    z2 = false;
                    AbstractC0735.m2644(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, false);
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 22:
                    z2 = false;
                    AbstractC0735.m2637(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, false);
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 23:
                    z2 = false;
                    AbstractC0735.m2643(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, false);
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 24:
                    z2 = false;
                    AbstractC0735.m2627(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, false);
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 25:
                    z2 = false;
                    AbstractC0735.m2633(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, false);
                    c0743 = this;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 26:
                    int i26 = i2;
                    int i27 = iArr2[i12];
                    List list = (List) unsafe.getObject(obj, j);
                    Class cls = AbstractC0735.f3044;
                    if (list != null && !list.isEmpty()) {
                        c0729.getClass();
                        int i28 = 0;
                        while (i28 < list.size()) {
                            C0751 c07517 = (C0751) c0729.f3018;
                            String str2 = (String) list.get(i28);
                            c07517.m2715(i27, i19);
                            int i29 = c07517.f3082;
                            byte[] bArr2 = c07517.f3081;
                            int i30 = c07517.f3080;
                            try {
                                try {
                                    int m27053 = C0751.m2705(str2.length() * 3);
                                    int m27054 = C0751.m2705(str2.length());
                                    if (m27054 == m27053) {
                                        int i31 = i30 + m27054;
                                        c07517.f3080 = i31;
                                        i7 = i12;
                                        try {
                                            int i32 = AbstractC0727.f3014.ﾞᴵ(str2, bArr2, i31, i29 - i31);
                                            c07517.f3080 = i30;
                                            c07517.m2713((i32 - i30) - m27054);
                                            c07517.f3080 = i32;
                                        } catch (C0718 e4) {
                                            e = e4;
                                            c07517.f3080 = i30;
                                            C0751.f3078.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e);
                                            byte[] bytes2 = str2.getBytes(AbstractC0702.f2979);
                                            try {
                                                c07517.m2713(bytes2.length);
                                                c07517.m2719(bytes2, 0, bytes2.length);
                                                i28++;
                                                i19 = 2;
                                                i12 = i7;
                                            } catch (IndexOutOfBoundsException e5) {
                                                throw new CodedOutputStream$OutOfSpaceException(e5);
                                            }
                                        }
                                    } else {
                                        i7 = i12;
                                        c07517.m2713(AbstractC0727.m2580(str2));
                                        int i33 = c07517.f3080;
                                        c07517.f3080 = AbstractC0727.f3014.ﾞᴵ(str2, bArr2, i33, i29 - i33);
                                    }
                                } catch (IndexOutOfBoundsException e6) {
                                    throw new CodedOutputStream$OutOfSpaceException(e6);
                                }
                            } catch (C0718 e7) {
                                e = e7;
                                i7 = i12;
                            }
                            i28++;
                            i19 = 2;
                            i12 = i7;
                        }
                    }
                    c0743 = this;
                    i2 = i26;
                    i12 = i12;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                    break;
                case 27:
                    i8 = i2;
                    int i34 = iArr2[i12];
                    List list2 = (List) unsafe.getObject(obj, j);
                    InterfaceC0711 m2669 = c0743.m2669(i12);
                    Class cls2 = AbstractC0735.f3044;
                    if (list2 != null && !list2.isEmpty()) {
                        c0729.getClass();
                        for (int i35 = 0; i35 < list2.size(); i35++) {
                            c0729.m2582(i34, list2.get(i35), m2669);
                        }
                    }
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                    break;
                case 28:
                    i8 = i2;
                    int i36 = iArr2[i12];
                    List list3 = (List) unsafe.getObject(obj, j);
                    Class cls3 = AbstractC0735.f3044;
                    if (list3 != null && !list3.isEmpty()) {
                        c0729.getClass();
                        for (int i37 = 0; i37 < list3.size(); i37++) {
                            C0751 c07518 = (C0751) c0729.f3018;
                            AbstractC0744 abstractC07443 = (AbstractC0744) list3.get(i37);
                            c07518.m2715(i36, 2);
                            c07518.m2713(abstractC07443.size());
                            C0740 c07403 = (C0740) abstractC07443;
                            c07518.m2719(c07403.f3045, c07403.mo2655(), c07403.size());
                        }
                    }
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                    break;
                case 29:
                    i9 = i2;
                    z3 = false;
                    AbstractC0735.m2625(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, false);
                    i2 = i9;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 30:
                    i9 = i2;
                    z3 = false;
                    AbstractC0735.m2634(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, false);
                    i2 = i9;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 31:
                    i9 = i2;
                    z3 = false;
                    AbstractC0735.m2629(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, false);
                    i2 = i9;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 32:
                    i9 = i2;
                    z3 = false;
                    AbstractC0735.m2624(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, false);
                    i2 = i9;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 33:
                    i9 = i2;
                    z3 = false;
                    AbstractC0735.m2638(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, false);
                    i2 = i9;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 34:
                    i9 = i2;
                    z3 = false;
                    AbstractC0735.m2630(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, false);
                    i2 = i9;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 35:
                    i8 = i2;
                    AbstractC0735.m2641(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, z);
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 36:
                    i8 = i2;
                    AbstractC0735.m2647(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, z);
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 37:
                    i8 = i2;
                    AbstractC0735.m2635(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, z);
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 38:
                    i8 = i2;
                    AbstractC0735.m2644(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, z);
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 39:
                    i8 = i2;
                    AbstractC0735.m2637(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, z);
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 40:
                    i8 = i2;
                    AbstractC0735.m2643(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, z);
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 41:
                    i8 = i2;
                    AbstractC0735.m2627(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, z);
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 42:
                    i8 = i2;
                    AbstractC0735.m2633(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, z);
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 43:
                    i8 = i2;
                    AbstractC0735.m2625(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, z);
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 44:
                    i8 = i2;
                    AbstractC0735.m2634(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, z);
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 45:
                    i8 = i2;
                    AbstractC0735.m2629(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, z);
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 46:
                    i8 = i2;
                    AbstractC0735.m2624(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, z);
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 47:
                    i8 = i2;
                    AbstractC0735.m2638(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, z);
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 48:
                    i8 = i2;
                    AbstractC0735.m2630(iArr2[i12], (List) unsafe.getObject(obj, j), c0729, z);
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 49:
                    i8 = i2;
                    int i38 = iArr2[i12];
                    List list4 = (List) unsafe.getObject(obj, j);
                    InterfaceC0711 m26692 = c0743.m2669(i12);
                    Class cls4 = AbstractC0735.f3044;
                    if (list4 != null && !list4.isEmpty()) {
                        c0729.getClass();
                        for (int i39 = 0; i39 < list4.size(); i39++) {
                            c0729.m2583(i38, list4.get(i39), m26692);
                        }
                    }
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                    break;
                case 50:
                    i8 = i2;
                    if (unsafe.getObject(obj, j) != null) {
                        Object m2676 = c0743.m2676(i12);
                        c0743.f3053.getClass();
                        AbstractC0001.m3(m2676);
                        throw null;
                    }
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 51:
                    i8 = i2;
                    if (c0743.m2680(i14, i12, obj)) {
                        double doubleValue = ((Double) AbstractC0733.f3024.m2533(j, obj)).doubleValue();
                        C0751 c07519 = (C0751) c0729.f3018;
                        c07519.getClass();
                        c07519.m2720(i14, Double.doubleToRawLongBits(doubleValue));
                    }
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 52:
                    i8 = i2;
                    if (c0743.m2680(i14, i12, obj)) {
                        float floatValue = ((Float) AbstractC0733.f3024.m2533(j, obj)).floatValue();
                        C0751 c075110 = (C0751) c0729.f3018;
                        c075110.getClass();
                        c075110.m2717(i14, Float.floatToRawIntBits(floatValue));
                    }
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 53:
                    i8 = i2;
                    if (c0743.m2680(i14, i12, obj)) {
                        ((C0751) c0729.f3018).m2709(i14, m2658(j, obj));
                    }
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 54:
                    i8 = i2;
                    if (c0743.m2680(i14, i12, obj)) {
                        ((C0751) c0729.f3018).m2709(i14, m2658(j, obj));
                    }
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 55:
                    i8 = i2;
                    if (c0743.m2680(i14, i12, obj)) {
                        ((C0751) c0729.f3018).m2721(i14, m2662(j, obj));
                    }
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 56:
                    i8 = i2;
                    if (c0743.m2680(i14, i12, obj)) {
                        ((C0751) c0729.f3018).m2720(i14, m2658(j, obj));
                    }
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 57:
                    i8 = i2;
                    if (c0743.m2680(i14, i12, obj)) {
                        ((C0751) c0729.f3018).m2717(i14, m2662(j, obj));
                    }
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 58:
                    i8 = i2;
                    if (c0743.m2680(i14, i12, obj)) {
                        boolean booleanValue = ((Boolean) AbstractC0733.f3024.m2533(j, obj)).booleanValue();
                        C0751 c075111 = (C0751) c0729.f3018;
                        c075111.m2715(i14, 0);
                        c075111.m2712(booleanValue ? (byte) 1 : (byte) 0);
                    }
                    i2 = i8;
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 59:
                    if (c0743.m2680(i14, i12, obj)) {
                        Object object2 = unsafe.getObject(obj, j);
                        if (object2 instanceof String) {
                            String str3 = (String) object2;
                            C0751 c075112 = (C0751) c0729.f3018;
                            c075112.m2715(i14, 2);
                            int i40 = c075112.f3082;
                            byte[] bArr3 = c075112.f3081;
                            int i41 = c075112.f3080;
                            try {
                                try {
                                    int m27055 = C0751.m2705(str3.length() * 3);
                                    int m27056 = C0751.m2705(str3.length());
                                    if (m27056 == m27055) {
                                        int i42 = i41 + m27056;
                                        c075112.f3080 = i42;
                                        i8 = i2;
                                        try {
                                            int i43 = AbstractC0727.f3014.ﾞᴵ(str3, bArr3, i42, i40 - i42);
                                            c075112.f3080 = i41;
                                            c075112.m2713((i43 - i41) - m27056);
                                            c075112.f3080 = i43;
                                        } catch (C0718 e8) {
                                            e = e8;
                                            c075112.f3080 = i41;
                                            C0751.f3078.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e);
                                            byte[] bytes3 = str3.getBytes(AbstractC0702.f2979);
                                            try {
                                                c075112.m2713(bytes3.length);
                                                c075112.m2719(bytes3, 0, bytes3.length);
                                                i2 = i8;
                                                i12 += 3;
                                                i11 = i2;
                                                i13 = i4;
                                                i10 = i;
                                                iArr = iArr2;
                                            } catch (IndexOutOfBoundsException e9) {
                                                throw new CodedOutputStream$OutOfSpaceException(e9);
                                            }
                                        }
                                    } else {
                                        i8 = i2;
                                        c075112.m2713(AbstractC0727.m2580(str3));
                                        int i44 = c075112.f3080;
                                        c075112.f3080 = AbstractC0727.f3014.ﾞᴵ(str3, bArr3, i44, i40 - i44);
                                    }
                                } catch (C0718 e10) {
                                    e = e10;
                                    i8 = i2;
                                }
                            } catch (IndexOutOfBoundsException e11) {
                                throw new CodedOutputStream$OutOfSpaceException(e11);
                            }
                        } else {
                            i8 = i2;
                            AbstractC0744 abstractC07444 = (AbstractC0744) object2;
                            C0751 c075113 = (C0751) c0729.f3018;
                            c075113.m2715(i14, 2);
                            c075113.m2713(abstractC07444.size());
                            C0740 c07404 = (C0740) abstractC07444;
                            c075113.m2719(c07404.f3045, c07404.mo2655(), c07404.size());
                        }
                        i2 = i8;
                    }
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 60:
                    if (c0743.m2680(i14, i12, obj)) {
                        c0729.m2582(i14, unsafe.getObject(obj, j), c0743.m2669(i12));
                    }
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 61:
                    if (c0743.m2680(i14, i12, obj)) {
                        AbstractC0744 abstractC07445 = (AbstractC0744) unsafe.getObject(obj, j);
                        C0751 c075114 = (C0751) c0729.f3018;
                        c075114.m2715(i14, 2);
                        c075114.m2713(abstractC07445.size());
                        C0740 c07405 = (C0740) abstractC07445;
                        c075114.m2719(c07405.f3045, c07405.mo2655(), c07405.size());
                    }
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 62:
                    if (c0743.m2680(i14, i12, obj)) {
                        ((C0751) c0729.f3018).m2714(i14, m2662(j, obj));
                    }
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 63:
                    if (c0743.m2680(i14, i12, obj)) {
                        ((C0751) c0729.f3018).m2721(i14, m2662(j, obj));
                    }
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 64:
                    if (c0743.m2680(i14, i12, obj)) {
                        ((C0751) c0729.f3018).m2717(i14, m2662(j, obj));
                    }
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 65:
                    if (c0743.m2680(i14, i12, obj)) {
                        ((C0751) c0729.f3018).m2720(i14, m2658(j, obj));
                    }
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 66:
                    if (c0743.m2680(i14, i12, obj)) {
                        int m2662 = m2662(j, obj);
                        ((C0751) c0729.f3018).m2714(i14, (m2662 >> 31) ^ (m2662 << 1));
                    }
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 67:
                    if (c0743.m2680(i14, i12, obj)) {
                        long m2658 = m2658(j, obj);
                        ((C0751) c0729.f3018).m2709(i14, (m2658 >> 63) ^ (m2658 << z));
                    }
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                case 68:
                    if (c0743.m2680(i14, i12, obj)) {
                        c0729.m2583(i14, unsafe.getObject(obj, j), c0743.m2669(i12));
                    }
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
                default:
                    i12 += 3;
                    i11 = i2;
                    i13 = i4;
                    i10 = i;
                    iArr = iArr2;
            }
        }
        ((C0705) c0743.f3060).getClass();
        ((AbstractC0725) obj).unknownFields.m2493(c0729);
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m2684(int i, C0730 c0730, Object obj) {
        if ((536870912 & i) != 0) {
            c0730.m2586(2);
            AbstractC0733.m2609(i & 1048575, obj, c0730.f3022.mo201());
        } else if (!this.f3061) {
            AbstractC0733.m2609(i & 1048575, obj, c0730.m2596());
        } else {
            c0730.m2586(2);
            AbstractC0733.m2609(i & 1048575, obj, c0730.f3022.mo185());
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x002e. Please report as an issue. */
    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int m2685(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, long j, int i6, long j2, C0317 c0317) {
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        Unsafe unsafe = f3047;
        InterfaceC0746 interfaceC0746 = (InterfaceC0746) unsafe.getObject(obj, j2);
        if (!((AbstractC0747) interfaceC0746).f3067) {
            int size = interfaceC0746.size();
            interfaceC0746 = interfaceC0746.mo2576(size == 0 ? 10 : size * 2);
            unsafe.putObject(obj, j2, interfaceC0746);
        }
        InterfaceC0746 interfaceC07462 = interfaceC0746;
        switch (i6) {
            case 18:
            case 35:
                int i12 = i;
                if (i4 == 2) {
                    AbstractC0712 abstractC0712 = (AbstractC0712) interfaceC07462;
                    int i13 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i12, c0317);
                    int i14 = c0317.f1958 + i13;
                    while (i13 < i14) {
                        abstractC0712.m2525(Double.longBitsToDouble(ﹳٴ.ﹳٴ.ʼˎ(i13, bArr)));
                        i13 += 8;
                    }
                    if (i13 == i14) {
                        return i13;
                    }
                    throw InvalidProtocolBufferException.m2464();
                }
                if (i4 != 1) {
                    return i12;
                }
                AbstractC0712 abstractC07122 = (AbstractC0712) interfaceC07462;
                abstractC07122.m2525(Double.longBitsToDouble(ﹳٴ.ﹳٴ.ʼˎ(i12, bArr)));
                while (true) {
                    i7 = i12 + 8;
                    if (i7 < i2) {
                        i12 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i7, c0317);
                        if (i3 == c0317.f1958) {
                            abstractC07122.m2525(Double.longBitsToDouble(ﹳٴ.ﹳٴ.ʼˎ(i12, bArr)));
                        }
                    }
                }
                return i7;
            case 19:
            case 36:
                int i15 = i;
                if (i4 == 2) {
                    AbstractC0724 abstractC0724 = (AbstractC0724) interfaceC07462;
                    int i16 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i15, c0317);
                    int i17 = c0317.f1958 + i16;
                    while (i16 < i17) {
                        abstractC0724.m2553(Float.intBitsToFloat(ﹳٴ.ﹳٴ.ᵔᵢ(i16, bArr)));
                        i16 += 4;
                    }
                    if (i16 == i17) {
                        return i16;
                    }
                    throw InvalidProtocolBufferException.m2464();
                }
                if (i4 != 5) {
                    return i15;
                }
                AbstractC0724 abstractC07242 = (AbstractC0724) interfaceC07462;
                abstractC07242.m2553(Float.intBitsToFloat(ﹳٴ.ﹳٴ.ᵔᵢ(i15, bArr)));
                while (true) {
                    i8 = i15 + 4;
                    if (i8 < i2) {
                        i15 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i8, c0317);
                        if (i3 == c0317.f1958) {
                            abstractC07242.m2553(Float.intBitsToFloat(ﹳٴ.ﹳٴ.ᵔᵢ(i15, bArr)));
                        }
                    }
                }
                return i8;
            case 20:
            case 21:
            case 37:
            case 38:
                if (i4 == 2) {
                    AbstractC0736 abstractC0736 = (AbstractC0736) interfaceC07462;
                    int i18 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i, c0317);
                    int i19 = c0317.f1958 + i18;
                    while (i18 < i19) {
                        i18 = ﹳٴ.ﹳٴ.ˉˆ(bArr, i18, c0317);
                        abstractC0736.m2651(c0317.f1957);
                    }
                    if (i18 == i19) {
                        return i18;
                    }
                    throw InvalidProtocolBufferException.m2464();
                }
                if (i4 != 0) {
                    return i;
                }
                AbstractC0736 abstractC07362 = (AbstractC0736) interfaceC07462;
                int i20 = ﹳٴ.ﹳٴ.ˉˆ(bArr, i, c0317);
                abstractC07362.m2651(c0317.f1957);
                while (i20 < i2) {
                    int i21 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i20, c0317);
                    if (i3 != c0317.f1958) {
                        return i20;
                    }
                    i20 = ﹳٴ.ﹳٴ.ˉˆ(bArr, i21, c0317);
                    abstractC07362.m2651(c0317.f1957);
                }
                return i20;
            case 22:
            case 29:
            case 39:
            case 43:
                i9 = i;
                if (i4 != 2) {
                    if (i4 == 0) {
                        return ﹳٴ.ﹳٴ.ᵔʾ(i3, bArr, i9, i2, interfaceC07462, c0317);
                    }
                    return i9;
                }
                AbstractC0703 abstractC0703 = (AbstractC0703) interfaceC07462;
                int i22 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i9, c0317);
                int i23 = c0317.f1958 + i22;
                while (i22 < i23) {
                    i22 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i22, c0317);
                    abstractC0703.m2490(c0317.f1958);
                }
                if (i22 == i23) {
                    return i22;
                }
                throw InvalidProtocolBufferException.m2464();
            case 23:
            case 32:
            case 40:
            case 46:
                i9 = i;
                if (i4 == 2) {
                    AbstractC0736 abstractC07363 = (AbstractC0736) interfaceC07462;
                    int i24 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i9, c0317);
                    int i25 = c0317.f1958 + i24;
                    while (i24 < i25) {
                        abstractC07363.m2651(ﹳٴ.ﹳٴ.ʼˎ(i24, bArr));
                        i24 += 8;
                    }
                    if (i24 == i25) {
                        return i24;
                    }
                    throw InvalidProtocolBufferException.m2464();
                }
                if (i4 == 1) {
                    AbstractC0736 abstractC07364 = (AbstractC0736) interfaceC07462;
                    abstractC07364.m2651(ﹳٴ.ﹳٴ.ʼˎ(i9, bArr));
                    int i26 = i9 + 8;
                    while (i26 < i2) {
                        int i27 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i26, c0317);
                        if (i3 != c0317.f1958) {
                            return i26;
                        }
                        abstractC07364.m2651(ﹳٴ.ﹳٴ.ʼˎ(i27, bArr));
                        i26 = i27 + 8;
                    }
                    return i26;
                }
                return i9;
            case 24:
            case 31:
            case 41:
            case 45:
                i9 = i;
                if (i4 == 2) {
                    AbstractC0703 abstractC07032 = (AbstractC0703) interfaceC07462;
                    int i28 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i9, c0317);
                    int i29 = c0317.f1958 + i28;
                    while (i28 < i29) {
                        abstractC07032.m2490(ﹳٴ.ﹳٴ.ᵔᵢ(i28, bArr));
                        i28 += 4;
                    }
                    if (i28 == i29) {
                        return i28;
                    }
                    throw InvalidProtocolBufferException.m2464();
                }
                if (i4 == 5) {
                    AbstractC0703 abstractC07033 = (AbstractC0703) interfaceC07462;
                    abstractC07033.m2490(ﹳٴ.ﹳٴ.ᵔᵢ(i9, bArr));
                    int i30 = i9 + 4;
                    while (i30 < i2) {
                        int i31 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i30, c0317);
                        if (i3 != c0317.f1958) {
                            return i30;
                        }
                        abstractC07033.m2490(ﹳٴ.ﹳٴ.ᵔᵢ(i31, bArr));
                        i30 = i31 + 4;
                    }
                    return i30;
                }
                return i9;
            case 25:
            case 42:
                i9 = i;
                if (i4 == 2) {
                    AbstractC0708 abstractC0708 = (AbstractC0708) interfaceC07462;
                    int i32 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i9, c0317);
                    int i33 = c0317.f1958 + i32;
                    while (i32 < i33) {
                        i32 = ﹳٴ.ﹳٴ.ˉˆ(bArr, i32, c0317);
                        abstractC0708.m2513(c0317.f1957 != 0);
                    }
                    if (i32 == i33) {
                        return i32;
                    }
                    throw InvalidProtocolBufferException.m2464();
                }
                if (i4 == 0) {
                    AbstractC0708 abstractC07082 = (AbstractC0708) interfaceC07462;
                    int i34 = ﹳٴ.ﹳٴ.ˉˆ(bArr, i9, c0317);
                    abstractC07082.m2513(c0317.f1957 != 0);
                    while (i34 < i2) {
                        int i35 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i34, c0317);
                        if (i3 != c0317.f1958) {
                            return i34;
                        }
                        i34 = ﹳٴ.ﹳٴ.ˉˆ(bArr, i35, c0317);
                        abstractC07082.m2513(c0317.f1957 != 0);
                    }
                    return i34;
                }
                return i9;
            case 26:
                i9 = i;
                if (i4 == 2) {
                    if ((j & 536870912) == 0) {
                        int i36 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i9, c0317);
                        int i37 = c0317.f1958;
                        if (i37 < 0) {
                            throw InvalidProtocolBufferException.m2463();
                        }
                        if (i37 == 0) {
                            interfaceC07462.add("");
                        } else {
                            interfaceC07462.add(new String(bArr, i36, i37, AbstractC0702.f2979));
                            i36 += i37;
                        }
                        while (i36 < i2) {
                            int i38 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i36, c0317);
                            if (i3 != c0317.f1958) {
                                return i36;
                            }
                            i36 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i38, c0317);
                            int i39 = c0317.f1958;
                            if (i39 < 0) {
                                throw InvalidProtocolBufferException.m2463();
                            }
                            if (i39 == 0) {
                                interfaceC07462.add("");
                            } else {
                                interfaceC07462.add(new String(bArr, i36, i39, AbstractC0702.f2979));
                                i36 += i39;
                            }
                        }
                        return i36;
                    }
                    int i40 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i9, c0317);
                    int i41 = c0317.f1958;
                    if (i41 < 0) {
                        throw InvalidProtocolBufferException.m2463();
                    }
                    if (i41 == 0) {
                        interfaceC07462.add("");
                    } else {
                        int i42 = i40 + i41;
                        if (AbstractC0727.f3014.ᵔי(bArr, i40, i42) != 0) {
                            throw InvalidProtocolBufferException.m2465();
                        }
                        interfaceC07462.add(new String(bArr, i40, i41, AbstractC0702.f2979));
                        i40 = i42;
                    }
                    while (i40 < i2) {
                        int i43 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i40, c0317);
                        if (i3 != c0317.f1958) {
                            return i40;
                        }
                        i40 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i43, c0317);
                        int i44 = c0317.f1958;
                        if (i44 < 0) {
                            throw InvalidProtocolBufferException.m2463();
                        }
                        if (i44 == 0) {
                            interfaceC07462.add("");
                        } else {
                            int i45 = i40 + i44;
                            if (AbstractC0727.f3014.ᵔי(bArr, i40, i45) != 0) {
                                throw InvalidProtocolBufferException.m2465();
                            }
                            interfaceC07462.add(new String(bArr, i40, i44, AbstractC0702.f2979));
                            i40 = i45;
                        }
                    }
                    return i40;
                }
                return i9;
            case 27:
                return i4 == 2 ? ﹳٴ.ﹳٴ.ˆʾ(m2669(i5), i3, bArr, i, i2, interfaceC07462, c0317) : i;
            case 28:
                if (i4 != 2) {
                    return i;
                }
                int i46 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i, c0317);
                int i47 = c0317.f1958;
                if (i47 < 0) {
                    throw InvalidProtocolBufferException.m2463();
                }
                if (i47 > bArr.length - i46) {
                    throw InvalidProtocolBufferException.m2464();
                }
                if (i47 == 0) {
                    interfaceC07462.add(AbstractC0744.f3063);
                } else {
                    interfaceC07462.add(AbstractC0744.m2694(bArr, i46, i47));
                    i46 += i47;
                }
                while (i46 < i2) {
                    int i48 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i46, c0317);
                    if (i3 != c0317.f1958) {
                        return i46;
                    }
                    i46 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i48, c0317);
                    int i49 = c0317.f1958;
                    if (i49 < 0) {
                        throw InvalidProtocolBufferException.m2463();
                    }
                    if (i49 > bArr.length - i46) {
                        throw InvalidProtocolBufferException.m2464();
                    }
                    if (i49 == 0) {
                        interfaceC07462.add(AbstractC0744.f3063);
                    } else {
                        interfaceC07462.add(AbstractC0744.m2694(bArr, i46, i49));
                        i46 += i49;
                    }
                }
                return i46;
            case 30:
            case 44:
                i10 = i;
                if (i4 != 2) {
                    if (i4 == 0) {
                        i11 = ﹳٴ.ﹳٴ.ᵔʾ(i3, bArr, i10, i2, interfaceC07462, c0317);
                    }
                    return i10;
                }
                AbstractC0703 abstractC07034 = (AbstractC0703) interfaceC07462;
                i11 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i10, c0317);
                int i50 = c0317.f1958 + i11;
                while (i11 < i50) {
                    i11 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i11, c0317);
                    abstractC07034.m2490(c0317.f1958);
                }
                if (i11 != i50) {
                    throw InvalidProtocolBufferException.m2464();
                }
                m2690(i5);
                Class cls = AbstractC0735.f3044;
                return i11;
            case 33:
            case 47:
                i10 = i;
                if (i4 == 2) {
                    AbstractC0703 abstractC07035 = (AbstractC0703) interfaceC07462;
                    int i51 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i10, c0317);
                    int i52 = c0317.f1958 + i51;
                    while (i51 < i52) {
                        i51 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i51, c0317);
                        abstractC07035.m2490(AbstractC0016.m225(c0317.f1958));
                    }
                    if (i51 == i52) {
                        return i51;
                    }
                    throw InvalidProtocolBufferException.m2464();
                }
                if (i4 == 0) {
                    AbstractC0703 abstractC07036 = (AbstractC0703) interfaceC07462;
                    int i53 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i10, c0317);
                    abstractC07036.m2490(AbstractC0016.m225(c0317.f1958));
                    while (i53 < i2) {
                        int i54 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i53, c0317);
                        if (i3 != c0317.f1958) {
                            return i53;
                        }
                        i53 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i54, c0317);
                        abstractC07036.m2490(AbstractC0016.m225(c0317.f1958));
                    }
                    return i53;
                }
                return i10;
            case 34:
            case 48:
                i10 = i;
                if (i4 == 2) {
                    AbstractC0736 abstractC07365 = (AbstractC0736) interfaceC07462;
                    int i55 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i10, c0317);
                    int i56 = c0317.f1958 + i55;
                    while (i55 < i56) {
                        i55 = ﹳٴ.ﹳٴ.ˉˆ(bArr, i55, c0317);
                        abstractC07365.m2651(AbstractC0016.m226(c0317.f1957));
                    }
                    if (i55 == i56) {
                        return i55;
                    }
                    throw InvalidProtocolBufferException.m2464();
                }
                if (i4 == 0) {
                    AbstractC0736 abstractC07366 = (AbstractC0736) interfaceC07462;
                    int i57 = ﹳٴ.ﹳٴ.ˉˆ(bArr, i10, c0317);
                    abstractC07366.m2651(AbstractC0016.m226(c0317.f1957));
                    while (i57 < i2) {
                        int i58 = ﹳٴ.ﹳٴ.ˉʿ(bArr, i57, c0317);
                        if (i3 != c0317.f1958) {
                            return i57;
                        }
                        i57 = ﹳٴ.ﹳٴ.ˉˆ(bArr, i58, c0317);
                        abstractC07366.m2651(AbstractC0016.m226(c0317.f1957));
                    }
                    return i57;
                }
                return i10;
            case 49:
                if (i4 == 3) {
                    InterfaceC0711 m2669 = m2669(i5);
                    int i59 = (i3 & (-8)) | 4;
                    Object mo2517 = m2669.mo2517();
                    int i60 = ﹳٴ.ﹳٴ.ˈٴ(mo2517, m2669, bArr, i, i2, i59, c0317);
                    InterfaceC0711 interfaceC0711 = m2669;
                    byte[] bArr2 = bArr;
                    interfaceC0711.mo2521(mo2517);
                    c0317.f1955 = mo2517;
                    interfaceC07462.add(mo2517);
                    while (i60 < i2) {
                        int i61 = ﹳٴ.ﹳٴ.ˉʿ(bArr2, i60, c0317);
                        if (i3 != c0317.f1958) {
                            return i60;
                        }
                        Object mo25172 = interfaceC0711.mo2517();
                        byte[] bArr3 = bArr2;
                        InterfaceC0711 interfaceC07112 = interfaceC0711;
                        i60 = ﹳٴ.ﹳٴ.ˈٴ(mo25172, interfaceC07112, bArr3, i61, i2, i59, c0317);
                        interfaceC07112.mo2521(mo25172);
                        c0317.f1955 = mo25172;
                        interfaceC07462.add(mo25172);
                        interfaceC0711 = interfaceC07112;
                        bArr2 = bArr3;
                    }
                    return i60;
                }
            default:
                return i;
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean m2686(AbstractC0725 abstractC0725, AbstractC0725 abstractC07252, int i) {
        return m2692(i, abstractC0725) == m2692(i, abstractC07252);
    }

    /* JADX WARN: Code restructure failed: missing block: B:116:0x0149, code lost:
    
        r4 = r9;
        r9 = r25 | r23;
        r3 = r7;
        r7 = r13;
        r13 = r4;
        r4 = r33;
        r5 = r2;
        r2 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0294, code lost:
    
        r4 = r9;
        r9 = r25 | r23;
        r3 = r4;
        r4 = r13;
        r13 = r7;
        r7 = r4;
        r4 = r33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x04a5, code lost:
    
        if (r8 == 1048575) goto L162;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x04a7, code lost:
    
        r15.putInt(r10, r8, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x04ab, code lost:
    
        r0 = r6.f3057;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x04af, code lost:
    
        if (r0 >= r6.f3049) goto L236;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x04b1, code lost:
    
        r6.m2675(r10, r6.f3056[r0], r32);
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x04bd, code lost:
    
        if (r34 != 0) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x04bf, code lost:
    
        if (r5 != r4) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x04c6, code lost:
    
        throw com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException.m2467();
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x04cb, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x04c7, code lost:
    
        if (r5 > r4) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x04c9, code lost:
    
        if (r12 != r34) goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x04d0, code lost:
    
        throw com.google.crypto.tink.shaded.protobuf.InvalidProtocolBufferException.m2467();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:100:0x00aa. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m2687(java.lang.Object r30, byte[] r31, int r32, int r33, int r34, com.google.android.gms.internal.measurement.C0317 r35) {
        /*
            Method dump skipped, instructions count: 1274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.C0743.m2687(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.ˈʻ):int");
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final void m2688(int i, C0730 c0730, Object obj) {
        int i2 = 536870912 & i;
        C0700 c0700 = this.f3055;
        if (i2 != 0) {
            c0700.getClass();
            c0730.m2605(C0700.m2480(i & 1048575, obj), true);
        } else {
            c0700.getClass();
            c0730.m2605(C0700.m2480(i & 1048575, obj), false);
        }
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m2689(Object obj, int i, C0730 c0730, InterfaceC0711 interfaceC0711, C0713 c0713) {
        int mo183;
        this.f3055.getClass();
        InterfaceC0746 m2480 = C0700.m2480(i & 1048575, obj);
        AbstractC0016 abstractC0016 = c0730.f3022;
        int i2 = c0730.f3021;
        if ((i2 & 7) != 2) {
            throw InvalidProtocolBufferException.m2461();
        }
        do {
            Object mo2517 = interfaceC0711.mo2517();
            c0730.m2589(mo2517, interfaceC0711, c0713);
            interfaceC0711.mo2521(mo2517);
            m2480.add(mo2517);
            if (abstractC0016.mo205() || c0730.f3020 != 0) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == i2);
        c0730.f3020 = mo183;
    }

    /* JADX WARN: Code restructure failed: missing block: B:192:0x006d, code lost:
    
        if (r13 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x009d, code lost:
    
        if (r13 != null) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0044, code lost:
    
        ((com.google.crypto.tink.shaded.protobuf.AbstractC0725) r2).unknownFields = r13;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x007d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:39:0x06d8 A[Catch: all -> 0x0441, TryCatch #0 {all -> 0x0441, blocks: (B:37:0x06d3, B:39:0x06d8, B:40:0x06dd, B:140:0x043c, B:143:0x0444, B:144:0x0459, B:145:0x046e, B:146:0x0483, B:147:0x0498, B:148:0x04ad, B:149:0x04c2, B:150:0x04d7, B:151:0x04ec, B:152:0x0506, B:153:0x0520, B:154:0x053b, B:155:0x0556, B:156:0x0571, B:157:0x058f, B:158:0x05aa, B:159:0x05bf, B:160:0x05da, B:161:0x05e7, B:162:0x0604, B:163:0x061f, B:164:0x063a, B:165:0x0655, B:166:0x0670, B:167:0x068b, B:168:0x06a7, B:173:0x06c3), top: B:36:0x06d3 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x06e4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0704 A[LOOP:3: B:55:0x0702->B:56:0x0704, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x070e  */
    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ᵎﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo2519(java.lang.Object r21, com.google.crypto.tink.shaded.protobuf.C0730 r22, com.google.crypto.tink.shaded.protobuf.C0713 r23) {
        /*
            Method dump skipped, instructions count: 1960
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.C0743.mo2519(java.lang.Object, com.google.crypto.tink.shaded.protobuf.ٴﹶ, com.google.crypto.tink.shaded.protobuf.ˉˆ):void");
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m2690(int i) {
        if (this.f3058[((i / 3) * 2) + 1] != null) {
            throw new ClassCastException();
        }
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final void m2691(int i, int i2, Object obj) {
        AbstractC0733.m2618(this.f3059[i2 + 2] & 1048575, obj, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0074, code lost:
    
        if (com.google.crypto.tink.shaded.protobuf.AbstractC0735.m2648(r5.m2533(r7, r12), r5.m2533(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008a, code lost:
    
        if (r5.m2545(r7, r12) == r5.m2545(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009e, code lost:
    
        if (r5.m2543(r7, r12) == r5.m2543(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b4, code lost:
    
        if (r5.m2545(r7, r12) == r5.m2545(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c8, code lost:
    
        if (r5.m2543(r7, r12) == r5.m2543(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00dc, code lost:
    
        if (r5.m2543(r7, r12) == r5.m2543(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f0, code lost:
    
        if (r5.m2543(r7, r12) == r5.m2543(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0108, code lost:
    
        if (com.google.crypto.tink.shaded.protobuf.AbstractC0735.m2648(r5.m2533(r7, r12), r5.m2533(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0120, code lost:
    
        if (com.google.crypto.tink.shaded.protobuf.AbstractC0735.m2648(r5.m2533(r7, r12), r5.m2533(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0138, code lost:
    
        if (com.google.crypto.tink.shaded.protobuf.AbstractC0735.m2648(r5.m2533(r7, r12), r5.m2533(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x014c, code lost:
    
        if (r5.mo2535(r7, r12) == r5.mo2535(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0160, code lost:
    
        if (r5.m2543(r7, r12) == r5.m2543(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0176, code lost:
    
        if (r5.m2545(r7, r12) == r5.m2545(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x018a, code lost:
    
        if (r5.m2543(r7, r12) == r5.m2543(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x019f, code lost:
    
        if (r5.m2545(r7, r12) == r5.m2545(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01b4, code lost:
    
        if (r5.m2545(r7, r12) == r5.m2545(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01cf, code lost:
    
        if (java.lang.Float.floatToIntBits(r5.mo2551(r7, r12)) == java.lang.Float.floatToIntBits(r5.mo2551(r7, r13))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01ec, code lost:
    
        if (java.lang.Double.doubleToLongBits(r5.mo2540(r7, r12)) == java.lang.Double.doubleToLongBits(r5.mo2540(r7, r13))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0039, code lost:
    
        if (com.google.crypto.tink.shaded.protobuf.AbstractC0735.m2648(r9.m2533(r7, r12), r9.m2533(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0016. Please report as an issue. */
    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ᵔᵢ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo2520(com.google.crypto.tink.shaded.protobuf.AbstractC0725 r12, com.google.crypto.tink.shaded.protobuf.AbstractC0725 r13) {
        /*
            Method dump skipped, instructions count: 666
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.C0743.mo2520(com.google.crypto.tink.shaded.protobuf.ـˆ, com.google.crypto.tink.shaded.protobuf.ـˆ):boolean");
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final boolean m2692(int i, Object obj) {
        int i2 = this.f3059[i + 2];
        long j = i2 & 1048575;
        if (j == 1048575) {
            int m2668 = m2668(i);
            long j2 = m2668 & 1048575;
            switch (m2660(m2668)) {
                case 0:
                    if (Double.doubleToRawLongBits(AbstractC0733.f3024.mo2540(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 1:
                    if (Float.floatToRawIntBits(AbstractC0733.f3024.mo2551(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 2:
                    if (AbstractC0733.f3024.m2545(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (AbstractC0733.f3024.m2545(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (AbstractC0733.f3024.m2543(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (AbstractC0733.f3024.m2545(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (AbstractC0733.f3024.m2543(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    return AbstractC0733.f3024.mo2535(j2, obj);
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    Object m2533 = AbstractC0733.f3024.m2533(j2, obj);
                    if (m2533 instanceof String) {
                        return !((String) m2533).isEmpty();
                    }
                    if (m2533 instanceof AbstractC0744) {
                        return !AbstractC0744.f3063.equals(m2533);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    if (AbstractC0733.f3024.m2533(j2, obj) == null) {
                        return false;
                    }
                    break;
                case 10:
                    return !AbstractC0744.f3063.equals(AbstractC0733.f3024.m2533(j2, obj));
                case 11:
                    if (AbstractC0733.f3024.m2543(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (AbstractC0733.f3024.m2543(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (AbstractC0733.f3024.m2543(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (AbstractC0733.f3024.m2545(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (AbstractC0733.f3024.m2543(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (AbstractC0733.f3024.m2545(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (AbstractC0733.f3024.m2533(j2, obj) == null) {
                        return false;
                    }
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        } else if (((1 << (i2 >>> 20)) & AbstractC0733.f3024.m2543(j, obj)) == 0) {
            return false;
        }
        return true;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ⁱˊ */
    public final void mo2521(Object obj) {
        if (m2661(obj)) {
            if (obj instanceof AbstractC0725) {
                AbstractC0725 abstractC0725 = (AbstractC0725) obj;
                abstractC0725.m2565(Integer.MAX_VALUE);
                abstractC0725.memoizedHashCode = 0;
                abstractC0725.m2571();
            }
            int[] iArr = this.f3059;
            int length = iArr.length;
            for (int i = 0; i < length; i += 3) {
                int m2668 = m2668(i);
                long j = 1048575 & m2668;
                int m2660 = m2660(m2668);
                if (m2660 != 9) {
                    if (m2660 != 60 && m2660 != 68) {
                        switch (m2660) {
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
                                this.f3055.getClass();
                                AbstractC0747 abstractC0747 = (AbstractC0747) ((InterfaceC0746) AbstractC0733.f3024.m2533(j, obj));
                                if (abstractC0747.f3067) {
                                    abstractC0747.f3067 = false;
                                    break;
                                } else {
                                    break;
                                }
                            case 50:
                                Unsafe unsafe = f3047;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    this.f3053.getClass();
                                    ((C0715) object).f3003 = false;
                                    unsafe.putObject(obj, j, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (m2680(iArr[i], i, obj)) {
                        m2669(i).mo2521(f3047.getObject(obj, j));
                    }
                }
                if (m2692(i, obj)) {
                    m2669(i).mo2521(f3047.getObject(obj, j));
                }
            }
            ((C0705) this.f3060).getClass();
            C0704 c0704 = ((AbstractC0725) obj).unknownFields;
            if (c0704.f2983) {
                c0704.f2983 = false;
            }
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ﹳٴ */
    public final void mo2522(Object obj, Object obj2) {
        Object obj3;
        m2665(obj);
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.f3059;
            if (i >= iArr.length) {
                AbstractC0735.m2639(this.f3060, obj, obj2);
                return;
            }
            int m2668 = m2668(i);
            long j = 1048575 & m2668;
            int i2 = iArr[i];
            switch (m2660(m2668)) {
                case 0:
                    if (m2692(i, obj2)) {
                        AbstractC0721 abstractC0721 = AbstractC0733.f3024;
                        obj3 = obj;
                        abstractC0721.mo2538(obj3, j, abstractC0721.mo2540(j, obj2));
                        m2672(i, obj3);
                        break;
                    }
                    break;
                case 1:
                    if (m2692(i, obj2)) {
                        AbstractC0721 abstractC07212 = AbstractC0733.f3024;
                        abstractC07212.mo2544(obj, j, abstractC07212.mo2551(j, obj2));
                        m2672(i, obj);
                        break;
                    }
                    break;
                case 2:
                    if (m2692(i, obj2)) {
                        AbstractC0733.m2614(obj, j, AbstractC0733.f3024.m2545(j, obj2));
                        m2672(i, obj);
                        break;
                    }
                    break;
                case 3:
                    if (m2692(i, obj2)) {
                        AbstractC0733.m2614(obj, j, AbstractC0733.f3024.m2545(j, obj2));
                        m2672(i, obj);
                        break;
                    }
                    break;
                case 4:
                    if (m2692(i, obj2)) {
                        AbstractC0733.m2618(j, obj, AbstractC0733.f3024.m2543(j, obj2));
                        m2672(i, obj);
                        break;
                    }
                    break;
                case 5:
                    if (m2692(i, obj2)) {
                        AbstractC0733.m2614(obj, j, AbstractC0733.f3024.m2545(j, obj2));
                        m2672(i, obj);
                        break;
                    }
                    break;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (m2692(i, obj2)) {
                        AbstractC0733.m2618(j, obj, AbstractC0733.f3024.m2543(j, obj2));
                        m2672(i, obj);
                        break;
                    }
                    break;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    if (m2692(i, obj2)) {
                        AbstractC0721 abstractC07213 = AbstractC0733.f3024;
                        abstractC07213.mo2542(obj, j, abstractC07213.mo2535(j, obj2));
                        m2672(i, obj);
                        break;
                    }
                    break;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    if (m2692(i, obj2)) {
                        AbstractC0733.m2609(j, obj, AbstractC0733.f3024.m2533(j, obj2));
                        m2672(i, obj);
                        break;
                    }
                    break;
                case 9:
                    m2666(obj, i, obj2);
                    break;
                case 10:
                    if (m2692(i, obj2)) {
                        AbstractC0733.m2609(j, obj, AbstractC0733.f3024.m2533(j, obj2));
                        m2672(i, obj);
                        break;
                    }
                    break;
                case 11:
                    if (m2692(i, obj2)) {
                        AbstractC0733.m2618(j, obj, AbstractC0733.f3024.m2543(j, obj2));
                        m2672(i, obj);
                        break;
                    }
                    break;
                case 12:
                    if (m2692(i, obj2)) {
                        AbstractC0733.m2618(j, obj, AbstractC0733.f3024.m2543(j, obj2));
                        m2672(i, obj);
                        break;
                    }
                    break;
                case 13:
                    if (m2692(i, obj2)) {
                        AbstractC0733.m2618(j, obj, AbstractC0733.f3024.m2543(j, obj2));
                        m2672(i, obj);
                        break;
                    }
                    break;
                case 14:
                    if (m2692(i, obj2)) {
                        AbstractC0733.m2614(obj, j, AbstractC0733.f3024.m2545(j, obj2));
                        m2672(i, obj);
                        break;
                    }
                    break;
                case 15:
                    if (m2692(i, obj2)) {
                        AbstractC0733.m2618(j, obj, AbstractC0733.f3024.m2543(j, obj2));
                        m2672(i, obj);
                        break;
                    }
                    break;
                case 16:
                    if (m2692(i, obj2)) {
                        AbstractC0733.m2614(obj, j, AbstractC0733.f3024.m2545(j, obj2));
                        m2672(i, obj);
                        break;
                    }
                    break;
                case 17:
                    m2666(obj, i, obj2);
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
                    this.f3055.getClass();
                    AbstractC0721 abstractC07214 = AbstractC0733.f3024;
                    InterfaceC0746 interfaceC0746 = (InterfaceC0746) abstractC07214.m2533(j, obj);
                    InterfaceC0746 interfaceC07462 = (InterfaceC0746) abstractC07214.m2533(j, obj2);
                    int size = interfaceC0746.size();
                    int size2 = interfaceC07462.size();
                    if (size > 0 && size2 > 0) {
                        if (!((AbstractC0747) interfaceC0746).f3067) {
                            interfaceC0746 = interfaceC0746.mo2576(size2 + size);
                        }
                        interfaceC0746.addAll(interfaceC07462);
                    }
                    if (size > 0) {
                        interfaceC07462 = interfaceC0746;
                    }
                    AbstractC0733.m2609(j, obj, interfaceC07462);
                    break;
                case 50:
                    Class cls = AbstractC0735.f3044;
                    AbstractC0721 abstractC07215 = AbstractC0733.f3024;
                    Object m2533 = abstractC07215.m2533(j, obj);
                    Object m25332 = abstractC07215.m2533(j, obj2);
                    this.f3053.getClass();
                    AbstractC0733.m2609(j, obj, C0739.m2653(m2533, m25332));
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
                    if (m2680(i2, i, obj2)) {
                        AbstractC0733.m2609(j, obj, AbstractC0733.f3024.m2533(j, obj2));
                        m2691(i2, i, obj);
                        break;
                    }
                    break;
                case 60:
                    m2682(obj, i, obj2);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (m2680(i2, i, obj2)) {
                        AbstractC0733.m2609(j, obj, AbstractC0733.f3024.m2533(j, obj2));
                        m2691(i2, i, obj);
                        break;
                    }
                    break;
                case 68:
                    m2682(obj, i, obj2);
                    break;
            }
            obj3 = obj;
            i += 3;
            obj = obj3;
        }
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final boolean m2693(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m2692(i, obj) : (i3 & i4) != 0;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.InterfaceC0711
    /* renamed from: ﾞᴵ */
    public final void mo2523(Object obj, byte[] bArr, int i, int i2, C0317 c0317) {
        m2687(obj, bArr, i, i2, 0, c0317);
    }
}
