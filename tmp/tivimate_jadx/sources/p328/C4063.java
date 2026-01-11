package p328;

import java.util.Comparator;

/* renamed from: ᴵᵔ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4063 implements Comparator {
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        C4067 c4067 = (C4067) obj;
        C4067 c40672 = (C4067) obj2;
        long m8277 = c4067.m8277();
        long m82772 = c40672.m8277();
        if (m8277 == m82772) {
            int i = c40672.f15485;
            int i2 = c4067.f15485;
            return i + i2 == 1 ? i2 - i : i - i2;
        }
        if (m82772 == -1) {
            return -1;
        }
        return (m8277 != -1 && m8277 - m82772 <= 0) ? -1 : 1;
    }
}
