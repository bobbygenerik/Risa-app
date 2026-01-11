package p122;

/* renamed from: ˈˋ.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2075 extends AbstractC2120 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AbstractC2081 f8131;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC2100 f8132;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AbstractC2053 f8133;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8134;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f8135;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final AbstractC2034 f8136;

    public C2075(long j, String str, AbstractC2081 abstractC2081, AbstractC2100 abstractC2100, AbstractC2053 abstractC2053, AbstractC2034 abstractC2034) {
        this.f8135 = j;
        this.f8134 = str;
        this.f8131 = abstractC2081;
        this.f8132 = abstractC2100;
        this.f8133 = abstractC2053;
        this.f8136 = abstractC2034;
    }

    public final boolean equals(Object obj) {
        AbstractC2053 abstractC2053;
        AbstractC2034 abstractC2034;
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2120) {
            C2075 c2075 = (C2075) ((AbstractC2120) obj);
            AbstractC2034 abstractC20342 = c2075.f8136;
            AbstractC2053 abstractC20532 = c2075.f8133;
            if (this.f8135 == c2075.f8135 && this.f8134.equals(c2075.f8134) && this.f8131.equals(c2075.f8131) && this.f8132.equals(c2075.f8132) && ((abstractC2053 = this.f8133) != null ? abstractC2053.equals(abstractC20532) : abstractC20532 == null) && ((abstractC2034 = this.f8136) != null ? abstractC2034.equals(abstractC20342) : abstractC20342 == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f8135;
        int hashCode = (((((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.f8134.hashCode()) * 1000003) ^ this.f8131.hashCode()) * 1000003) ^ this.f8132.hashCode()) * 1000003;
        AbstractC2053 abstractC2053 = this.f8133;
        int hashCode2 = (hashCode ^ (abstractC2053 == null ? 0 : abstractC2053.hashCode())) * 1000003;
        AbstractC2034 abstractC2034 = this.f8136;
        return hashCode2 ^ (abstractC2034 != null ? abstractC2034.hashCode() : 0);
    }

    public final String toString() {
        return "Event{timestamp=" + this.f8135 + ", type=" + this.f8134 + ", app=" + this.f8131 + ", device=" + this.f8132 + ", log=" + this.f8133 + ", rollouts=" + this.f8136 + "}";
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˈˋ.ˈʿ, java.lang.Object] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2058 m5078() {
        ?? obj = new Object();
        obj.f8063 = this.f8135;
        obj.f8062 = this.f8134;
        obj.f8058 = this.f8131;
        obj.f8059 = this.f8132;
        obj.f8060 = this.f8133;
        obj.f8064 = this.f8136;
        obj.f8061 = (byte) 1;
        return obj;
    }
}
