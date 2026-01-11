package p317;

import java.util.Collection;
import java.util.EnumSet;
import p284.EnumC3571;

/* renamed from: ᴵʿ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3914 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final char[] f15176 = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* renamed from: ʽ, reason: contains not printable characters */
    public static String m8086(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            if (sb.length() > 0) {
                sb.append(' ');
            }
            char[] cArr = f15176;
            sb.append(cArr[(b >> 4) & 15]);
            sb.append(cArr[b & 15]);
        }
        return sb.toString();
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static EnumSet m8087(long j, Class cls) {
        if (!InterfaceC3910.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Can only be used with EnumWithValue enums.");
        }
        EnumSet noneOf = EnumSet.noneOf(cls);
        for (Object obj : (Enum[]) cls.getEnumConstants()) {
            if (m8089(j, (InterfaceC3910) obj)) {
                noneOf.add(obj);
            }
        }
        return noneOf;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static long m8088(Collection collection) {
        long j = 0;
        for (Object obj : collection) {
            if (!(obj instanceof InterfaceC3910)) {
                throw new IllegalArgumentException("Can only be used with EnumWithValue enums.");
            }
            j |= ((InterfaceC3910) obj).getValue();
        }
        return j;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static boolean m8089(long j, InterfaceC3910 interfaceC3910) {
        return (j & interfaceC3910.getValue()) > 0;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m8090(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static InterfaceC3910 m8091(long j, Class cls, EnumC3571 enumC3571) {
        for (InterfaceC3910 interfaceC3910 : (InterfaceC3910[]) cls.getEnumConstants()) {
            if (interfaceC3910.getValue() == j) {
                return interfaceC3910;
            }
        }
        return enumC3571;
    }
}
