package p139;

import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import ʼי.ﹳٴ;

/* renamed from: ˉˋ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2367 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final byte[] f9139;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2370 f9140;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final byte[] f9141;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f9142;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f9143;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Integer f9144;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final String f9145;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Integer f9146;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f9147;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Map f9148;

    public C2367(String str, Integer num, C2370 c2370, long j, long j2, HashMap hashMap, Integer num2, String str2, byte[] bArr, byte[] bArr2) {
        this.f9147 = str;
        this.f9146 = num;
        this.f9140 = c2370;
        this.f9142 = j;
        this.f9143 = j2;
        this.f9148 = hashMap;
        this.f9144 = num2;
        this.f9145 = str2;
        this.f9139 = bArr;
        this.f9141 = bArr2;
    }

    public final boolean equals(Object obj) {
        Integer num;
        Integer num2;
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof C2367) {
            C2367 c2367 = (C2367) obj;
            String str2 = c2367.f9145;
            Integer num3 = c2367.f9144;
            Integer num4 = c2367.f9146;
            if (this.f9147.equals(c2367.f9147) && ((num = this.f9146) != null ? num.equals(num4) : num4 == null) && this.f9140.equals(c2367.f9140) && this.f9142 == c2367.f9142 && this.f9143 == c2367.f9143 && this.f9148.equals(c2367.f9148) && ((num2 = this.f9144) != null ? num2.equals(num3) : num3 == null) && ((str = this.f9145) != null ? str.equals(str2) : str2 == null) && Arrays.equals(this.f9139, c2367.f9139) && Arrays.equals(this.f9141, c2367.f9141)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f9147.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f9146;
        int hashCode2 = (((hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f9140.hashCode()) * 1000003;
        long j = this.f9142;
        int i = (hashCode2 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.f9143;
        int hashCode3 = (((i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ this.f9148.hashCode()) * 1000003;
        Integer num2 = this.f9144;
        int hashCode4 = (hashCode3 ^ (num2 == null ? 0 : num2.hashCode())) * 1000003;
        String str = this.f9145;
        return ((((hashCode4 ^ (str != null ? str.hashCode() : 0)) * 1000003) ^ Arrays.hashCode(this.f9139)) * 1000003) ^ Arrays.hashCode(this.f9141);
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.f9147 + ", code=" + this.f9146 + ", encodedPayload=" + this.f9140 + ", eventMillis=" + this.f9142 + ", uptimeMillis=" + this.f9143 + ", autoMetadata=" + this.f9148 + ", productId=" + this.f9144 + ", pseudonymousId=" + this.f9145 + ", experimentIdsClear=" + Arrays.toString(this.f9139) + ", experimentIdsEncrypted=" + Arrays.toString(this.f9141) + "}";
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ʼי.ﹳٴ, java.lang.Object] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public final ﹳٴ m5447() {
        ?? obj = new Object();
        String str = this.f9147;
        if (str == null) {
            throw new NullPointerException("Null transportName");
        }
        ((ﹳٴ) obj).ʽ = str;
        ((ﹳٴ) obj).ﹳٴ = this.f9146;
        ((ﹳٴ) obj).ⁱˊ = this.f9144;
        ((ﹳٴ) obj).ᵔᵢ = this.f9145;
        ((ﹳٴ) obj).ʼˎ = this.f9139;
        ((ﹳٴ) obj).ˆʾ = this.f9141;
        C2370 c2370 = this.f9140;
        if (c2370 == null) {
            throw new NullPointerException("Null encodedPayload");
        }
        ((ﹳٴ) obj).ˈ = c2370;
        ((ﹳٴ) obj).ˑﹳ = Long.valueOf(this.f9142);
        ((ﹳٴ) obj).ﾞᴵ = Long.valueOf(this.f9143);
        ((ﹳٴ) obj).ᵎﹶ = new HashMap(this.f9148);
        return obj;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m5448(String str) {
        String str2 = (String) this.f9148.get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String m5449(String str) {
        String str2 = (String) this.f9148.get(str);
        return str2 == null ? "" : str2;
    }
}
