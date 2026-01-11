package androidx.datastore.preferences.protobuf;

import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import p137.AbstractC2305;
import p223.C3056;
import sun.misc.Unsafe;

/* renamed from: androidx.datastore.preferences.protobuf.ᵎˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0051 implements InterfaceC0006 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int f467;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f468;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C0017 f469;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f470;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C0041 f471;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AbstractC0063 f472;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C0060 f473;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int[] f474;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f475;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object[] f476;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int[] f477;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final AbstractC0014 f478;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f479;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static final int[] f466 = new int[0];

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static final Unsafe f465 = AbstractC0004.m155();

    public C0051(int[] iArr, Object[] objArr, int i, int i2, AbstractC0063 abstractC0063, int[] iArr2, int i3, int i4, C0017 c0017, C0060 c0060, AbstractC0014 abstractC0014, C0024 c0024, C0041 c0041) {
        this.f477 = iArr;
        this.f476 = objArr;
        this.f468 = i;
        this.f470 = i2;
        this.f479 = abstractC0063 instanceof AbstractC0003;
        this.f474 = iArr2;
        this.f475 = i3;
        this.f467 = i4;
        this.f469 = c0017;
        this.f473 = c0060;
        this.f478 = abstractC0014;
        this.f472 = abstractC0063;
        this.f471 = c0041;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static int m323(long j, Object obj) {
        return ((Integer) AbstractC0004.f354.m317(j, obj)).intValue();
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static boolean m324(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof AbstractC0003) {
            return ((AbstractC0003) obj).m151();
        }
        return true;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static long m325(int i) {
        return i & 1048575;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static Field m326(Class cls, String str) {
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
    /* renamed from: ـˆ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static androidx.datastore.preferences.protobuf.C0051 m327(androidx.datastore.preferences.protobuf.C0028 r34, androidx.datastore.preferences.protobuf.C0017 r35, androidx.datastore.preferences.protobuf.C0060 r36, androidx.datastore.preferences.protobuf.AbstractC0014 r37, androidx.datastore.preferences.protobuf.C0024 r38, androidx.datastore.preferences.protobuf.C0041 r39) {
        /*
            Method dump skipped, instructions count: 1019
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.C0051.m327(androidx.datastore.preferences.protobuf.ˊˋ, androidx.datastore.preferences.protobuf.ˆﾞ, androidx.datastore.preferences.protobuf.ᵢˏ, androidx.datastore.preferences.protobuf.ʿ, androidx.datastore.preferences.protobuf.ˉˆ, androidx.datastore.preferences.protobuf.ٴᵢ):androidx.datastore.preferences.protobuf.ᵎˊ");
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static int m328(int i) {
        return (i & 267386880) >>> 20;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static long m329(long j, Object obj) {
        return ((Long) AbstractC0004.f354.m317(j, obj)).longValue();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final Object m330(int i, int i2, Object obj) {
        InterfaceC0006 m337 = m337(i2);
        if (!m350(i, i2, obj)) {
            return m337.mo172();
        }
        Object object = f465.getObject(obj, m349(i2) & 1048575);
        if (m324(object)) {
            return object;
        }
        AbstractC0003 mo172 = m337.mo172();
        if (object != null) {
            m337.mo177(mo172, object);
        }
        return mo172;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:117:0x021b. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:124:0x0322. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x004e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:122:0x031c  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x032b  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x033c  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0356  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x035f  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x036c  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0378  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x039f  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x03bf  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x03cd  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03d4  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03eb  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x03f6  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x03fd  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0325 A[SYNTHETIC] */
    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ʼˎ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo170(androidx.datastore.preferences.protobuf.AbstractC0003 r30) {
        /*
            Method dump skipped, instructions count: 2624
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.C0051.mo170(androidx.datastore.preferences.protobuf.ʻٴ):int");
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ʽ */
    public final boolean mo171(Object obj) {
        int i;
        int i2;
        int i3;
        int i4 = 1048575;
        int i5 = 0;
        int i6 = 0;
        while (i6 < this.f475) {
            int i7 = this.f474[i6];
            int[] iArr = this.f477;
            int i8 = iArr[i7];
            int m349 = m349(i7);
            int i9 = iArr[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i4) {
                if (i10 != 1048575) {
                    i5 = f465.getInt(obj, i10);
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
            if ((268435456 & m349) == 0 || m338(obj, i2, i, i3, i11)) {
                int m328 = m328(m349);
                if (m328 == 9 || m328 == 17) {
                    if (m338(obj, i2, i, i3, i11)) {
                        if (!m337(i2).mo171(AbstractC0004.f354.m317(m349 & 1048575, obj))) {
                        }
                    } else {
                        continue;
                    }
                    i6++;
                    i4 = i;
                    i5 = i3;
                } else {
                    if (m328 != 27) {
                        if (m328 == 60 || m328 == 68) {
                            if (m350(i8, i2, obj)) {
                                if (!m337(i2).mo171(AbstractC0004.f354.m317(m349 & 1048575, obj))) {
                                }
                            } else {
                                continue;
                            }
                            i6++;
                            i4 = i;
                            i5 = i3;
                        } else if (m328 != 49) {
                            if (m328 != 50) {
                                continue;
                            } else {
                                Object m317 = AbstractC0004.f354.m317(m349 & 1048575, obj);
                                this.f471.getClass();
                                C0027 c0027 = (C0027) m317;
                                if (c0027.isEmpty()) {
                                    continue;
                                } else {
                                    if (((C0049) this.f476[(i2 / 3) * 2]).f454.f404.f440 != EnumC0050.f464) {
                                        continue;
                                    } else {
                                        InterfaceC0006 interfaceC0006 = null;
                                        for (Object obj2 : c0027.values()) {
                                            if (interfaceC0006 == null) {
                                                interfaceC0006 = C0034.f426.m254(obj2.getClass());
                                            }
                                            if (!interfaceC0006.mo171(obj2)) {
                                            }
                                        }
                                    }
                                }
                            }
                            i6++;
                            i4 = i;
                            i5 = i3;
                        }
                    }
                    List list = (List) AbstractC0004.f354.m317(m349 & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        InterfaceC0006 m337 = m337(i2);
                        for (int i13 = 0; i13 < list.size(); i13++) {
                            if (m337.mo171(list.get(i13))) {
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

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m331(Object obj, int i, C0043 c0043, InterfaceC0006 interfaceC0006, C0055 c0055) {
        int mo183;
        this.f473.getClass();
        InterfaceC0037 m369 = C0060.m369(i & 1048575, obj);
        AbstractC0016 abstractC0016 = c0043.f445;
        int i2 = c0043.f444;
        if ((i2 & 7) != 2) {
            throw InvalidProtocolBufferException.m142();
        }
        do {
            AbstractC0003 mo172 = interfaceC0006.mo172();
            c0043.m290(mo172, interfaceC0006, c0055);
            interfaceC0006.mo176(mo172);
            ((C0030) m369).add(mo172);
            if (abstractC0016.mo205() || c0043.f443 != 0) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == i2);
        c0043.f443 = mo183;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final Object m332(int i, Object obj) {
        InterfaceC0006 m337 = m337(i);
        long m349 = m349(i) & 1048575;
        if (!m348(i, obj)) {
            return m337.mo172();
        }
        Object object = f465.getObject(obj, m349);
        if (m324(object)) {
            return object;
        }
        AbstractC0003 mo172 = m337.mo172();
        if (object != null) {
            m337.mo177(mo172, object);
        }
        return mo172;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int m333(int i) {
        if (i >= this.f468 && i <= this.f470) {
            int[] iArr = this.f477;
            int length = (iArr.length / 3) - 1;
            int i2 = 0;
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
        }
        return -1;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean m334(AbstractC0003 abstractC0003, AbstractC0003 abstractC00032, int i) {
        return m348(i, abstractC0003) == m348(i, abstractC00032);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:13:0x0045. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:84:0x0249. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:91:0x033d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0372  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:107:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x03ad  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x03e3  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x03e9  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x03f0  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03fc  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0407  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0340 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0337  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0358  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0369  */
    /* renamed from: ˆﾞ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m335(java.lang.Object r34, androidx.datastore.preferences.protobuf.C0010 r35) {
        /*
            Method dump skipped, instructions count: 2506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.C0051.m335(java.lang.Object, androidx.datastore.preferences.protobuf.ʽʽ):void");
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ˈ */
    public final AbstractC0003 mo172() {
        this.f469.getClass();
        return ((AbstractC0003) this.f472).m148();
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m336(int i, C0043 c0043, Object obj) {
        if ((536870912 & i) != 0) {
            c0043.m300(2);
            AbstractC0004.m160(i & 1048575, obj, c0043.f445.mo201());
        } else if (!this.f479) {
            AbstractC0004.m160(i & 1048575, obj, c0043.m298());
        } else {
            c0043.m300(2);
            AbstractC0004.m160(i & 1048575, obj, c0043.f445.mo185());
        }
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final InterfaceC0006 m337(int i) {
        int i2 = (i / 3) * 2;
        Object[] objArr = this.f476;
        InterfaceC0006 interfaceC0006 = (InterfaceC0006) objArr[i2];
        if (interfaceC0006 != null) {
            return interfaceC0006;
        }
        InterfaceC0006 m254 = C0034.f426.m254((Class) objArr[i2 + 1]);
        objArr[i2] = m254;
        return m254;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean m338(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? m348(i, obj) : (i3 & i4) != 0;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m339(int i, int i2, Object obj) {
        AbstractC0004.m159(this.f477[i2 + 2] & 1048575, obj, i);
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final void m340(Object obj, int i, Object obj2) {
        int[] iArr = this.f477;
        int i2 = iArr[i];
        if (m350(i2, i, obj2)) {
            long m349 = m349(i) & 1048575;
            Unsafe unsafe = f465;
            Object object = unsafe.getObject(obj2, m349);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2);
            }
            InterfaceC0006 m337 = m337(i);
            if (!m350(i2, i, obj)) {
                if (m324(object)) {
                    AbstractC0003 mo172 = m337.mo172();
                    m337.mo177(mo172, object);
                    unsafe.putObject(obj, m349, mo172);
                } else {
                    unsafe.putObject(obj, m349, object);
                }
                m339(i2, i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, m349);
            if (!m324(object2)) {
                AbstractC0003 mo1722 = m337.mo172();
                m337.mo177(mo1722, object2);
                unsafe.putObject(obj, m349, mo1722);
                object2 = mo1722;
            }
            m337.mo177(object2, object);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ˑﹳ */
    public final void mo173(Object obj, C0010 c0010) {
        c0010.getClass();
        m335(obj, c0010);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m341(Object obj, int i, Object obj2) {
        if (m348(i, obj2)) {
            long m349 = m349(i) & 1048575;
            Unsafe unsafe = f465;
            Object object = unsafe.getObject(obj2, m349);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.f477[i] + " is present but null: " + obj2);
            }
            InterfaceC0006 m337 = m337(i);
            if (!m348(i, obj)) {
                if (m324(object)) {
                    AbstractC0003 mo172 = m337.mo172();
                    m337.mo177(mo172, object);
                    unsafe.putObject(obj, m349, mo172);
                } else {
                    unsafe.putObject(obj, m349, object);
                }
                m343(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, m349);
            if (!m324(object2)) {
                AbstractC0003 mo1722 = m337.mo172();
                m337.mo177(mo1722, object2);
                unsafe.putObject(obj, m349, mo1722);
                object2 = mo1722;
            }
            m337.mo177(object2, object);
        }
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m342(Object obj, int i, int i2, AbstractC0063 abstractC0063) {
        f465.putObject(obj, m349(i2) & 1048575, abstractC0063);
        m339(i, i2, obj);
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m343(int i, Object obj) {
        int i2 = this.f477[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        AbstractC0004.m159(j, obj, (1 << (i2 >>> 20)) | AbstractC0004.f354.m320(j, obj));
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m344(Object obj, int i, Object obj2) {
        int i2 = this.f477[i];
        if (AbstractC0004.f354.m317(m349(i) & 1048575, obj) == null) {
            return;
        }
        m352(i);
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void m345(Object obj, long j, C0043 c0043, InterfaceC0006 interfaceC0006, C0055 c0055) {
        int mo183;
        this.f473.getClass();
        InterfaceC0037 m369 = C0060.m369(j, obj);
        AbstractC0016 abstractC0016 = c0043.f445;
        int i = c0043.f444;
        if ((i & 7) != 3) {
            throw InvalidProtocolBufferException.m142();
        }
        do {
            AbstractC0003 mo172 = interfaceC0006.mo172();
            c0043.m306(mo172, interfaceC0006, c0055);
            interfaceC0006.mo176(mo172);
            ((C0030) m369).add(mo172);
            if (abstractC0016.mo205() || c0043.f443 != 0) {
                return;
            } else {
                mo183 = abstractC0016.mo183();
            }
        } while (mo183 == i);
        c0043.f443 = mo183;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m346(int i, C0043 c0043, Object obj) {
        int i2 = 536870912 & i;
        C0060 c0060 = this.f473;
        if (i2 != 0) {
            c0060.getClass();
            c0043.m299(C0060.m369(i & 1048575, obj), true);
        } else {
            c0060.getClass();
            c0043.m299(C0060.m369(i & 1048575, obj), false);
        }
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m347(Object obj, int i, AbstractC0063 abstractC0063) {
        f465.putObject(obj, m349(i) & 1048575, abstractC0063);
        m343(i, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0074, code lost:
    
        if (androidx.datastore.preferences.protobuf.AbstractC0038.m281(r5.m317(r7, r12), r5.m317(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x008a, code lost:
    
        if (r5.m315(r7, r12) == r5.m315(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x009e, code lost:
    
        if (r5.m320(r7, r12) == r5.m320(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b4, code lost:
    
        if (r5.m315(r7, r12) == r5.m315(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c8, code lost:
    
        if (r5.m320(r7, r12) == r5.m320(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00dc, code lost:
    
        if (r5.m320(r7, r12) == r5.m320(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00f0, code lost:
    
        if (r5.m320(r7, r12) == r5.m320(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0108, code lost:
    
        if (androidx.datastore.preferences.protobuf.AbstractC0038.m281(r5.m317(r7, r12), r5.m317(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0120, code lost:
    
        if (androidx.datastore.preferences.protobuf.AbstractC0038.m281(r5.m317(r7, r12), r5.m317(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0138, code lost:
    
        if (androidx.datastore.preferences.protobuf.AbstractC0038.m281(r5.m317(r7, r12), r5.m317(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x014c, code lost:
    
        if (r5.mo245(r7, r12) == r5.mo245(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0160, code lost:
    
        if (r5.m320(r7, r12) == r5.m320(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0176, code lost:
    
        if (r5.m315(r7, r12) == r5.m315(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x018a, code lost:
    
        if (r5.m320(r7, r12) == r5.m320(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x019f, code lost:
    
        if (r5.m315(r7, r12) == r5.m315(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01b4, code lost:
    
        if (r5.m315(r7, r12) == r5.m315(r7, r13)) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01cf, code lost:
    
        if (java.lang.Float.floatToIntBits(r5.mo249(r7, r12)) == java.lang.Float.floatToIntBits(r5.mo249(r7, r13))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01ec, code lost:
    
        if (java.lang.Double.doubleToLongBits(r5.mo247(r7, r12)) == java.lang.Double.doubleToLongBits(r5.mo247(r7, r13))) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0039, code lost:
    
        if (androidx.datastore.preferences.protobuf.AbstractC0038.m281(r9.m317(r7, r12), r9.m317(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0016. Please report as an issue. */
    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ᵎﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo174(androidx.datastore.preferences.protobuf.AbstractC0003 r12, androidx.datastore.preferences.protobuf.AbstractC0003 r13) {
        /*
            Method dump skipped, instructions count: 666
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.C0051.mo174(androidx.datastore.preferences.protobuf.ʻٴ, androidx.datastore.preferences.protobuf.ʻٴ):boolean");
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final boolean m348(int i, Object obj) {
        int i2 = this.f477[i + 2];
        long j = i2 & 1048575;
        if (j == 1048575) {
            int m349 = m349(i);
            long j2 = m349 & 1048575;
            switch (m328(m349)) {
                case 0:
                    if (Double.doubleToRawLongBits(AbstractC0004.f354.mo247(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 1:
                    if (Float.floatToRawIntBits(AbstractC0004.f354.mo249(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 2:
                    if (AbstractC0004.f354.m315(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (AbstractC0004.f354.m315(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (AbstractC0004.f354.m320(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (AbstractC0004.f354.m315(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (AbstractC0004.f354.m320(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    return AbstractC0004.f354.mo245(j2, obj);
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    Object m317 = AbstractC0004.f354.m317(j2, obj);
                    if (m317 instanceof String) {
                        return !((String) m317).isEmpty();
                    }
                    if (m317 instanceof C0054) {
                        return !C0054.f480.equals(m317);
                    }
                    throw new IllegalArgumentException();
                case 9:
                    if (AbstractC0004.f354.m317(j2, obj) == null) {
                        return false;
                    }
                    break;
                case 10:
                    return !C0054.f480.equals(AbstractC0004.f354.m317(j2, obj));
                case 11:
                    if (AbstractC0004.f354.m320(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (AbstractC0004.f354.m320(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (AbstractC0004.f354.m320(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (AbstractC0004.f354.m315(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (AbstractC0004.f354.m320(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (AbstractC0004.f354.m315(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (AbstractC0004.f354.m317(j2, obj) == null) {
                        return false;
                    }
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        } else if (((1 << (i2 >>> 20)) & AbstractC0004.f354.m320(j, obj)) == 0) {
            return false;
        }
        return true;
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final int m349(int i) {
        return this.f477[i + 1];
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ᵔᵢ */
    public final void mo175(java.lang.Object r19, androidx.datastore.preferences.protobuf.C0043 r20, androidx.datastore.preferences.protobuf.C0055 r21) {
        /*
            Method dump skipped, instructions count: 1882
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.C0051.mo175(java.lang.Object, androidx.datastore.preferences.protobuf.ٴﹶ, androidx.datastore.preferences.protobuf.ᵔʾ):void");
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final boolean m350(int i, int i2, Object obj) {
        return AbstractC0004.f354.m320((long) (this.f477[i2 + 2] & 1048575), obj) == i;
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ⁱˊ */
    public final void mo176(Object obj) {
        if (m324(obj)) {
            if (obj instanceof AbstractC0003) {
                AbstractC0003 abstractC0003 = (AbstractC0003) obj;
                abstractC0003.m150(Integer.MAX_VALUE);
                abstractC0003.memoizedHashCode = 0;
                abstractC0003.m152();
            }
            int[] iArr = this.f477;
            int length = iArr.length;
            for (int i = 0; i < length; i += 3) {
                int m349 = m349(i);
                long j = 1048575 & m349;
                int m328 = m328(m349);
                if (m328 != 9) {
                    if (m328 != 60 && m328 != 68) {
                        switch (m328) {
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
                                this.f473.getClass();
                                AbstractC0061 abstractC0061 = (AbstractC0061) ((InterfaceC0037) AbstractC0004.f354.m317(j, obj));
                                if (abstractC0061.f501) {
                                    abstractC0061.f501 = false;
                                    break;
                                } else {
                                    break;
                                }
                            case 50:
                                Unsafe unsafe = f465;
                                Object object = unsafe.getObject(obj, j);
                                if (object != null) {
                                    this.f471.getClass();
                                    ((C0027) object).f415 = false;
                                    unsafe.putObject(obj, j, object);
                                    break;
                                } else {
                                    break;
                                }
                        }
                    } else if (m350(iArr[i], i, obj)) {
                        m337(i).mo176(f465.getObject(obj, j));
                    }
                }
                if (m348(i, obj)) {
                    m337(i).mo176(f465.getObject(obj, j));
                }
            }
            ((C0052) this.f478).getClass();
            C0015 c0015 = ((AbstractC0003) obj).unknownFields;
            if (c0015.f393) {
                c0015.f393 = false;
            }
        }
    }

    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ﹳٴ */
    public final void mo177(Object obj, Object obj2) {
        Object obj3;
        if (!m324(obj)) {
            throw new IllegalArgumentException("Mutating immutable message: " + obj);
        }
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.f477;
            if (i >= iArr.length) {
                AbstractC0038.m272(this.f478, obj, obj2);
                return;
            }
            int m349 = m349(i);
            long j = 1048575 & m349;
            int i2 = iArr[i];
            switch (m328(m349)) {
                case 0:
                    if (m348(i, obj2)) {
                        AbstractC0046 abstractC0046 = AbstractC0004.f354;
                        obj3 = obj;
                        abstractC0046.mo253(obj3, j, abstractC0046.mo247(j, obj2));
                        m343(i, obj3);
                        break;
                    }
                    break;
                case 1:
                    if (m348(i, obj2)) {
                        AbstractC0046 abstractC00462 = AbstractC0004.f354;
                        abstractC00462.mo248(obj, j, abstractC00462.mo249(j, obj2));
                        m343(i, obj);
                        break;
                    }
                    break;
                case 2:
                    if (m348(i, obj2)) {
                        AbstractC0004.m164(obj, j, AbstractC0004.f354.m315(j, obj2));
                        m343(i, obj);
                        break;
                    }
                    break;
                case 3:
                    if (m348(i, obj2)) {
                        AbstractC0004.m164(obj, j, AbstractC0004.f354.m315(j, obj2));
                        m343(i, obj);
                        break;
                    }
                    break;
                case 4:
                    if (m348(i, obj2)) {
                        AbstractC0004.m159(j, obj, AbstractC0004.f354.m320(j, obj2));
                        m343(i, obj);
                        break;
                    }
                    break;
                case 5:
                    if (m348(i, obj2)) {
                        AbstractC0004.m164(obj, j, AbstractC0004.f354.m315(j, obj2));
                        m343(i, obj);
                        break;
                    }
                    break;
                case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                    if (m348(i, obj2)) {
                        AbstractC0004.m159(j, obj, AbstractC0004.f354.m320(j, obj2));
                        m343(i, obj);
                        break;
                    }
                    break;
                case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                    if (m348(i, obj2)) {
                        AbstractC0046 abstractC00463 = AbstractC0004.f354;
                        abstractC00463.mo246(obj, j, abstractC00463.mo245(j, obj2));
                        m343(i, obj);
                        break;
                    }
                    break;
                case C3056.BYTES_FIELD_NUMBER /* 8 */:
                    if (m348(i, obj2)) {
                        AbstractC0004.m160(j, obj, AbstractC0004.f354.m317(j, obj2));
                        m343(i, obj);
                        break;
                    }
                    break;
                case 9:
                    m341(obj, i, obj2);
                    break;
                case 10:
                    if (m348(i, obj2)) {
                        AbstractC0004.m160(j, obj, AbstractC0004.f354.m317(j, obj2));
                        m343(i, obj);
                        break;
                    }
                    break;
                case 11:
                    if (m348(i, obj2)) {
                        AbstractC0004.m159(j, obj, AbstractC0004.f354.m320(j, obj2));
                        m343(i, obj);
                        break;
                    }
                    break;
                case 12:
                    if (m348(i, obj2)) {
                        AbstractC0004.m159(j, obj, AbstractC0004.f354.m320(j, obj2));
                        m343(i, obj);
                        break;
                    }
                    break;
                case 13:
                    if (m348(i, obj2)) {
                        AbstractC0004.m159(j, obj, AbstractC0004.f354.m320(j, obj2));
                        m343(i, obj);
                        break;
                    }
                    break;
                case 14:
                    if (m348(i, obj2)) {
                        AbstractC0004.m164(obj, j, AbstractC0004.f354.m315(j, obj2));
                        m343(i, obj);
                        break;
                    }
                    break;
                case 15:
                    if (m348(i, obj2)) {
                        AbstractC0004.m159(j, obj, AbstractC0004.f354.m320(j, obj2));
                        m343(i, obj);
                        break;
                    }
                    break;
                case 16:
                    if (m348(i, obj2)) {
                        AbstractC0004.m164(obj, j, AbstractC0004.f354.m315(j, obj2));
                        m343(i, obj);
                        break;
                    }
                    break;
                case 17:
                    m341(obj, i, obj2);
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
                    this.f473.getClass();
                    AbstractC0046 abstractC00464 = AbstractC0004.f354;
                    InterfaceC0037 interfaceC0037 = (InterfaceC0037) abstractC00464.m317(j, obj);
                    InterfaceC0037 interfaceC00372 = (InterfaceC0037) abstractC00464.m317(j, obj2);
                    C0030 c0030 = (C0030) interfaceC0037;
                    int i3 = c0030.f422;
                    int i4 = ((C0030) interfaceC00372).f422;
                    if (i3 > 0 && i4 > 0) {
                        if (!((AbstractC0061) interfaceC0037).f501) {
                            interfaceC0037 = c0030.m240(i4 + i3);
                        }
                        ((AbstractC0061) interfaceC0037).addAll(interfaceC00372);
                    }
                    if (i3 > 0) {
                        interfaceC00372 = interfaceC0037;
                    }
                    AbstractC0004.m160(j, obj, interfaceC00372);
                    break;
                case 50:
                    Class cls = AbstractC0038.f434;
                    AbstractC0046 abstractC00465 = AbstractC0004.f354;
                    Object m317 = abstractC00465.m317(j, obj);
                    Object m3172 = abstractC00465.m317(j, obj2);
                    this.f471.getClass();
                    AbstractC0004.m160(j, obj, C0041.m286(m317, m3172));
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
                    if (m350(i2, i, obj2)) {
                        AbstractC0004.m160(j, obj, AbstractC0004.f354.m317(j, obj2));
                        m339(i2, i, obj);
                        break;
                    }
                    break;
                case 60:
                    m340(obj, i, obj2);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (m350(i2, i, obj2)) {
                        AbstractC0004.m160(j, obj, AbstractC0004.f354.m317(j, obj2));
                        m339(i2, i, obj);
                        break;
                    }
                    break;
                case 68:
                    m340(obj, i, obj2);
                    break;
            }
            obj3 = obj;
            i += 3;
            obj = obj3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0099, code lost:
    
        r10.put(r3, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x009c, code lost:
    
        r0.mo187(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x009f, code lost:
    
        return;
     */
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m351(java.lang.Object r9, int r10, java.lang.Object r11, androidx.datastore.preferences.protobuf.C0055 r12, androidx.datastore.preferences.protobuf.C0043 r13) {
        /*
            r8 = this;
            int r10 = r8.m349(r10)
            r0 = 1048575(0xfffff, float:1.469367E-39)
            r10 = r10 & r0
            long r0 = (long) r10
            androidx.datastore.preferences.protobuf.ᴵʼ r10 = androidx.datastore.preferences.protobuf.AbstractC0004.f354
            java.lang.Object r10 = r10.m317(r0, r9)
            androidx.datastore.preferences.protobuf.ٴᵢ r2 = r8.f471
            if (r10 != 0) goto L20
            r2.getClass()
            androidx.datastore.preferences.protobuf.ˊʻ r10 = androidx.datastore.preferences.protobuf.C0027.f414
            androidx.datastore.preferences.protobuf.ˊʻ r10 = r10.m235()
            androidx.datastore.preferences.protobuf.AbstractC0004.m160(r0, r9, r10)
            goto L37
        L20:
            r2.getClass()
            r3 = r10
            androidx.datastore.preferences.protobuf.ˊʻ r3 = (androidx.datastore.preferences.protobuf.C0027) r3
            boolean r3 = r3.f415
            if (r3 != 0) goto L37
            androidx.datastore.preferences.protobuf.ˊʻ r3 = androidx.datastore.preferences.protobuf.C0027.f414
            androidx.datastore.preferences.protobuf.ˊʻ r3 = r3.m235()
            androidx.datastore.preferences.protobuf.C0041.m286(r3, r10)
            androidx.datastore.preferences.protobuf.AbstractC0004.m160(r0, r9, r3)
            r10 = r3
        L37:
            r2.getClass()
            androidx.datastore.preferences.protobuf.ˊʻ r10 = (androidx.datastore.preferences.protobuf.C0027) r10
            androidx.datastore.preferences.protobuf.ᴵᵔ r11 = (androidx.datastore.preferences.protobuf.C0049) r11
            androidx.datastore.preferences.protobuf.ˈٴ r9 = r11.f454
            r11 = 2
            r13.m300(r11)
            androidx.datastore.preferences.protobuf.ˆʾ r0 = r13.f445
            int r1 = r0.mo190()
            int r1 = r0.mo213(r1)
            java.lang.Object r2 = r9.f403
            java.lang.String r3 = ""
            r4 = r2
        L53:
            int r5 = r13.m307()     // Catch: java.lang.Throwable -> L77
            r6 = 2147483647(0x7fffffff, float:NaN)
            if (r5 == r6) goto L99
            boolean r6 = r0.mo205()     // Catch: java.lang.Throwable -> L77
            if (r6 == 0) goto L63
            goto L99
        L63:
            r6 = 1
            java.lang.String r7 = "Unable to parse map entry."
            if (r5 == r6) goto L84
            if (r5 == r11) goto L79
            boolean r5 = r13.m292()     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            if (r5 == 0) goto L71
            goto L53
        L71:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r5 = new androidx.datastore.preferences.protobuf.InvalidProtocolBufferException     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            r5.<init>(r7)     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            throw r5     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
        L77:
            r9 = move-exception
            goto La0
        L79:
            androidx.datastore.preferences.protobuf.ٴﹳ r5 = r9.f404     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            java.lang.Class r6 = r2.getClass()     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            java.lang.Object r4 = r13.m288(r5, r6, r12)     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            goto L53
        L84:
            androidx.datastore.preferences.protobuf.ٴﹳ r5 = r9.f405     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            r6 = 0
            java.lang.Object r3 = r13.m288(r5, r6, r6)     // Catch: java.lang.Throwable -> L77 androidx.datastore.preferences.protobuf.InvalidProtocolBufferException.InvalidWireTypeException -> L8c
            goto L53
        L8c:
            boolean r5 = r13.m292()     // Catch: java.lang.Throwable -> L77
            if (r5 == 0) goto L93
            goto L53
        L93:
            androidx.datastore.preferences.protobuf.InvalidProtocolBufferException r9 = new androidx.datastore.preferences.protobuf.InvalidProtocolBufferException     // Catch: java.lang.Throwable -> L77
            r9.<init>(r7)     // Catch: java.lang.Throwable -> L77
            throw r9     // Catch: java.lang.Throwable -> L77
        L99:
            r10.put(r3, r4)     // Catch: java.lang.Throwable -> L77
            r0.mo187(r1)
            return
        La0:
            r0.mo187(r1)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.C0051.m351(java.lang.Object, int, java.lang.Object, androidx.datastore.preferences.protobuf.ᵔʾ, androidx.datastore.preferences.protobuf.ٴﹶ):void");
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m352(int i) {
        if (this.f476[((i / 3) * 2) + 1] != null) {
            throw new ClassCastException();
        }
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
    @Override // androidx.datastore.preferences.protobuf.InterfaceC0006
    /* renamed from: ﾞᴵ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo178(androidx.datastore.preferences.protobuf.AbstractC0003 r12) {
        /*
            Method dump skipped, instructions count: 796
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.datastore.preferences.protobuf.C0051.mo178(androidx.datastore.preferences.protobuf.ʻٴ):int");
    }
}
