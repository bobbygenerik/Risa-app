package p438;

import java.util.List;
import p137.AbstractC2305;
import p150.AbstractC2416;
import p150.InterfaceC2417;
import p152.AbstractC2444;
import p430.C5097;
import ᴵˋ.ˊʻ;

/* renamed from: ﹶٴ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5178 implements InterfaceC2417 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC2416 f19486;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f19487;

    public C5178(String str, AbstractC2416 abstractC2416) {
        this.f19487 = str;
        this.f19486 = abstractC2416;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5178)) {
            return false;
        }
        C5178 c5178 = (C5178) obj;
        return AbstractC2444.m5562(this.f19487, c5178.f19487) && AbstractC2444.m5562(this.f19486, c5178.f19486);
    }

    @Override // p150.InterfaceC2417
    public final List getAnnotations() {
        return C5097.f19202;
    }

    public final int hashCode() {
        return (this.f19486.hashCode() * 31) + this.f19487.hashCode();
    }

    public final String toString() {
        return AbstractC2305.m5384(new StringBuilder("PrimitiveDescriptor("), this.f19487, ')');
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ʼˎ */
    public final List mo5519(int i) {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ʽ */
    public final ˊʻ mo5520() {
        return this.f19486;
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ˆʾ */
    public final InterfaceC2417 mo5521(int i) {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ˈ */
    public final int mo5522() {
        return 0;
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ˑﹳ */
    public final String mo5523(int i) {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ᵔᵢ */
    public final boolean mo5524() {
        return false;
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ⁱˊ */
    public final String mo5525() {
        return this.f19487;
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ﹳٴ */
    public final int mo5526(String str) {
        throw new IllegalStateException("Primitive descriptor does not have elements");
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ﾞᴵ */
    public final boolean mo5527() {
        return false;
    }
}
