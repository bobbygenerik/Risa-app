package p359;

import p035.AbstractC1220;

/* renamed from: ᵔـ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4362 {

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final C4362 f16196 = new C4362(10485760, 200, 10000, 604800000, 81920);

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f16197;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f16198;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f16199;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f16200;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f16201;

    public C4362(long j, int i, int i2, long j2, int i3) {
        this.f16201 = j;
        this.f16200 = i;
        this.f16197 = i2;
        this.f16198 = j2;
        this.f16199 = i3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C4362) {
            C4362 c4362 = (C4362) obj;
            if (this.f16201 == c4362.f16201 && this.f16200 == c4362.f16200 && this.f16197 == c4362.f16197 && this.f16198 == c4362.f16198 && this.f16199 == c4362.f16199) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f16201;
        int i = (((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f16200) * 1000003) ^ this.f16197) * 1000003;
        long j2 = this.f16198;
        return ((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f16199;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("EventStoreConfig{maxStorageSizeInBytes=");
        sb.append(this.f16201);
        sb.append(", loadBatchSize=");
        sb.append(this.f16200);
        sb.append(", criticalSectionEnterTimeoutMs=");
        sb.append(this.f16197);
        sb.append(", eventCleanUpAge=");
        sb.append(this.f16198);
        sb.append(", maxBlobByteSizePerRow=");
        return AbstractC1220.m3782(sb, this.f16199, "}");
    }
}
