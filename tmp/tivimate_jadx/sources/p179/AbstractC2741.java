package p179;

import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ExecutorService;
import p035.AbstractC1237;
import ʻٴ.ˑﹳ;

/* renamed from: ˋˋ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2741 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static ExecutorService f10461;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Object f10462 = new Object();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static final ˑﹳ f10460 = new ˑﹳ(7);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r12v26, types: [java.lang.Object, ˋˋ.ʾˋ] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.lang.Object, ˋˋ.ᵢˏ] */
    /* JADX WARN: Type inference failed for: r6v23, types: [java.lang.Object, ˋˋ.ʾˋ] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static C2682 m6138(AbstractC2741 abstractC2741) {
        int i;
        C2681 c2681;
        int i2;
        C2739 c2739;
        int i3;
        int i4;
        C2681 c26812;
        C2681 c26813;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int mo666 = abstractC2741.mo666();
        int mo664 = abstractC2741.mo664();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ?? obj = new Object();
        int i14 = 0;
        obj.f10458 = 0;
        obj.f10457 = mo666;
        obj.f10455 = 0;
        obj.f10456 = mo664;
        arrayList2.add(obj);
        int i15 = mo666 + mo664;
        int i16 = 1;
        int i17 = (((i15 + 1) / 2) * 2) + 1;
        int[] iArr = new int[i17];
        int i18 = i17 / 2;
        int[] iArr2 = new int[i17];
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            C2739 c27392 = (C2739) arrayList2.remove(arrayList2.size() - i16);
            if (c27392.m6136() >= i16 && c27392.m6137() >= i16) {
                int m6137 = ((c27392.m6137() + c27392.m6136()) + i16) / 2;
                int i19 = i16 + i18;
                iArr[i19] = c27392.f10458;
                iArr2[i19] = c27392.f10457;
                int i20 = i14;
                while (i20 < m6137) {
                    int i21 = Math.abs(c27392.m6136() - c27392.m6137()) % 2 == i16 ? i16 : i14;
                    int m6136 = c27392.m6136() - c27392.m6137();
                    int i22 = -i20;
                    int i23 = i22;
                    while (true) {
                        if (i23 > i20) {
                            i3 = i14;
                            i = i18;
                            i4 = m6137;
                            c26812 = null;
                            break;
                        }
                        if (i23 == i22 || (i23 != i20 && iArr[i23 + 1 + i18] > iArr[(i23 - 1) + i18])) {
                            i9 = iArr[i23 + 1 + i18];
                            i10 = i9;
                        } else {
                            i9 = iArr[(i23 - 1) + i18];
                            i10 = i9 + 1;
                        }
                        i = i18;
                        int i24 = ((i10 - c27392.f10458) + c27392.f10455) - i23;
                        if (i20 == 0 || i10 != i9) {
                            i11 = i10;
                            i12 = i24;
                        } else {
                            i11 = i10;
                            i12 = i24 - 1;
                        }
                        int i25 = i23;
                        int i26 = i24;
                        int i27 = i11;
                        i4 = m6137;
                        while (i27 < c27392.f10457 && i26 < c27392.f10456 && abstractC2741.mo663(i27, i26)) {
                            i27++;
                            i26++;
                        }
                        iArr[i25 + i] = i27;
                        if (i21 != 0) {
                            int i28 = m6136 - i25;
                            i13 = i21;
                            if (i28 >= i22 + 1 && i28 <= i20 - 1 && iArr2[i28 + i] <= i27) {
                                ?? obj2 = new Object();
                                obj2.f10212 = i9;
                                obj2.f10211 = i12;
                                obj2.f10208 = i27;
                                obj2.f10209 = i26;
                                i3 = 0;
                                obj2.f10210 = false;
                                c26812 = obj2;
                                break;
                            }
                        } else {
                            i13 = i21;
                        }
                        i23 = i25 + 2;
                        i14 = 0;
                        i18 = i;
                        m6137 = i4;
                        i21 = i13;
                    }
                    if (c26812 != null) {
                        c2681 = c26812;
                        break;
                    }
                    int i29 = (c27392.m6136() - c27392.m6137()) % 2 == 0 ? 1 : i3;
                    int m61362 = c27392.m6136() - c27392.m6137();
                    int i30 = i22;
                    while (true) {
                        if (i30 > i20) {
                            c26813 = null;
                            break;
                        }
                        if (i30 == i22 || (i30 != i20 && iArr2[i30 + 1 + i] < iArr2[(i30 - 1) + i])) {
                            i5 = iArr2[i30 + 1 + i];
                            i6 = i5;
                        } else {
                            i5 = iArr2[(i30 - 1) + i];
                            i6 = i5 - 1;
                        }
                        int i31 = c27392.f10456 - ((c27392.f10457 - i6) - i30);
                        int i32 = (i20 == 0 || i6 != i5) ? i31 : i31 + 1;
                        int i33 = i29;
                        while (i6 > c27392.f10458 && i31 > c27392.f10455) {
                            i7 = m61362;
                            if (!abstractC2741.mo663(i6 - 1, i31 - 1)) {
                                break;
                            }
                            i6--;
                            i31--;
                            m61362 = i7;
                        }
                        i7 = m61362;
                        iArr2[i30 + i] = i6;
                        if (i33 != 0 && (i8 = i7 - i30) >= i22 && i8 <= i20 && iArr[i8 + i] >= i6) {
                            ?? obj3 = new Object();
                            obj3.f10212 = i6;
                            obj3.f10211 = i31;
                            obj3.f10208 = i5;
                            obj3.f10209 = i32;
                            obj3.f10210 = true;
                            c26813 = obj3;
                            break;
                        }
                        i30 += 2;
                        i29 = i33;
                        m61362 = i7;
                    }
                    if (c26813 != null) {
                        c2681 = c26813;
                        break;
                    }
                    i20++;
                    i18 = i;
                    m6137 = i4;
                    i16 = 1;
                    i14 = 0;
                }
            }
            i = i18;
            c2681 = null;
            if (c2681 != null) {
                if (c2681.m6028() > 0) {
                    int i34 = c2681.f10209;
                    int i35 = c2681.f10211;
                    int i36 = i34 - i35;
                    int i37 = c2681.f10208;
                    int i38 = c2681.f10212;
                    int i39 = i37 - i38;
                    arrayList.add(i36 != i39 ? c2681.f10210 ? new C2712(i38, i35, c2681.m6028()) : i36 > i39 ? new C2712(i38, i35 + 1, c2681.m6028()) : new C2712(i38 + 1, i35, c2681.m6028()) : new C2712(i38, i35, i39));
                }
                if (arrayList3.isEmpty()) {
                    i2 = 1;
                    c2739 = new Object();
                } else {
                    i2 = 1;
                    c2739 = (C2739) arrayList3.remove(arrayList3.size() - 1);
                }
                c2739.f10458 = c27392.f10458;
                c2739.f10455 = c27392.f10455;
                c2739.f10457 = c2681.f10212;
                c2739.f10456 = c2681.f10211;
                arrayList2.add(c2739);
                c27392.f10457 = c27392.f10457;
                c27392.f10456 = c27392.f10456;
                c27392.f10458 = c2681.f10208;
                c27392.f10455 = c2681.f10209;
                arrayList2.add(c27392);
            } else {
                i2 = 1;
                arrayList3.add(c27392);
            }
            i18 = i;
            i16 = i2;
            i14 = 0;
        }
        Collections.sort(arrayList, f10460);
        return new C2682(abstractC2741, arrayList, iArr, iArr2);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static int m6139(C2723 c2723, AbstractC1237 abstractC1237, View view, View view2, AbstractC2669 abstractC2669, boolean z, boolean z2) {
        if (abstractC2669.m5974() == 0 || c2723.m6109() == 0 || view == null || view2 == null) {
            return 0;
        }
        int max = z2 ? Math.max(0, (c2723.m6109() - Math.max(AbstractC2669.m5963(view), AbstractC2669.m5963(view2))) - 1) : Math.max(0, Math.min(AbstractC2669.m5963(view), AbstractC2669.m5963(view2)));
        if (z) {
            return Math.round((max * (Math.abs(abstractC1237.mo3821(view2) - abstractC1237.mo3826(view)) / (Math.abs(AbstractC2669.m5963(view) - AbstractC2669.m5963(view2)) + 1))) + (abstractC1237.mo3822() - abstractC1237.mo3826(view)));
        }
        return max;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static int m6140(C2723 c2723, AbstractC1237 abstractC1237, View view, View view2, AbstractC2669 abstractC2669, boolean z) {
        if (abstractC2669.m5974() == 0 || c2723.m6109() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return c2723.m6109();
        }
        return (int) (((abstractC1237.mo3821(view2) - abstractC1237.mo3826(view)) / (Math.abs(AbstractC2669.m5963(view) - AbstractC2669.m5963(view2)) + 1)) * c2723.m6109());
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static int m6141(C2723 c2723, AbstractC1237 abstractC1237, View view, View view2, AbstractC2669 abstractC2669, boolean z) {
        if (abstractC2669.m5974() == 0 || c2723.m6109() == 0 || view == null || view2 == null) {
            return 0;
        }
        if (!z) {
            return Math.abs(AbstractC2669.m5963(view) - AbstractC2669.m5963(view2)) + 1;
        }
        return Math.min(abstractC1237.mo3827(), abstractC1237.mo3821(view2) - abstractC1237.mo3826(view));
    }

    /* renamed from: ʼˎ */
    public abstract Object mo662(int i, int i2);

    /* renamed from: ʽ */
    public abstract boolean mo663(int i, int i2);

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public Object m6142(Object obj, Object obj2) {
        return null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public abstract boolean m6143(Object obj, Object obj2);

    /* renamed from: ٴﹶ */
    public abstract int mo664();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public abstract boolean m6144(Object obj, Object obj2);

    /* renamed from: ﹳٴ */
    public abstract boolean mo665(int i, int i2);

    /* renamed from: ﾞʻ */
    public abstract int mo666();
}
