package p122;

import android.os.Build;
import p035.AbstractC1220;

/* renamed from: ˈˋ.ˑʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2074 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f8125;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f8126;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f8127;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f8128;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f8129;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f8130;

    public C2074(int i, int i2, long j, long j2, boolean z, int i3) {
        String str = Build.MODEL;
        String str2 = Build.MANUFACTURER;
        String str3 = Build.PRODUCT;
        this.f8129 = i;
        if (str == null) {
            throw new NullPointerException("Null model");
        }
        this.f8128 = i2;
        this.f8125 = j;
        this.f8126 = j2;
        this.f8127 = z;
        this.f8130 = i3;
        if (str2 == null) {
            throw new NullPointerException("Null manufacturer");
        }
        if (str3 == null) {
            throw new NullPointerException("Null modelClass");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C2074)) {
            return false;
        }
        C2074 c2074 = (C2074) obj;
        if (this.f8129 != c2074.f8129) {
            return false;
        }
        String str = Build.MODEL;
        if (!str.equals(str) || this.f8128 != c2074.f8128 || this.f8125 != c2074.f8125 || this.f8126 != c2074.f8126 || this.f8127 != c2074.f8127 || this.f8130 != c2074.f8130) {
            return false;
        }
        String str2 = Build.MANUFACTURER;
        if (!str2.equals(str2)) {
            return false;
        }
        String str3 = Build.PRODUCT;
        return str3.equals(str3);
    }

    public final int hashCode() {
        int hashCode = (((((this.f8129 ^ 1000003) * 1000003) ^ Build.MODEL.hashCode()) * 1000003) ^ this.f8128) * 1000003;
        long j = this.f8125;
        int i = (hashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f8126;
        return ((((((((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ (this.f8127 ? 1231 : 1237)) * 1000003) ^ this.f8130) * 1000003) ^ Build.MANUFACTURER.hashCode()) * 1000003) ^ Build.PRODUCT.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DeviceData{arch=");
        sb.append(this.f8129);
        sb.append(", model=");
        sb.append(Build.MODEL);
        sb.append(", availableProcessors=");
        sb.append(this.f8128);
        sb.append(", totalRam=");
        sb.append(this.f8125);
        sb.append(", diskSpace=");
        sb.append(this.f8126);
        sb.append(", isEmulator=");
        sb.append(this.f8127);
        sb.append(", state=");
        sb.append(this.f8130);
        sb.append(", manufacturer=");
        sb.append(Build.MANUFACTURER);
        sb.append(", modelClass=");
        return AbstractC1220.m3775(sb, Build.PRODUCT, "}");
    }
}
