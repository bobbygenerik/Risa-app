package p438;

import java.util.List;
import p035.AbstractC1220;
import p150.C2422;
import p150.InterfaceC2417;
import p152.AbstractC2444;
import p430.C5097;
import p435.AbstractC5152;
import ᴵˋ.ˊʻ;

/* renamed from: ﹶٴ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5177 implements InterfaceC2417 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC2417 f19484;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC2417 f19485;

    public C5177(InterfaceC2417 interfaceC2417, InterfaceC2417 interfaceC24172) {
        this.f19485 = interfaceC2417;
        this.f19484 = interfaceC24172;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5177)) {
            return false;
        }
        C5177 c5177 = (C5177) obj;
        return AbstractC2444.m5562(this.f19485, c5177.f19485) && AbstractC2444.m5562(this.f19484, c5177.f19484);
    }

    @Override // p150.InterfaceC2417
    public final List getAnnotations() {
        return C5097.f19202;
    }

    public final int hashCode() {
        return this.f19484.hashCode() + ((this.f19485.hashCode() + 710441009) * 31);
    }

    public final String toString() {
        return "kotlin.collections.LinkedHashMap(" + this.f19485 + ", " + this.f19484 + ')';
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ʼˎ */
    public final List mo5519(int i) {
        if (i >= 0) {
            return C5097.f19202;
        }
        throw new IllegalArgumentException(AbstractC1220.m3773(i, "Illegal index ", ", kotlin.collections.LinkedHashMap expects only non-negative indices").toString());
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ʽ */
    public final ˊʻ mo5520() {
        return C2422.f9353;
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ˆʾ */
    public final InterfaceC2417 mo5521(int i) {
        if (i < 0) {
            throw new IllegalArgumentException(AbstractC1220.m3773(i, "Illegal index ", ", kotlin.collections.LinkedHashMap expects only non-negative indices").toString());
        }
        int i2 = i % 2;
        if (i2 == 0) {
            return this.f19485;
        }
        if (i2 == 1) {
            return this.f19484;
        }
        throw new IllegalStateException("Unreached");
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ˈ */
    public final int mo5522() {
        return 2;
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ˑﹳ */
    public final String mo5523(int i) {
        return String.valueOf(i);
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ᵔᵢ */
    public final boolean mo5524() {
        return false;
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ⁱˊ */
    public final String mo5525() {
        return "kotlin.collections.LinkedHashMap";
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ﹳٴ */
    public final int mo5526(String str) {
        Integer m10149 = AbstractC5152.m10149(str);
        if (m10149 != null) {
            return m10149.intValue();
        }
        throw new IllegalArgumentException(str.concat(" is not a valid map index"));
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ﾞᴵ */
    public final boolean mo5527() {
        return false;
    }
}
