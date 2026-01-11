package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.AbstractC0001;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import p035.AbstractC1220;
import p223.C3056;
import sun.misc.Unsafe;

/* renamed from: com.google.android.gms.internal.measurement.ˆﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0314 implements InterfaceC0363 {

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public static final int[] f1942 = new int[0];

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static final Unsafe f1943 = AbstractC0504.m2000();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C0298 f1944;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f1945;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f1946;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AbstractC0514 f1947;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f1948;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f1949;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object[] f1950;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int[] f1951;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int[] f1952;

    public C0314(int[] iArr, Object[] objArr, int i, int i2, AbstractC0514 abstractC0514, int[] iArr2, int i3, int i4, C0298 c0298, C0298 c02982) {
        this.f1951 = iArr;
        this.f1950 = objArr;
        this.f1945 = i;
        this.f1946 = i2;
        this.f1952 = iArr2;
        this.f1948 = i3;
        this.f1949 = i4;
        this.f1944 = c0298;
        this.f1947 = abstractC0514;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static Field m1519(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 11 + name.length() + 29 + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            throw new RuntimeException(AbstractC1220.m3775(sb, " not found. Known fields are ", arrays), e);
        }
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
    public static com.google.android.gms.internal.measurement.C0314 m1520(com.google.android.gms.internal.measurement.C0423 r35, com.google.android.gms.internal.measurement.C0298 r36, com.google.android.gms.internal.measurement.C0298 r37) {
        /*
            Method dump skipped, instructions count: 1054
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C0314.m1520(com.google.android.gms.internal.measurement.ᐧʾ, com.google.android.gms.internal.measurement.ʿʻ, com.google.android.gms.internal.measurement.ʿʻ):com.google.android.gms.internal.measurement.ˆﹶ");
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static int m1521(int i) {
        return (i >>> 20) & 255;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static final int m1522(byte[] bArr, int i, int i2, EnumC0319 enumC0319, Class cls, C0317 c0317) {
        EnumC0319 enumC03192 = EnumC0319.f1961;
        switch (enumC0319.ordinal()) {
            case 0:
                int i3 = i + 8;
                c0317.f1955 = Double.valueOf(Double.longBitsToDouble(ﹳˋ.ٴﹶ.ʼˈ(i, bArr)));
                return i3;
            case 1:
                int i4 = i + 4;
                c0317.f1955 = Float.valueOf(Float.intBitsToFloat(ﹳˋ.ٴﹶ.ˊˋ(i, bArr)));
                return i4;
            case 2:
            case 3:
                int i5 = ﹳˋ.ٴﹶ.ˋᵔ(bArr, i, c0317);
                c0317.f1955 = Long.valueOf(c0317.f1957);
                return i5;
            case 4:
            case 12:
            case 13:
                int i6 = ﹳˋ.ٴﹶ.ᵔٴ(bArr, i, c0317);
                c0317.f1955 = Integer.valueOf(c0317.f1958);
                return i6;
            case 5:
            case 15:
                int i7 = i + 8;
                c0317.f1955 = Long.valueOf(ﹳˋ.ٴﹶ.ʼˈ(i, bArr));
                return i7;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
            case 14:
                int i8 = i + 4;
                c0317.f1955 = Integer.valueOf(ﹳˋ.ٴﹶ.ˊˋ(i, bArr));
                return i8;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                int i9 = ﹳˋ.ٴﹶ.ˋᵔ(bArr, i, c0317);
                c0317.f1955 = Boolean.valueOf(c0317.f1957 != 0);
                return i9;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                return ﹳˋ.ٴﹶ.ـˏ(bArr, i, c0317);
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                InterfaceC0363 m1889 = C0464.f2220.m1889(cls);
                AbstractC0269 mo1548 = m1889.mo1548();
                int i10 = ﹳˋ.ٴﹶ.ˈⁱ(mo1548, m1889, bArr, i, i2, c0317);
                m1889.mo1534(mo1548);
                c0317.f1955 = mo1548;
                return i10;
            case 11:
                return ﹳˋ.ٴﹶ.ﹳـ(bArr, i, c0317);
            case 16:
                int i11 = ﹳˋ.ٴﹶ.ᵔٴ(bArr, i, c0317);
                c0317.f1955 = Integer.valueOf(ﹳٴ.ﹳٴ.ʿᵢ(c0317.f1958));
                return i11;
            case 17:
                int i12 = ﹳˋ.ٴﹶ.ˋᵔ(bArr, i, c0317);
                c0317.f1955 = Long.valueOf(ﹳٴ.ﹳٴ.ᵎᵔ(c0317.f1957));
                return i12;
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static int m1523(long j, Object obj) {
        return ((Integer) AbstractC0504.m1989(j, obj)).intValue();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m1524(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof AbstractC0269) {
            return ((AbstractC0269) obj).m1230();
        }
        return true;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public static long m1525(long j, Object obj) {
        return ((Long) AbstractC0504.m1989(j, obj)).longValue();
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final InterfaceC0363 m1526(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.f1950;
        InterfaceC0363 interfaceC0363 = (InterfaceC0363) objArr[i3];
        if (interfaceC0363 != null) {
            return interfaceC0363;
        }
        InterfaceC0363 m1889 = C0464.f2220.m1889((Class) objArr[i3 + 1]);
        objArr[i3] = m1889;
        return m1889;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo1527(Object obj, C0425 c0425) {
        int i;
        C0314 c0314 = this;
        Unsafe unsafe = f1943;
        int i2 = 1048575;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (true) {
            int[] iArr = c0314.f1951;
            if (i3 >= iArr.length) {
                ((AbstractC0269) obj).zzc.m1293(c0425);
                return;
            }
            int m1542 = c0314.m1542(i3);
            int m1521 = m1521(m1542);
            int i6 = iArr[i3];
            if (m1521 <= 17) {
                int i7 = iArr[i3 + 2];
                int i8 = i7 & i2;
                if (i8 != i5) {
                    i4 = i8 == i2 ? 0 : unsafe.getInt(obj, i8);
                    i5 = i8;
                }
                i = 1 << (i7 >>> 20);
            } else {
                i = 0;
            }
            long j = m1542 & i2;
            switch (m1521) {
                case 0:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        ((C0260) c0425.f2169).m1209(i6, Double.doubleToRawLongBits(AbstractC0504.f2268.mo1708(j, obj)));
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        ((C0260) c0425.f2169).m1218(i6, Float.floatToRawIntBits(AbstractC0504.f2268.mo1703(j, obj)));
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        ((C0260) c0425.f2169).m1220(i6, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        ((C0260) c0425.f2169).m1220(i6, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        ((C0260) c0425.f2169).m1219(i6, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        ((C0260) c0425.f2169).m1209(i6, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        ((C0260) c0425.f2169).m1218(i6, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        boolean mo1706 = AbstractC0504.f2268.mo1706(j, obj);
                        C0260 c0260 = (C0260) c0425.f2169;
                        c0260.m1214(i6 << 3);
                        c0260.m1210(mo1706 ? (byte) 1 : (byte) 0);
                        break;
                    } else {
                        break;
                    }
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        Object object = unsafe.getObject(obj, j);
                        if (object instanceof String) {
                            C0260 c02602 = (C0260) c0425.f2169;
                            c02602.m1214((i6 << 3) | 2);
                            c02602.m1211((String) object);
                            break;
                        } else {
                            C0260 c02603 = (C0260) c0425.f2169;
                            c02603.m1214((i6 << 3) | 2);
                            c02603.m1221((C0364) object);
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        c0425.m1851(i6, unsafe.getObject(obj, j), c0314.m1526(i3));
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        C0364 c0364 = (C0364) unsafe.getObject(obj, j);
                        C0260 c02604 = (C0260) c0425.f2169;
                        c02604.m1214((i6 << 3) | 2);
                        c02604.m1221(c0364);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        ((C0260) c0425.f2169).m1217(i6, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        ((C0260) c0425.f2169).m1219(i6, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        ((C0260) c0425.f2169).m1218(i6, unsafe.getInt(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        ((C0260) c0425.f2169).m1209(i6, unsafe.getLong(obj, j));
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        int i9 = unsafe.getInt(obj, j);
                        ((C0260) c0425.f2169).m1217(i6, (i9 >> 31) ^ (i9 + i9));
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        long j2 = unsafe.getLong(obj, j);
                        ((C0260) c0425.f2169).m1220(i6, (j2 >> 63) ^ (j2 + j2));
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (c0314.m1544(obj, i3, i5, i4, i)) {
                        c0425.m1852(i6, unsafe.getObject(obj, j), c0314.m1526(i3));
                        break;
                    } else {
                        break;
                    }
                case 18:
                    AbstractC0383.m1734(iArr[i3], (List) unsafe.getObject(obj, j), c0425, false);
                    break;
                case 19:
                    AbstractC0383.m1738(iArr[i3], (List) unsafe.getObject(obj, j), c0425, false);
                    break;
                case 20:
                    AbstractC0383.m1742(iArr[i3], (List) unsafe.getObject(obj, j), c0425, false);
                    break;
                case 21:
                    AbstractC0383.m1754(iArr[i3], (List) unsafe.getObject(obj, j), c0425, false);
                    break;
                case 22:
                    AbstractC0383.m1737(iArr[i3], (List) unsafe.getObject(obj, j), c0425, false);
                    break;
                case 23:
                    AbstractC0383.m1748(iArr[i3], (List) unsafe.getObject(obj, j), c0425, false);
                    break;
                case 24:
                    AbstractC0383.m1739(iArr[i3], (List) unsafe.getObject(obj, j), c0425, false);
                    break;
                case 25:
                    AbstractC0383.m1733(iArr[i3], (List) unsafe.getObject(obj, j), c0425, false);
                    break;
                case 26:
                    int i10 = iArr[i3];
                    List list = (List) unsafe.getObject(obj, j);
                    C0298 c0298 = AbstractC0383.f2041;
                    if (list != null && !list.isEmpty()) {
                        c0425.getClass();
                        for (int i11 = 0; i11 < list.size(); i11++) {
                            C0260 c02605 = (C0260) c0425.f2169;
                            String str = (String) list.get(i11);
                            c02605.m1214((i10 << 3) | 2);
                            c02605.m1211(str);
                        }
                        break;
                    }
                    break;
                case 27:
                    int i12 = iArr[i3];
                    List list2 = (List) unsafe.getObject(obj, j);
                    InterfaceC0363 m1526 = c0314.m1526(i3);
                    C0298 c02982 = AbstractC0383.f2041;
                    if (list2 != null && !list2.isEmpty()) {
                        for (int i13 = 0; i13 < list2.size(); i13++) {
                            c0425.m1851(i12, list2.get(i13), m1526);
                        }
                        break;
                    }
                    break;
                case 28:
                    int i14 = iArr[i3];
                    List list3 = (List) unsafe.getObject(obj, j);
                    C0298 c02983 = AbstractC0383.f2041;
                    if (list3 != null && !list3.isEmpty()) {
                        c0425.getClass();
                        for (int i15 = 0; i15 < list3.size(); i15++) {
                            C0260 c02606 = (C0260) c0425.f2169;
                            C0364 c03642 = (C0364) list3.get(i15);
                            c02606.m1214((i14 << 3) | 2);
                            c02606.m1221(c03642);
                        }
                        break;
                    }
                    break;
                case 29:
                    AbstractC0383.m1745(iArr[i3], (List) unsafe.getObject(obj, j), c0425, false);
                    break;
                case 30:
                    AbstractC0383.m1740(iArr[i3], (List) unsafe.getObject(obj, j), c0425, false);
                    break;
                case 31:
                    AbstractC0383.m1747(iArr[i3], (List) unsafe.getObject(obj, j), c0425, false);
                    break;
                case 32:
                    AbstractC0383.m1732(iArr[i3], (List) unsafe.getObject(obj, j), c0425, false);
                    break;
                case 33:
                    AbstractC0383.m1753(iArr[i3], (List) unsafe.getObject(obj, j), c0425, false);
                    break;
                case 34:
                    AbstractC0383.m1746(iArr[i3], (List) unsafe.getObject(obj, j), c0425, false);
                    break;
                case 35:
                    AbstractC0383.m1734(iArr[i3], (List) unsafe.getObject(obj, j), c0425, true);
                    break;
                case 36:
                    AbstractC0383.m1738(iArr[i3], (List) unsafe.getObject(obj, j), c0425, true);
                    break;
                case 37:
                    AbstractC0383.m1742(iArr[i3], (List) unsafe.getObject(obj, j), c0425, true);
                    break;
                case 38:
                    AbstractC0383.m1754(iArr[i3], (List) unsafe.getObject(obj, j), c0425, true);
                    break;
                case 39:
                    AbstractC0383.m1737(iArr[i3], (List) unsafe.getObject(obj, j), c0425, true);
                    break;
                case 40:
                    AbstractC0383.m1748(iArr[i3], (List) unsafe.getObject(obj, j), c0425, true);
                    break;
                case 41:
                    AbstractC0383.m1739(iArr[i3], (List) unsafe.getObject(obj, j), c0425, true);
                    break;
                case 42:
                    AbstractC0383.m1733(iArr[i3], (List) unsafe.getObject(obj, j), c0425, true);
                    break;
                case 43:
                    AbstractC0383.m1745(iArr[i3], (List) unsafe.getObject(obj, j), c0425, true);
                    break;
                case 44:
                    AbstractC0383.m1740(iArr[i3], (List) unsafe.getObject(obj, j), c0425, true);
                    break;
                case 45:
                    AbstractC0383.m1747(iArr[i3], (List) unsafe.getObject(obj, j), c0425, true);
                    break;
                case 46:
                    AbstractC0383.m1732(iArr[i3], (List) unsafe.getObject(obj, j), c0425, true);
                    break;
                case 47:
                    AbstractC0383.m1753(iArr[i3], (List) unsafe.getObject(obj, j), c0425, true);
                    break;
                case 48:
                    AbstractC0383.m1746(iArr[i3], (List) unsafe.getObject(obj, j), c0425, true);
                    break;
                case 49:
                    int i16 = iArr[i3];
                    List list4 = (List) unsafe.getObject(obj, j);
                    InterfaceC0363 m15262 = c0314.m1526(i3);
                    C0298 c02984 = AbstractC0383.f2041;
                    if (list4 != null && !list4.isEmpty()) {
                        for (int i17 = 0; i17 < list4.size(); i17++) {
                            c0425.m1852(i16, list4.get(i17), m15262);
                        }
                        break;
                    }
                    break;
                case 50:
                    Object object2 = unsafe.getObject(obj, j);
                    if (object2 != null) {
                        int i18 = i3 / 3;
                        C0371 c0371 = ((C0487) c0314.f1950[i18 + i18]).f2247;
                        c0425.getClass();
                        for (Map.Entry entry : ((C0454) object2).entrySet()) {
                            C0260 c02607 = (C0260) c0425.f2169;
                            c02607.m1212(i6, 2);
                            c02607.m1214(C0487.m1938(c0371, entry.getKey(), entry.getValue()));
                            C0487.m1939(c02607, c0371, entry.getKey(), entry.getValue());
                        }
                        break;
                    } else {
                        break;
                    }
                case 51:
                    if (c0314.m1546(i6, i3, obj)) {
                        ((C0260) c0425.f2169).m1209(i6, Double.doubleToRawLongBits(((Double) AbstractC0504.m1989(j, obj)).doubleValue()));
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (c0314.m1546(i6, i3, obj)) {
                        ((C0260) c0425.f2169).m1218(i6, Float.floatToRawIntBits(((Float) AbstractC0504.m1989(j, obj)).floatValue()));
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (c0314.m1546(i6, i3, obj)) {
                        ((C0260) c0425.f2169).m1220(i6, m1525(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (c0314.m1546(i6, i3, obj)) {
                        ((C0260) c0425.f2169).m1220(i6, m1525(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (c0314.m1546(i6, i3, obj)) {
                        ((C0260) c0425.f2169).m1219(i6, m1523(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (c0314.m1546(i6, i3, obj)) {
                        ((C0260) c0425.f2169).m1209(i6, m1525(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (c0314.m1546(i6, i3, obj)) {
                        ((C0260) c0425.f2169).m1218(i6, m1523(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (c0314.m1546(i6, i3, obj)) {
                        boolean booleanValue = ((Boolean) AbstractC0504.m1989(j, obj)).booleanValue();
                        C0260 c02608 = (C0260) c0425.f2169;
                        c02608.m1214(i6 << 3);
                        c02608.m1210(booleanValue ? (byte) 1 : (byte) 0);
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (c0314.m1546(i6, i3, obj)) {
                        Object object3 = unsafe.getObject(obj, j);
                        if (object3 instanceof String) {
                            C0260 c02609 = (C0260) c0425.f2169;
                            c02609.m1214((i6 << 3) | 2);
                            c02609.m1211((String) object3);
                            break;
                        } else {
                            C0260 c026010 = (C0260) c0425.f2169;
                            c026010.m1214((i6 << 3) | 2);
                            c026010.m1221((C0364) object3);
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (c0314.m1546(i6, i3, obj)) {
                        c0425.m1851(i6, unsafe.getObject(obj, j), c0314.m1526(i3));
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (c0314.m1546(i6, i3, obj)) {
                        C0364 c03643 = (C0364) unsafe.getObject(obj, j);
                        C0260 c026011 = (C0260) c0425.f2169;
                        c026011.m1214((i6 << 3) | 2);
                        c026011.m1221(c03643);
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (c0314.m1546(i6, i3, obj)) {
                        ((C0260) c0425.f2169).m1217(i6, m1523(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (c0314.m1546(i6, i3, obj)) {
                        ((C0260) c0425.f2169).m1219(i6, m1523(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (c0314.m1546(i6, i3, obj)) {
                        ((C0260) c0425.f2169).m1218(i6, m1523(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (c0314.m1546(i6, i3, obj)) {
                        ((C0260) c0425.f2169).m1209(i6, m1525(j, obj));
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (c0314.m1546(i6, i3, obj)) {
                        int m1523 = m1523(j, obj);
                        ((C0260) c0425.f2169).m1217(i6, (m1523 >> 31) ^ (m1523 + m1523));
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (c0314.m1546(i6, i3, obj)) {
                        long m1525 = m1525(j, obj);
                        ((C0260) c0425.f2169).m1220(i6, (m1525 >> 63) ^ (m1525 + m1525));
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (c0314.m1546(i6, i3, obj)) {
                        c0425.m1852(i6, unsafe.getObject(obj, j), c0314.m1526(i3));
                        break;
                    } else {
                        break;
                    }
            }
            i3 += 3;
            i2 = 1048575;
            c0314 = this;
        }
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void m1528(int i, Object obj) {
        int i2 = this.f1951[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        AbstractC0504.m1995(j, obj, (1 << (i2 >>> 20)) | AbstractC0504.m2001(j, obj));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean mo1529(Object obj) {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (i5 < this.f1948) {
            int i7 = this.f1952[i5];
            int[] iArr = this.f1951;
            int i8 = iArr[i7];
            int m1542 = m1542(i7);
            int i9 = iArr[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i6) {
                if (i10 != 1048575) {
                    i4 = f1943.getInt(obj, i10);
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
            if ((268435456 & m1542) == 0 || m1544(obj, i2, i, i3, i11)) {
                int m1521 = m1521(m1542);
                if (m1521 == 9 || m1521 == 17) {
                    if (m1544(obj, i2, i, i3, i11) && !m1526(i2).mo1529(AbstractC0504.m1989(m1542 & 1048575, obj))) {
                    }
                    i5++;
                    i6 = i;
                    i4 = i3;
                } else {
                    if (m1521 != 27) {
                        if (m1521 == 60 || m1521 == 68) {
                            if (m1546(i8, i2, obj) && !m1526(i2).mo1529(AbstractC0504.m1989(m1542 & 1048575, obj))) {
                            }
                            i5++;
                            i6 = i;
                            i4 = i3;
                        } else if (m1521 != 49) {
                            if (m1521 != 50) {
                                continue;
                            } else {
                                C0454 c0454 = (C0454) AbstractC0504.m1989(m1542 & 1048575, obj);
                                if (c0454.isEmpty()) {
                                    continue;
                                } else {
                                    int i13 = i2 / 3;
                                    if (((EnumC0319) ((C0487) this.f1950[i13 + i13]).f2247.f2031).f1964 == EnumC0407.f2145) {
                                        InterfaceC0363 interfaceC0363 = null;
                                        for (Object obj2 : c0454.values()) {
                                            if (interfaceC0363 == null) {
                                                interfaceC0363 = C0464.f2220.m1889(obj2.getClass());
                                            }
                                            if (!interfaceC0363.mo1529(obj2)) {
                                            }
                                        }
                                    } else {
                                        continue;
                                    }
                                }
                            }
                            i5++;
                            i6 = i;
                            i4 = i3;
                        }
                    }
                    List list = (List) AbstractC0504.m1989(m1542 & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        InterfaceC0363 m1526 = m1526(i2);
                        for (int i14 = 0; i14 < list.size(); i14++) {
                            if (m1526.mo1529(list.get(i14))) {
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
    public final Object m1530(int i, int i2, Object obj) {
        InterfaceC0363 m1526 = m1526(i2);
        if (!m1546(i, i2, obj)) {
            return m1526.mo1548();
        }
        Object object = f1943.getObject(obj, m1542(i2) & 1048575);
        if (m1524(object)) {
            return object;
        }
        AbstractC0269 mo1548 = m1526.mo1548();
        if (object != null) {
            m1526.mo1550(mo1548, object);
        }
        return mo1548;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object m1531(int i, Object obj) {
        InterfaceC0363 m1526 = m1526(i);
        int m1542 = m1542(i) & 1048575;
        if (!m1537(i, obj)) {
            return m1526.mo1548();
        }
        Object object = f1943.getObject(obj, m1542);
        if (m1524(object)) {
            return object;
        }
        AbstractC0269 mo1548 = m1526.mo1548();
        if (object != null) {
            m1526.mo1550(mo1548, object);
        }
        return mo1548;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void m1532(Object obj, int i, Object obj2) {
        int[] iArr = this.f1951;
        int i2 = iArr[i];
        if (m1546(i2, i, obj2)) {
            int m1542 = m1542(i) & 1048575;
            Unsafe unsafe = f1943;
            long j = m1542;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                int i3 = iArr[i];
                String obj3 = obj2.toString();
                StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + 38 + obj3.length());
                sb.append("Source subfield ");
                sb.append(i3);
                sb.append(" is present but null: ");
                sb.append(obj3);
                throw new IllegalStateException(sb.toString());
            }
            InterfaceC0363 m1526 = m1526(i);
            if (!m1546(i2, i, obj)) {
                if (m1524(object)) {
                    AbstractC0269 mo1548 = m1526.mo1548();
                    m1526.mo1550(mo1548, object);
                    unsafe.putObject(obj, j, mo1548);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                AbstractC0504.m1995(iArr[i + 2] & 1048575, obj, i2);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!m1524(object2)) {
                AbstractC0269 mo15482 = m1526.mo1548();
                m1526.mo1550(mo15482, object2);
                unsafe.putObject(obj, j, mo15482);
                object2 = mo15482;
            }
            m1526.mo1550(object2, object);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01d5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01c7 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ˆʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo1533(com.google.android.gms.internal.measurement.AbstractC0269 r8, com.google.android.gms.internal.measurement.AbstractC0269 r9) {
        /*
            Method dump skipped, instructions count: 614
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C0314.mo1533(com.google.android.gms.internal.measurement.ʼﹶ, com.google.android.gms.internal.measurement.ʼﹶ):boolean");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo1534(Object obj) {
        if (!m1524(obj)) {
            return;
        }
        if (obj instanceof AbstractC0269) {
            AbstractC0269 abstractC0269 = (AbstractC0269) obj;
            abstractC0269.m1228();
            abstractC0269.zza = 0;
            abstractC0269.m1235();
        }
        int i = 0;
        while (true) {
            int[] iArr = this.f1951;
            if (i >= iArr.length) {
                this.f1944.getClass();
                C0278 c0278 = ((AbstractC0269) obj).zzc;
                if (c0278.f1790) {
                    c0278.f1790 = false;
                    return;
                }
                return;
            }
            int m1542 = m1542(i);
            int i2 = 1048575 & m1542;
            int m1521 = m1521(m1542);
            long j = i2;
            if (m1521 != 9) {
                if (m1521 != 60 && m1521 != 68) {
                    switch (m1521) {
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
                            AbstractC0265 abstractC0265 = (AbstractC0265) ((InterfaceC0247) AbstractC0504.m1989(j, obj));
                            if (!abstractC0265.f1765) {
                                break;
                            } else {
                                abstractC0265.f1765 = false;
                                break;
                            }
                        case 50:
                            Unsafe unsafe = f1943;
                            Object object = unsafe.getObject(obj, j);
                            if (object == null) {
                                break;
                            } else {
                                ((C0454) object).f2206 = false;
                                unsafe.putObject(obj, j, object);
                                break;
                            }
                    }
                } else if (m1546(iArr[i], i, obj)) {
                    m1526(i).mo1534(f1943.getObject(obj, j));
                }
                i += 3;
            }
            if (m1537(i, obj)) {
                m1526(i).mo1534(f1943.getObject(obj, j));
            }
            i += 3;
        }
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m1535(Object obj, int i, Object obj2, int i2) {
        f1943.putObject(obj, m1542(i2) & 1048575, obj2);
        AbstractC0504.m1995(this.f1951[i2 + 2] & 1048575, obj, i);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final boolean m1536(AbstractC0269 abstractC0269, AbstractC0269 abstractC02692, int i) {
        return m1537(i, abstractC0269) == m1537(i, abstractC02692);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean m1537(int i, Object obj) {
        int i2 = this.f1951[i + 2];
        long j = i2 & 1048575;
        if (j == 1048575) {
            int m1542 = m1542(i);
            long j2 = m1542 & 1048575;
            switch (m1521(m1542)) {
                case 0:
                    if (Double.doubleToRawLongBits(AbstractC0504.f2268.mo1708(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 1:
                    if (Float.floatToRawIntBits(AbstractC0504.f2268.mo1703(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 2:
                    if (AbstractC0504.m1997(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (AbstractC0504.m1997(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (AbstractC0504.m2001(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (AbstractC0504.m1997(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (AbstractC0504.m2001(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    return AbstractC0504.f2268.mo1706(j2, obj);
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    Object m1989 = AbstractC0504.m1989(j2, obj);
                    if (m1989 instanceof String) {
                        if (((String) m1989).isEmpty()) {
                            return false;
                        }
                    } else {
                        if (!(m1989 instanceof C0364)) {
                            throw new IllegalArgumentException();
                        }
                        if (C0364.f2018.equals(m1989)) {
                            return false;
                        }
                    }
                    break;
                case 9:
                    if (AbstractC0504.m1989(j2, obj) == null) {
                        return false;
                    }
                    break;
                case 10:
                    if (C0364.f2018.equals(AbstractC0504.m1989(j2, obj))) {
                        return false;
                    }
                    break;
                case 11:
                    if (AbstractC0504.m2001(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (AbstractC0504.m2001(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (AbstractC0504.m2001(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (AbstractC0504.m1997(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (AbstractC0504.m2001(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (AbstractC0504.m1997(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (AbstractC0504.m1989(j2, obj) == null) {
                        return false;
                    }
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        } else if (((1 << (i2 >>> 20)) & AbstractC0504.m2001(j, obj)) == 0) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x1099, code lost:
    
        if (r15 != r11) goto L636;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x10a1, code lost:
    
        throw new java.io.IOException(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0fb2, code lost:
    
        if (r8 == 1048575) goto L596;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0fb4, code lost:
    
        r0.putInt(r3, r8, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0fb8, code lost:
    
        r0 = r12.f1948;
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0fbe, code lost:
    
        if (r0 >= r12.f1949) goto L737;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0fc0, code lost:
    
        r2 = r12.f1952[r0];
        r4 = r9[r2];
        r7 = com.google.android.gms.internal.measurement.AbstractC0504.m1989(r12.m1542(r2) & 1048575, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0fd4, code lost:
    
        if (r7 == null) goto L738;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0fd6, code lost:
    
        r8 = r12.m1547(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0fda, code lost:
    
        if (r8 == null) goto L739;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0fdc, code lost:
    
        r2 = r2 / 3;
        r2 = ((com.google.android.gms.internal.measurement.C0487) r17[r2 + r2]).f2247;
        r7 = ((com.google.android.gms.internal.measurement.C0454) r7).entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0ff3, code lost:
    
        if (r7.hasNext() == false) goto L740;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0ff5, code lost:
    
        r9 = (java.util.Map.Entry) r7.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x1009, code lost:
    
        if (r8.mo1297(((java.lang.Integer) r9.getValue()).intValue()) != false) goto L741;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x106c, code lost:
    
        r3 = r40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x100b, code lost:
    
        if (r1 != null) goto L613;
     */
    /* JADX WARN: Code restructure failed: missing block: B:673:0x00f8, code lost:
    
        r6 = r43;
        r9 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:674:0x00fb, code lost:
    
        r4 = r10;
        r7 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:675:0x00fd, code lost:
    
        r10 = r13;
        r8 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x100d, code lost:
    
        r12.getClass();
        r1 = (com.google.android.gms.internal.measurement.AbstractC0269) r3;
        r13 = r1.zzc;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x1015, code lost:
    
        if (r13 != r10) goto L612;
     */
    /* JADX WARN: Code restructure failed: missing block: B:690:0x0179, code lost:
    
        r4 = r3;
        r3 = r2;
        r2 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x1017, code lost:
    
        r13 = com.google.android.gms.internal.measurement.C0278.m1289();
        r1.zzc = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x101d, code lost:
    
        r1 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x101e, code lost:
    
        r13 = com.google.android.gms.internal.measurement.C0487.m1938(r2, r9.getKey(), r9.getValue());
        r14 = com.google.android.gms.internal.measurement.C0364.f2018;
        r14 = new byte[r13];
        r18 = r0;
        r0 = new com.google.android.gms.internal.measurement.C0260(r13, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x1035, code lost:
    
        com.google.android.gms.internal.measurement.C0487.m1939(r0, r2, r9.getKey(), r9.getValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x1043, code lost:
    
        if ((r13 - r0.f1757) != 0) goto L736;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x1045, code lost:
    
        r1.m1291((r4 << 3) | 2, new com.google.android.gms.internal.measurement.C0364(r14));
        r7.remove();
        r3 = r40;
        r0 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x1064, code lost:
    
        throw new java.lang.IllegalStateException("Did not write as much data as expected.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x1065, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x106b, code lost:
    
        throw new java.lang.RuntimeException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x1074, code lost:
    
        r0 = r0 + 1;
        r3 = r40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x1080, code lost:
    
        if (r1 == null) goto L627;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x1082, code lost:
    
        ((com.google.android.gms.internal.measurement.AbstractC0269) r40).zzc = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x1088, code lost:
    
        if (r11 != 0) goto L632;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x108a, code lost:
    
        if (r5 != r6) goto L630;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x1094, code lost:
    
        throw new java.io.IOException(r32);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x109b, code lost:
    
        return r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x1095, code lost:
    
        r10 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x1097, code lost:
    
        if (r5 > r6) goto L636;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:115:0x0cb4. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:263:0x04cd. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:665:0x00cb. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0f7c  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0f4a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0f5f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:277:0x0b3e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0b51 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0f68 A[ADDED_TO_REGION] */
    /* renamed from: ˏי, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m1538(java.lang.Object r40, byte[] r41, int r42, int r43, int r44, com.google.android.gms.internal.measurement.C0317 r45) {
        /*
            Method dump skipped, instructions count: 4420
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C0314.m1538(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.ˈʻ):int");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo1539(Object obj, byte[] bArr, int i, int i2, C0317 c0317) {
        m1538(obj, bArr, i, i2, 0, c0317);
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m1540(Object obj, int i, Object obj2) {
        if (m1537(i, obj2)) {
            int m1542 = m1542(i) & 1048575;
            Unsafe unsafe = f1943;
            long j = m1542;
            Object object = unsafe.getObject(obj2, j);
            if (object == null) {
                int i2 = this.f1951[i];
                String obj3 = obj2.toString();
                StringBuilder sb = new StringBuilder(String.valueOf(i2).length() + 38 + obj3.length());
                sb.append("Source subfield ");
                sb.append(i2);
                sb.append(" is present but null: ");
                sb.append(obj3);
                throw new IllegalStateException(sb.toString());
            }
            InterfaceC0363 m1526 = m1526(i);
            if (!m1537(i, obj)) {
                if (m1524(object)) {
                    AbstractC0269 mo1548 = m1526.mo1548();
                    m1526.mo1550(mo1548, object);
                    unsafe.putObject(obj, j, mo1548);
                } else {
                    unsafe.putObject(obj, j, object);
                }
                m1528(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!m1524(object2)) {
                AbstractC0269 mo15482 = m1526.mo1548();
                m1526.mo1550(mo15482, object2);
                unsafe.putObject(obj, j, mo15482);
                object2 = mo15482;
            }
            m1526.mo1550(object2, object);
        }
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void m1541(Object obj, int i, Object obj2) {
        f1943.putObject(obj, m1542(i) & 1048575, obj2);
        m1528(i, obj);
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int m1542(int i) {
        return this.f1951[i + 1];
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x004c. Please report as an issue. */
    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int mo1543(AbstractC0514 abstractC0514) {
        int i;
        int m1207;
        int m1205;
        int i2;
        int i3;
        int mo1234;
        int m12072;
        int size;
        int m1752;
        int m12073;
        int m12074;
        int m12075;
        int i4;
        int m12076;
        int m12052;
        C0314 c0314 = this;
        AbstractC0514 abstractC05142 = abstractC0514;
        Unsafe unsafe = f1943;
        int i5 = 1048575;
        int i6 = 1048575;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int[] iArr = c0314.f1951;
            if (i7 >= iArr.length) {
                return ((AbstractC0269) abstractC0514).zzc.m1290() + i9;
            }
            int m1542 = c0314.m1542(i7);
            int m1521 = m1521(m1542);
            int i10 = iArr[i7];
            int i11 = iArr[i7 + 2];
            int i12 = i11 & i5;
            if (m1521 <= 17) {
                if (i12 != i6) {
                    i8 = i12 == i5 ? 0 : unsafe.getInt(abstractC05142, i12);
                    i6 = i12;
                }
                i = 1 << (i11 >>> 20);
            } else {
                i = 0;
            }
            int i13 = m1542 & i5;
            if (m1521 >= EnumC0416.f2155.f2157) {
                EnumC0416.f2153.getClass();
            }
            long j = i13;
            switch (m1521) {
                case 0:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m15(i10 << 3, 8, i9);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m15(i10 << 3, 4, i9);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        long j2 = unsafe.getLong(abstractC05142, j);
                        m1207 = C0260.m1207(i10 << 3);
                        m1205 = C0260.m1205(j2);
                        i2 = m1205 + m1207;
                        i9 += i2;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        long j3 = unsafe.getLong(abstractC05142, j);
                        m1207 = C0260.m1207(i10 << 3);
                        m1205 = C0260.m1205(j3);
                        i2 = m1205 + m1207;
                        i9 += i2;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        long j4 = unsafe.getInt(abstractC05142, j);
                        m1207 = C0260.m1207(i10 << 3);
                        m1205 = C0260.m1205(j4);
                        i2 = m1205 + m1207;
                        i9 += i2;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m15(i10 << 3, 8, i9);
                        break;
                    } else {
                        break;
                    }
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m15(i10 << 3, 4, i9);
                        break;
                    } else {
                        break;
                    }
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m15(i10 << 3, 1, i9);
                        break;
                    } else {
                        break;
                    }
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        int i14 = i10 << 3;
                        Object object = unsafe.getObject(abstractC05142, j);
                        if (object instanceof C0364) {
                            int m12077 = C0260.m1207(i14);
                            int mo1236 = ((C0364) object).mo1236();
                            i9 = AbstractC0001.m21(mo1236, mo1236, m12077, i9);
                            break;
                        } else {
                            m1207 = C0260.m1207(i14);
                            m1205 = C0260.m1206((String) object);
                            i2 = m1205 + m1207;
                            i9 += i2;
                            break;
                        }
                    } else {
                        break;
                    }
                case 9:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        Object object2 = unsafe.getObject(abstractC05142, j);
                        InterfaceC0363 m1526 = c0314.m1526(i7);
                        C0298 c0298 = AbstractC0383.f2041;
                        int m12078 = C0260.m1207(i10 << 3);
                        int mo12342 = ((AbstractC0514) object2).mo1234(m1526);
                        i9 = AbstractC0001.m21(mo12342, mo12342, m12078, i9);
                        break;
                    } else {
                        break;
                    }
                case 10:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        C0364 c0364 = (C0364) unsafe.getObject(abstractC05142, j);
                        int m12079 = C0260.m1207(i10 << 3);
                        int mo12362 = c0364.mo1236();
                        i9 = AbstractC0001.m21(mo12362, mo12362, m12079, i9);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m15(unsafe.getInt(abstractC05142, j), C0260.m1207(i10 << 3), i9);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        long j5 = unsafe.getInt(abstractC05142, j);
                        m1207 = C0260.m1207(i10 << 3);
                        m1205 = C0260.m1205(j5);
                        i2 = m1205 + m1207;
                        i9 += i2;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m15(i10 << 3, 4, i9);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        i9 = AbstractC0001.m15(i10 << 3, 8, i9);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        int i15 = unsafe.getInt(abstractC05142, j);
                        i9 = AbstractC0001.m15((i15 >> 31) ^ (i15 + i15), C0260.m1207(i10 << 3), i9);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        long j6 = unsafe.getLong(abstractC05142, j);
                        m1207 = C0260.m1207(i10 << 3);
                        m1205 = C0260.m1205((j6 >> 63) ^ (j6 + j6));
                        i2 = m1205 + m1207;
                        i9 += i2;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    if (c0314.m1544(abstractC05142, i7, i6, i8, i)) {
                        AbstractC0514 abstractC05143 = (AbstractC0514) unsafe.getObject(abstractC05142, j);
                        InterfaceC0363 m15262 = c0314.m1526(i7);
                        int m120710 = C0260.m1207(i10 << 3);
                        i3 = m120710 + m120710;
                        mo1234 = abstractC05143.mo1234(m15262);
                        i2 = mo1234 + i3;
                        i9 += i2;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    i2 = AbstractC0383.m1731(i10, (List) unsafe.getObject(abstractC05142, j));
                    i9 += i2;
                    break;
                case 19:
                    i2 = AbstractC0383.m1736(i10, (List) unsafe.getObject(abstractC05142, j));
                    i9 += i2;
                    break;
                case 20:
                    List list = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c02982 = AbstractC0383.f2041;
                    if (list.size() != 0) {
                        m12072 = (C0260.m1207(i10 << 3) * list.size()) + AbstractC0383.m1749(list);
                        i9 += m12072;
                        break;
                    }
                    m12072 = 0;
                    i9 += m12072;
                case 21:
                    List list2 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c02983 = AbstractC0383.f2041;
                    size = list2.size();
                    if (size != 0) {
                        m1752 = AbstractC0383.m1752(list2);
                        m12073 = C0260.m1207(i10 << 3);
                        m12074 = (m12073 * size) + m1752;
                        i9 += m12074;
                        break;
                    }
                    m12074 = 0;
                    i9 += m12074;
                case 22:
                    List list3 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c02984 = AbstractC0383.f2041;
                    size = list3.size();
                    if (size != 0) {
                        m1752 = AbstractC0383.m1735(list3);
                        m12073 = C0260.m1207(i10 << 3);
                        m12074 = (m12073 * size) + m1752;
                        i9 += m12074;
                        break;
                    }
                    m12074 = 0;
                    i9 += m12074;
                case 23:
                    i2 = AbstractC0383.m1731(i10, (List) unsafe.getObject(abstractC05142, j));
                    i9 += i2;
                    break;
                case 24:
                    i2 = AbstractC0383.m1736(i10, (List) unsafe.getObject(abstractC05142, j));
                    i9 += i2;
                    break;
                case 25:
                    List list4 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c02985 = AbstractC0383.f2041;
                    int size2 = list4.size();
                    if (size2 != 0) {
                        m12072 = (C0260.m1207(i10 << 3) + 1) * size2;
                        i9 += m12072;
                        break;
                    }
                    m12072 = 0;
                    i9 += m12072;
                case 26:
                    List list5 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c02986 = AbstractC0383.f2041;
                    int size3 = list5.size();
                    if (size3 != 0) {
                        m12074 = C0260.m1207(i10 << 3) * size3;
                        for (int i16 = 0; i16 < size3; i16++) {
                            Object obj = list5.get(i16);
                            if (obj instanceof C0364) {
                                int mo12363 = ((C0364) obj).mo1236();
                                m12074 = AbstractC0001.m15(mo12363, mo12363, m12074);
                            } else {
                                m12074 = C0260.m1206((String) obj) + m12074;
                            }
                        }
                        i9 += m12074;
                        break;
                    }
                    m12074 = 0;
                    i9 += m12074;
                case 27:
                    List list6 = (List) unsafe.getObject(abstractC05142, j);
                    InterfaceC0363 m15263 = c0314.m1526(i7);
                    C0298 c02987 = AbstractC0383.f2041;
                    int size4 = list6.size();
                    if (size4 == 0) {
                        m12075 = 0;
                    } else {
                        m12075 = C0260.m1207(i10 << 3) * size4;
                        for (int i17 = 0; i17 < size4; i17++) {
                            int mo12343 = ((AbstractC0514) list6.get(i17)).mo1234(m15263);
                            m12075 = AbstractC0001.m15(mo12343, mo12343, m12075);
                        }
                    }
                    i9 += m12075;
                    break;
                case 28:
                    List list7 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c02988 = AbstractC0383.f2041;
                    int size5 = list7.size();
                    if (size5 != 0) {
                        m12074 = C0260.m1207(i10 << 3) * size5;
                        for (int i18 = 0; i18 < list7.size(); i18++) {
                            int mo12364 = ((C0364) list7.get(i18)).mo1236();
                            m12074 = AbstractC0001.m15(mo12364, mo12364, m12074);
                        }
                        i9 += m12074;
                        break;
                    }
                    m12074 = 0;
                    i9 += m12074;
                case 29:
                    List list8 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c02989 = AbstractC0383.f2041;
                    size = list8.size();
                    if (size != 0) {
                        m1752 = AbstractC0383.m1730(list8);
                        m12073 = C0260.m1207(i10 << 3);
                        m12074 = (m12073 * size) + m1752;
                        i9 += m12074;
                        break;
                    }
                    m12074 = 0;
                    i9 += m12074;
                case 30:
                    List list9 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c029810 = AbstractC0383.f2041;
                    size = list9.size();
                    if (size != 0) {
                        m1752 = AbstractC0383.m1741(list9);
                        m12073 = C0260.m1207(i10 << 3);
                        m12074 = (m12073 * size) + m1752;
                        i9 += m12074;
                        break;
                    }
                    m12074 = 0;
                    i9 += m12074;
                case 31:
                    i2 = AbstractC0383.m1736(i10, (List) unsafe.getObject(abstractC05142, j));
                    i9 += i2;
                    break;
                case 32:
                    i2 = AbstractC0383.m1731(i10, (List) unsafe.getObject(abstractC05142, j));
                    i9 += i2;
                    break;
                case 33:
                    List list10 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c029811 = AbstractC0383.f2041;
                    size = list10.size();
                    if (size != 0) {
                        m1752 = AbstractC0383.m1744(list10);
                        m12073 = C0260.m1207(i10 << 3);
                        m12074 = (m12073 * size) + m1752;
                        i9 += m12074;
                        break;
                    }
                    m12074 = 0;
                    i9 += m12074;
                case 34:
                    List list11 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c029812 = AbstractC0383.f2041;
                    size = list11.size();
                    if (size != 0) {
                        m1752 = AbstractC0383.m1743(list11);
                        m12073 = C0260.m1207(i10 << 3);
                        m12074 = (m12073 * size) + m1752;
                        i9 += m12074;
                        break;
                    }
                    m12074 = 0;
                    i9 += m12074;
                case 35:
                    List list12 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c029813 = AbstractC0383.f2041;
                    int size6 = list12.size() * 8;
                    if (size6 > 0) {
                        i9 = AbstractC0001.m21(size6, C0260.m1207(i10 << 3), size6, i9);
                        break;
                    } else {
                        break;
                    }
                case 36:
                    List list13 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c029814 = AbstractC0383.f2041;
                    int size7 = list13.size() * 4;
                    if (size7 > 0) {
                        i9 = AbstractC0001.m21(size7, C0260.m1207(i10 << 3), size7, i9);
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int m1749 = AbstractC0383.m1749((List) unsafe.getObject(abstractC05142, j));
                    if (m1749 > 0) {
                        i9 = AbstractC0001.m21(m1749, C0260.m1207(i10 << 3), m1749, i9);
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int m17522 = AbstractC0383.m1752((List) unsafe.getObject(abstractC05142, j));
                    if (m17522 > 0) {
                        i9 = AbstractC0001.m21(m17522, C0260.m1207(i10 << 3), m17522, i9);
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int m1735 = AbstractC0383.m1735((List) unsafe.getObject(abstractC05142, j));
                    if (m1735 > 0) {
                        i9 = AbstractC0001.m21(m1735, C0260.m1207(i10 << 3), m1735, i9);
                        break;
                    } else {
                        break;
                    }
                case 40:
                    List list14 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c029815 = AbstractC0383.f2041;
                    int size8 = list14.size() * 8;
                    if (size8 > 0) {
                        i9 = AbstractC0001.m21(size8, C0260.m1207(i10 << 3), size8, i9);
                        break;
                    } else {
                        break;
                    }
                case 41:
                    List list15 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c029816 = AbstractC0383.f2041;
                    int size9 = list15.size() * 4;
                    if (size9 > 0) {
                        i9 = AbstractC0001.m21(size9, C0260.m1207(i10 << 3), size9, i9);
                        break;
                    } else {
                        break;
                    }
                case 42:
                    List list16 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c029817 = AbstractC0383.f2041;
                    int size10 = list16.size();
                    if (size10 > 0) {
                        i9 = AbstractC0001.m21(size10, C0260.m1207(i10 << 3), size10, i9);
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int m1730 = AbstractC0383.m1730((List) unsafe.getObject(abstractC05142, j));
                    if (m1730 > 0) {
                        i9 = AbstractC0001.m21(m1730, C0260.m1207(i10 << 3), m1730, i9);
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int m1741 = AbstractC0383.m1741((List) unsafe.getObject(abstractC05142, j));
                    if (m1741 > 0) {
                        i9 = AbstractC0001.m21(m1741, C0260.m1207(i10 << 3), m1741, i9);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    List list17 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c029818 = AbstractC0383.f2041;
                    int size11 = list17.size() * 4;
                    if (size11 > 0) {
                        i9 = AbstractC0001.m21(size11, C0260.m1207(i10 << 3), size11, i9);
                        break;
                    } else {
                        break;
                    }
                case 46:
                    List list18 = (List) unsafe.getObject(abstractC05142, j);
                    C0298 c029819 = AbstractC0383.f2041;
                    int size12 = list18.size() * 8;
                    if (size12 > 0) {
                        i9 = AbstractC0001.m21(size12, C0260.m1207(i10 << 3), size12, i9);
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int m1744 = AbstractC0383.m1744((List) unsafe.getObject(abstractC05142, j));
                    if (m1744 > 0) {
                        i9 = AbstractC0001.m21(m1744, C0260.m1207(i10 << 3), m1744, i9);
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int m1743 = AbstractC0383.m1743((List) unsafe.getObject(abstractC05142, j));
                    if (m1743 > 0) {
                        i9 = AbstractC0001.m21(m1743, C0260.m1207(i10 << 3), m1743, i9);
                        break;
                    } else {
                        break;
                    }
                case 49:
                    List list19 = (List) unsafe.getObject(abstractC05142, j);
                    InterfaceC0363 m15264 = c0314.m1526(i7);
                    C0298 c029820 = AbstractC0383.f2041;
                    int size13 = list19.size();
                    if (size13 == 0) {
                        i4 = 0;
                    } else {
                        i4 = 0;
                        for (int i19 = 0; i19 < size13; i19++) {
                            AbstractC0514 abstractC05144 = (AbstractC0514) list19.get(i19);
                            int m120711 = C0260.m1207(i10 << 3);
                            i4 += abstractC05144.mo1234(m15264) + m120711 + m120711;
                        }
                    }
                    i9 += i4;
                    break;
                case 50:
                    int i20 = i7 / 3;
                    C0454 c0454 = (C0454) unsafe.getObject(abstractC05142, j);
                    C0487 c0487 = (C0487) c0314.f1950[i20 + i20];
                    if (!c0454.isEmpty()) {
                        m12074 = 0;
                        for (Map.Entry entry : c0454.entrySet()) {
                            Object key = entry.getKey();
                            Object value = entry.getValue();
                            C0371 c0371 = c0487.f2247;
                            int m120712 = C0260.m1207(i10 << 3);
                            int m1938 = C0487.m1938(c0371, key, value);
                            m12074 = AbstractC0001.m21(m1938, m1938, m120712, m12074);
                        }
                        i9 += m12074;
                        break;
                    }
                    m12074 = 0;
                    i9 += m12074;
                case 51:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        i9 = AbstractC0001.m15(i10 << 3, 8, i9);
                        break;
                    } else {
                        break;
                    }
                case 52:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        i9 = AbstractC0001.m15(i10 << 3, 4, i9);
                        break;
                    } else {
                        break;
                    }
                case 53:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        long m1525 = m1525(j, abstractC05142);
                        m12076 = C0260.m1207(i10 << 3);
                        m12052 = C0260.m1205(m1525);
                        i9 += m12052 + m12076;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        long m15252 = m1525(j, abstractC05142);
                        m12076 = C0260.m1207(i10 << 3);
                        m12052 = C0260.m1205(m15252);
                        i9 += m12052 + m12076;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        long m1523 = m1523(j, abstractC05142);
                        m12076 = C0260.m1207(i10 << 3);
                        m12052 = C0260.m1205(m1523);
                        i9 += m12052 + m12076;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        i9 = AbstractC0001.m15(i10 << 3, 8, i9);
                        break;
                    } else {
                        break;
                    }
                case 57:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        i9 = AbstractC0001.m15(i10 << 3, 4, i9);
                        break;
                    } else {
                        break;
                    }
                case 58:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        i9 = AbstractC0001.m15(i10 << 3, 1, i9);
                        break;
                    } else {
                        break;
                    }
                case 59:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        int i21 = i10 << 3;
                        Object object3 = unsafe.getObject(abstractC05142, j);
                        if (object3 instanceof C0364) {
                            int m120713 = C0260.m1207(i21);
                            int mo12365 = ((C0364) object3).mo1236();
                            i9 = AbstractC0001.m21(mo12365, mo12365, m120713, i9);
                            break;
                        } else {
                            m12076 = C0260.m1207(i21);
                            m12052 = C0260.m1206((String) object3);
                            i9 += m12052 + m12076;
                            break;
                        }
                    } else {
                        break;
                    }
                case 60:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        Object object4 = unsafe.getObject(abstractC05142, j);
                        InterfaceC0363 m15265 = c0314.m1526(i7);
                        C0298 c029821 = AbstractC0383.f2041;
                        int m120714 = C0260.m1207(i10 << 3);
                        int mo12344 = ((AbstractC0514) object4).mo1234(m15265);
                        i9 = AbstractC0001.m21(mo12344, mo12344, m120714, i9);
                        break;
                    } else {
                        break;
                    }
                case 61:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        C0364 c03642 = (C0364) unsafe.getObject(abstractC05142, j);
                        int m120715 = C0260.m1207(i10 << 3);
                        int mo12366 = c03642.mo1236();
                        i9 = AbstractC0001.m21(mo12366, mo12366, m120715, i9);
                        break;
                    } else {
                        break;
                    }
                case 62:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        i9 = AbstractC0001.m15(m1523(j, abstractC05142), C0260.m1207(i10 << 3), i9);
                        break;
                    } else {
                        break;
                    }
                case 63:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        long m15232 = m1523(j, abstractC05142);
                        m12076 = C0260.m1207(i10 << 3);
                        m12052 = C0260.m1205(m15232);
                        i9 += m12052 + m12076;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        i9 = AbstractC0001.m15(i10 << 3, 4, i9);
                        break;
                    } else {
                        break;
                    }
                case 65:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        i9 = AbstractC0001.m15(i10 << 3, 8, i9);
                        break;
                    } else {
                        break;
                    }
                case 66:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        int m15233 = m1523(j, abstractC05142);
                        i9 = AbstractC0001.m15((m15233 >> 31) ^ (m15233 + m15233), C0260.m1207(i10 << 3), i9);
                        break;
                    } else {
                        break;
                    }
                case 67:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        long m15253 = m1525(j, abstractC05142);
                        m12076 = C0260.m1207(i10 << 3);
                        m12052 = C0260.m1205((m15253 >> 63) ^ (m15253 + m15253));
                        i9 += m12052 + m12076;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    if (c0314.m1546(i10, i7, abstractC05142)) {
                        AbstractC0514 abstractC05145 = (AbstractC0514) unsafe.getObject(abstractC05142, j);
                        InterfaceC0363 m15266 = c0314.m1526(i7);
                        int m120716 = C0260.m1207(i10 << 3);
                        i3 = m120716 + m120716;
                        mo1234 = abstractC05145.mo1234(m15266);
                        i2 = mo1234 + i3;
                        i9 += i2;
                        break;
                    } else {
                        break;
                    }
            }
            i7 += 3;
            c0314 = this;
            abstractC05142 = abstractC0514;
            i5 = 1048575;
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final boolean m1544(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m1537(i, obj) : (i3 & i4) != 0;
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
    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo1545(com.google.android.gms.internal.measurement.AbstractC0269 r11) {
        /*
            Method dump skipped, instructions count: 726
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C0314.mo1545(com.google.android.gms.internal.measurement.ʼﹶ):int");
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final boolean m1546(int i, int i2, Object obj) {
        return AbstractC0504.m2001((long) (this.f1951[i2 + 2] & 1048575), obj) == i;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final InterfaceC0345 m1547(int i) {
        int i2 = i / 3;
        return (InterfaceC0345) this.f1950[i2 + i2 + 1];
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC0269 mo1548() {
        return (AbstractC0269) ((AbstractC0269) this.f1947).mo1194(4);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final int m1549(int i, int i2) {
        int[] iArr = this.f1951;
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

    @Override // com.google.android.gms.internal.measurement.InterfaceC0363
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo1550(Object obj, Object obj2) {
        Object obj3;
        if (!m1524(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.f1951;
            if (i >= iArr.length) {
                AbstractC0383.m1750(obj, obj2);
                return;
            }
            int m1542 = m1542(i);
            int i2 = m1542 & 1048575;
            int m1521 = m1521(m1542);
            int i3 = iArr[i];
            long j = i2;
            switch (m1521) {
                case 0:
                    if (m1537(i, obj2)) {
                        AbstractC0372 abstractC0372 = AbstractC0504.f2268;
                        obj3 = obj;
                        abstractC0372.mo1705(obj3, j, abstractC0372.mo1708(j, obj2));
                        m1528(i, obj3);
                        break;
                    }
                    break;
                case 1:
                    if (m1537(i, obj2)) {
                        AbstractC0372 abstractC03722 = AbstractC0504.f2268;
                        abstractC03722.mo1704(obj, j, abstractC03722.mo1703(j, obj2));
                        m1528(i, obj);
                        break;
                    }
                    break;
                case 2:
                    if (m1537(i, obj2)) {
                        AbstractC0504.m1986(obj, j, AbstractC0504.m1997(j, obj2));
                        m1528(i, obj);
                        break;
                    }
                    break;
                case 3:
                    if (m1537(i, obj2)) {
                        AbstractC0504.m1986(obj, j, AbstractC0504.m1997(j, obj2));
                        m1528(i, obj);
                        break;
                    }
                    break;
                case 4:
                    if (m1537(i, obj2)) {
                        AbstractC0504.m1995(j, obj, AbstractC0504.m2001(j, obj2));
                        m1528(i, obj);
                        break;
                    }
                    break;
                case 5:
                    if (m1537(i, obj2)) {
                        AbstractC0504.m1986(obj, j, AbstractC0504.m1997(j, obj2));
                        m1528(i, obj);
                        break;
                    }
                    break;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (m1537(i, obj2)) {
                        AbstractC0504.m1995(j, obj, AbstractC0504.m2001(j, obj2));
                        m1528(i, obj);
                        break;
                    }
                    break;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    if (m1537(i, obj2)) {
                        AbstractC0372 abstractC03723 = AbstractC0504.f2268;
                        abstractC03723.mo1702(obj, j, abstractC03723.mo1706(j, obj2));
                        m1528(i, obj);
                        break;
                    }
                    break;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    if (m1537(i, obj2)) {
                        AbstractC0504.m1994(j, obj, AbstractC0504.m1989(j, obj2));
                        m1528(i, obj);
                        break;
                    }
                    break;
                case 9:
                    m1540(obj, i, obj2);
                    break;
                case 10:
                    if (m1537(i, obj2)) {
                        AbstractC0504.m1994(j, obj, AbstractC0504.m1989(j, obj2));
                        m1528(i, obj);
                        break;
                    }
                    break;
                case 11:
                    if (m1537(i, obj2)) {
                        AbstractC0504.m1995(j, obj, AbstractC0504.m2001(j, obj2));
                        m1528(i, obj);
                        break;
                    }
                    break;
                case 12:
                    if (m1537(i, obj2)) {
                        AbstractC0504.m1995(j, obj, AbstractC0504.m2001(j, obj2));
                        m1528(i, obj);
                        break;
                    }
                    break;
                case 13:
                    if (m1537(i, obj2)) {
                        AbstractC0504.m1995(j, obj, AbstractC0504.m2001(j, obj2));
                        m1528(i, obj);
                        break;
                    }
                    break;
                case 14:
                    if (m1537(i, obj2)) {
                        AbstractC0504.m1986(obj, j, AbstractC0504.m1997(j, obj2));
                        m1528(i, obj);
                        break;
                    }
                    break;
                case 15:
                    if (m1537(i, obj2)) {
                        AbstractC0504.m1995(j, obj, AbstractC0504.m2001(j, obj2));
                        m1528(i, obj);
                        break;
                    }
                    break;
                case 16:
                    if (m1537(i, obj2)) {
                        AbstractC0504.m1986(obj, j, AbstractC0504.m1997(j, obj2));
                        m1528(i, obj);
                        break;
                    }
                    break;
                case 17:
                    m1540(obj, i, obj2);
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
                    InterfaceC0247 interfaceC0247 = (InterfaceC0247) AbstractC0504.m1989(j, obj);
                    InterfaceC0247 interfaceC02472 = (InterfaceC0247) AbstractC0504.m1989(j, obj2);
                    int size = interfaceC0247.size();
                    int size2 = interfaceC02472.size();
                    if (size > 0 && size2 > 0) {
                        if (!((AbstractC0265) interfaceC0247).f1765) {
                            interfaceC0247 = interfaceC0247.mo1195(size2 + size);
                        }
                        interfaceC0247.addAll(interfaceC02472);
                    }
                    if (size > 0) {
                        interfaceC02472 = interfaceC0247;
                    }
                    AbstractC0504.m1994(j, obj, interfaceC02472);
                    break;
                case 50:
                    C0298 c0298 = AbstractC0383.f2041;
                    AbstractC0504.m1994(j, obj, C0298.m1310(AbstractC0504.m1989(j, obj), AbstractC0504.m1989(j, obj2)));
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
                    if (m1546(i3, i, obj2)) {
                        AbstractC0504.m1994(j, obj, AbstractC0504.m1989(j, obj2));
                        AbstractC0504.m1995(iArr[i + 2] & 1048575, obj, i3);
                        break;
                    }
                    break;
                case 60:
                    m1532(obj, i, obj2);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (m1546(i3, i, obj2)) {
                        AbstractC0504.m1994(j, obj, AbstractC0504.m1989(j, obj2));
                        AbstractC0504.m1995(iArr[i + 2] & 1048575, obj, i3);
                        break;
                    }
                    break;
                case 68:
                    m1532(obj, i, obj2);
                    break;
            }
            obj3 = obj;
            i += 3;
            obj = obj3;
        }
    }
}
