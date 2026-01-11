package p012;

import java.util.ArrayList;
import java.util.Arrays;

/* renamed from: ʻᴵ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0889 extends AbstractC0905 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f3756;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final ArrayList f3757;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final ArrayList f3758;

    public C0889(int i, long j) {
        super(i, 0);
        this.f3756 = j;
        this.f3757 = new ArrayList();
        this.f3758 = new ArrayList();
    }

    @Override // p012.AbstractC0905
    public final String toString() {
        return AbstractC0905.m3171(this.f3828) + " leaves: " + Arrays.toString(this.f3757.toArray()) + " containers: " + Arrays.toString(this.f3758.toArray());
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final C0893 m3140(int i) {
        ArrayList arrayList = this.f3757;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0893 c0893 = (C0893) arrayList.get(i2);
            if (c0893.f3828 == i) {
                return c0893;
            }
        }
        return null;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final C0889 m3141(int i) {
        ArrayList arrayList = this.f3758;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0889 c0889 = (C0889) arrayList.get(i2);
            if (c0889.f3828 == i) {
                return c0889;
            }
        }
        return null;
    }
}
