package p430;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import p012.C0902;
import p013.AbstractC0911;
import p013.AbstractC0912;
import p013.AbstractC0914;
import p013.AbstractC0921;
import ˈˆ.ﾞᴵ;

/* renamed from: ﹶˈ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5096 extends ﾞᴵ {
    /* renamed from: ʻˋ, reason: contains not printable characters */
    public static ArrayList m9997(Object[] objArr) {
        ArrayList arrayList = new ArrayList();
        for (Object obj : objArr) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public static void m9998(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        System.arraycopy(iArr, i2, iArr2, i, i3 - i2);
    }

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public static void m9999(byte[] bArr) {
        int length = (bArr.length / 2) - 1;
        if (length < 0) {
            return;
        }
        int length2 = bArr.length - 1;
        if (length < 0) {
            return;
        }
        int i = 0;
        while (true) {
            byte b = bArr[i];
            bArr[i] = bArr[length2];
            bArr[length2] = b;
            length2--;
            if (i == length) {
                return;
            } else {
                i++;
            }
        }
    }

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public static Set m10000(Object[] objArr) {
        int length = objArr.length;
        if (length == 0) {
            return C5113.f19217;
        }
        if (length == 1) {
            return Collections.singleton(objArr[0]);
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(AbstractC5103.m10040(objArr.length));
        for (Object obj : objArr) {
            linkedHashSet.add(obj);
        }
        return linkedHashSet;
    }

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public static void m10001(int i, int i2, byte[] bArr, byte[] bArr2) {
        System.arraycopy(bArr, i, bArr2, 0, i2 - i);
    }

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public static void m10002(int i, int i2, int i3, Object[] objArr, Object[] objArr2) {
        System.arraycopy(objArr, i2, objArr2, i, i3 - i2);
    }

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public static boolean m10003(Object[] objArr, Object obj) {
        return m10006(objArr, obj) >= 0;
    }

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public static Object m10004(Object[] objArr) {
        if (objArr.length != 0) {
            return objArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    /* renamed from: י, reason: contains not printable characters */
    public static List m10005(Object[] objArr) {
        int length = objArr.length;
        return length != 0 ? length != 1 ? new ArrayList(new C5107(objArr, false)) : Collections.singletonList(objArr[0]) : C5097.f19202;
    }

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public static int m10006(Object[] objArr, Object obj) {
        int i = 0;
        if (obj == null) {
            int length = objArr.length;
            while (i < length) {
                if (objArr[i] == null) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        int length2 = objArr.length;
        while (i < length2) {
            if (obj.equals(objArr[i])) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public static void m10007(int i, int i2, int i3, Object[] objArr, Object[] objArr2) {
        if ((i3 & 4) != 0) {
            i = 0;
        }
        if ((i3 & 8) != 0) {
            i2 = objArr.length;
        }
        System.arraycopy(objArr, i, objArr2, 0, i2 - i);
    }

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public static Byte m10008(int i, byte[] bArr) {
        if (i < 0 || i >= bArr.length) {
            return null;
        }
        return Byte.valueOf(bArr[i]);
    }

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public static void m10009(byte[] bArr) {
        if (bArr.length > 1) {
            Arrays.sort(bArr);
        }
    }

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public static boolean m10010(Object[] objArr, Object[] objArr2) {
        if (objArr == objArr2) {
            return true;
        }
        if (objArr.length == objArr2.length) {
            int length = objArr.length;
            for (int i = 0; i < length; i++) {
                Object obj = objArr[i];
                Object obj2 = objArr2[i];
                if (obj != obj2) {
                    if (obj != null && obj2 != null) {
                        if ((obj instanceof Object[]) && (obj2 instanceof Object[])) {
                            if (!m10010((Object[]) obj, (Object[]) obj2)) {
                            }
                        } else if ((obj instanceof byte[]) && (obj2 instanceof byte[])) {
                            if (!Arrays.equals((byte[]) obj, (byte[]) obj2)) {
                            }
                        } else if ((obj instanceof short[]) && (obj2 instanceof short[])) {
                            if (!Arrays.equals((short[]) obj, (short[]) obj2)) {
                            }
                        } else if ((obj instanceof int[]) && (obj2 instanceof int[])) {
                            if (!Arrays.equals((int[]) obj, (int[]) obj2)) {
                            }
                        } else if ((obj instanceof long[]) && (obj2 instanceof long[])) {
                            if (!Arrays.equals((long[]) obj, (long[]) obj2)) {
                            }
                        } else if ((obj instanceof float[]) && (obj2 instanceof float[])) {
                            if (!Arrays.equals((float[]) obj, (float[]) obj2)) {
                            }
                        } else if ((obj instanceof double[]) && (obj2 instanceof double[])) {
                            if (!Arrays.equals((double[]) obj, (double[]) obj2)) {
                            }
                        } else if ((obj instanceof char[]) && (obj2 instanceof char[])) {
                            if (!Arrays.equals((char[]) obj, (char[]) obj2)) {
                            }
                        } else if ((obj instanceof boolean[]) && (obj2 instanceof boolean[])) {
                            if (!Arrays.equals((boolean[]) obj, (boolean[]) obj2)) {
                            }
                        } else if ((obj instanceof AbstractC0914) && (obj2 instanceof AbstractC0914)) {
                            if (!Arrays.equals((byte[]) null, (byte[]) null)) {
                            }
                        } else if ((obj instanceof AbstractC0912) && (obj2 instanceof AbstractC0912)) {
                            if (!Arrays.equals((short[]) null, (short[]) null)) {
                            }
                        } else if ((obj instanceof AbstractC0921) && (obj2 instanceof AbstractC0921)) {
                            if (!Arrays.equals((int[]) null, (int[]) null)) {
                            }
                        } else if ((obj instanceof AbstractC0911) && (obj2 instanceof AbstractC0911)) {
                            if (!Arrays.equals((long[]) null, (long[]) null)) {
                            }
                        } else if (!obj.equals(obj2)) {
                        }
                    }
                }
            }
            return true;
        }
        return false;
    }

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public static Object m10011(int i, Object[] objArr) {
        if (i < 0 || i >= objArr.length) {
            return null;
        }
        return objArr[i];
    }

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public static void m10012(Object[] objArr, C0902 c0902) {
        Arrays.fill(objArr, 0, objArr.length, c0902);
    }

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public static void m10013(long[] jArr) {
        Arrays.fill(jArr, 0, jArr.length, -9187201950435737472L);
    }
}
