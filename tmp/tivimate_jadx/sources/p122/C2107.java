package p122;

import p035.AbstractC1220;

/* renamed from: ˈˋ.ᵔٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2107 extends AbstractC2042 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final String f8255;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f8256;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f8257;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f8258;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f8259;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final String f8260;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8261;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f8262;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f8263;

    public C2107(int i, String str, int i2, long j, long j2, boolean z, int i3, String str2, String str3) {
        this.f8262 = i;
        this.f8261 = str;
        this.f8256 = i2;
        this.f8257 = j;
        this.f8258 = j2;
        this.f8263 = z;
        this.f8259 = i3;
        this.f8260 = str2;
        this.f8255 = str3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2042) {
            C2107 c2107 = (C2107) ((AbstractC2042) obj);
            if (this.f8262 == c2107.f8262 && this.f8261.equals(c2107.f8261) && this.f8256 == c2107.f8256 && this.f8257 == c2107.f8257 && this.f8258 == c2107.f8258 && this.f8263 == c2107.f8263 && this.f8259 == c2107.f8259 && this.f8260.equals(c2107.f8260) && this.f8255.equals(c2107.f8255)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((((this.f8262 ^ 1000003) * 1000003) ^ this.f8261.hashCode()) * 1000003) ^ this.f8256) * 1000003;
        long j = this.f8257;
        int i = (hashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f8258;
        return ((((((((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ (this.f8263 ? 1231 : 1237)) * 1000003) ^ this.f8259) * 1000003) ^ this.f8260.hashCode()) * 1000003) ^ this.f8255.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Device{arch=");
        sb.append(this.f8262);
        sb.append(", model=");
        sb.append(this.f8261);
        sb.append(", cores=");
        sb.append(this.f8256);
        sb.append(", ram=");
        sb.append(this.f8257);
        sb.append(", diskSpace=");
        sb.append(this.f8258);
        sb.append(", simulator=");
        sb.append(this.f8263);
        sb.append(", state=");
        sb.append(this.f8259);
        sb.append(", manufacturer=");
        sb.append(this.f8260);
        sb.append(", modelClass=");
        return AbstractC1220.m3775(sb, this.f8255, "}");
    }
}
