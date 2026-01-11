package p080;

import java.security.MessageDigest;
import java.util.Map;
import p031.C1144;
import p031.InterfaceC1141;
import p087.AbstractC1751;

/* renamed from: ʿʾ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1702 implements InterfaceC1141 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C1144 f6956;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f6957;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f6958;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f6959;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Class f6960;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final InterfaceC1141 f6961;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final Map f6962;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f6963;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Class f6964;

    public C1702(Object obj, InterfaceC1141 interfaceC1141, int i, int i2, Map map, Class cls, Class cls2, C1144 c1144) {
        AbstractC1751.m4711(obj, "Argument must not be null");
        this.f6963 = obj;
        this.f6961 = interfaceC1141;
        this.f6957 = i;
        this.f6959 = i2;
        AbstractC1751.m4711(map, "Argument must not be null");
        this.f6962 = map;
        AbstractC1751.m4711(cls, "Resource class must not be null");
        this.f6960 = cls;
        AbstractC1751.m4711(cls2, "Transcode class must not be null");
        this.f6964 = cls2;
        AbstractC1751.m4711(c1144, "Argument must not be null");
        this.f6956 = c1144;
    }

    @Override // p031.InterfaceC1141
    public final boolean equals(Object obj) {
        if (obj instanceof C1702) {
            C1702 c1702 = (C1702) obj;
            if (this.f6963.equals(c1702.f6963) && this.f6961.equals(c1702.f6961) && this.f6959 == c1702.f6959 && this.f6957 == c1702.f6957 && this.f6962.equals(c1702.f6962) && this.f6960.equals(c1702.f6960) && this.f6964.equals(c1702.f6964) && this.f6956.equals(c1702.f6956)) {
                return true;
            }
        }
        return false;
    }

    @Override // p031.InterfaceC1141
    public final int hashCode() {
        if (this.f6958 == 0) {
            int hashCode = this.f6963.hashCode();
            this.f6958 = hashCode;
            int hashCode2 = ((((this.f6961.hashCode() + (hashCode * 31)) * 31) + this.f6957) * 31) + this.f6959;
            this.f6958 = hashCode2;
            int hashCode3 = this.f6962.hashCode() + (hashCode2 * 31);
            this.f6958 = hashCode3;
            int hashCode4 = this.f6960.hashCode() + (hashCode3 * 31);
            this.f6958 = hashCode4;
            int hashCode5 = this.f6964.hashCode() + (hashCode4 * 31);
            this.f6958 = hashCode5;
            this.f6958 = this.f6956.f4409.hashCode() + (hashCode5 * 31);
        }
        return this.f6958;
    }

    public final String toString() {
        return "EngineKey{model=" + this.f6963 + ", width=" + this.f6957 + ", height=" + this.f6959 + ", resourceClass=" + this.f6960 + ", transcodeClass=" + this.f6964 + ", signature=" + this.f6961 + ", hashCode=" + this.f6958 + ", transformations=" + this.f6962 + ", options=" + this.f6956 + '}';
    }

    @Override // p031.InterfaceC1141
    /* renamed from: ⁱˊ */
    public final void mo3574(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }
}
