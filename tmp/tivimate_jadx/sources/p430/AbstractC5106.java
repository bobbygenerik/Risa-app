package p430;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import p035.AbstractC1220;
import p121.AbstractC2026;
import p329.InterfaceC4106;
import p411.AbstractC4892;

/* renamed from: ﹶˈ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5106 extends AbstractC2026 {
    /* renamed from: ʿ, reason: contains not printable characters */
    public static List m10045(Object... objArr) {
        return objArr.length > 0 ? Arrays.asList(objArr) : C5097.f19202;
    }

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public static ArrayList m10046(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new C5107(objArr, true));
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public static ArrayList m10047(Object... objArr) {
        return objArr.length == 0 ? new ArrayList() : new ArrayList(new C5107(objArr, true));
    }

    /* renamed from: ˉـ, reason: contains not printable characters */
    public static int m10048(List list) {
        return list.size() - 1;
    }

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public static void m10049() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public static int m10050(List list, InterfaceC4106 interfaceC4106) {
        int size = list.size();
        m10051(list.size(), size);
        int i = size - 1;
        int i2 = 0;
        while (i2 <= i) {
            int i3 = (i2 + i) >>> 1;
            int intValue = ((Number) interfaceC4106.mo3844(list.get(i3))).intValue();
            if (intValue < 0) {
                i2 = i3 + 1;
            } else {
                if (intValue <= 0) {
                    return i3;
                }
                i = i3 - 1;
            }
        }
        return -(i2 + 1);
    }

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public static final void m10051(int i, int i2) {
        if (i2 < 0) {
            throw new IllegalArgumentException(AbstractC1220.m3773(i2, "fromIndex (0) is greater than toIndex (", ")."));
        }
        if (i2 > i) {
            throw new IndexOutOfBoundsException(AbstractC4892.m9681("toIndex (", i2, ") is greater than size (", i, ")."));
        }
    }
}
