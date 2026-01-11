package p152;

import java.io.Serializable;
import p035.AbstractC1220;

/* renamed from: ˊʼ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2458 implements InterfaceC2455, Serializable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final String f9416;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Object f9417;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final String f9418;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f9419;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f9420;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Class f9421;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final boolean f9422 = false;

    public C2458(int i, Object obj, Class cls, String str, String str2, int i2) {
        this.f9417 = obj;
        this.f9421 = cls;
        this.f9416 = str;
        this.f9418 = str2;
        this.f9419 = i;
        this.f9420 = i2 >> 1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2458)) {
            return false;
        }
        C2458 c2458 = (C2458) obj;
        return this.f9422 == c2458.f9422 && this.f9419 == c2458.f9419 && this.f9420 == c2458.f9420 && AbstractC2444.m5562(this.f9417, c2458.f9417) && this.f9421.equals(c2458.f9421) && this.f9416.equals(c2458.f9416) && this.f9418.equals(c2458.f9418);
    }

    public final int hashCode() {
        Object obj = this.f9417;
        return ((((AbstractC1220.m3780(AbstractC1220.m3780((this.f9421.hashCode() + ((obj != null ? obj.hashCode() : 0) * 31)) * 31, 31, this.f9416), 31, this.f9418) + (this.f9422 ? 1231 : 1237)) * 31) + this.f9419) * 31) + this.f9420;
    }

    public final String toString() {
        AbstractC2443.f9400.getClass();
        return C2439.m5555(this);
    }

    @Override // p152.InterfaceC2455
    /* renamed from: ˑﹳ */
    public final int mo5556() {
        return this.f9419;
    }
}
