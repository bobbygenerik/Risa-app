package p438;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p150.InterfaceC2417;
import p152.AbstractC2444;
import ᴵˋ.ˊʻ;

/* renamed from: ﹶٴ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5174 implements InterfaceC2417, InterfaceC5180 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Set f19480;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f19481;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC2417 f19482;

    public C5174(InterfaceC2417 interfaceC2417) {
        Set set;
        this.f19482 = interfaceC2417;
        this.f19481 = interfaceC2417.mo5525() + '?';
        if (interfaceC2417 instanceof InterfaceC5180) {
            set = ((InterfaceC5180) interfaceC2417).mo10158();
        } else {
            HashSet hashSet = new HashSet(interfaceC2417.mo5522());
            int mo5522 = interfaceC2417.mo5522();
            for (int i = 0; i < mo5522; i++) {
                hashSet.add(interfaceC2417.mo5523(i));
            }
            set = hashSet;
        }
        this.f19480 = set;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C5174) {
            return AbstractC2444.m5562(this.f19482, ((C5174) obj).f19482);
        }
        return false;
    }

    @Override // p150.InterfaceC2417
    public final List getAnnotations() {
        return this.f19482.getAnnotations();
    }

    public final int hashCode() {
        return this.f19482.hashCode() * 31;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f19482);
        sb.append('?');
        return sb.toString();
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ʼˎ */
    public final List mo5519(int i) {
        return this.f19482.mo5519(i);
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ʽ */
    public final ˊʻ mo5520() {
        return this.f19482.mo5520();
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ˆʾ */
    public final InterfaceC2417 mo5521(int i) {
        return this.f19482.mo5521(i);
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ˈ */
    public final int mo5522() {
        return this.f19482.mo5522();
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ˑﹳ */
    public final String mo5523(int i) {
        return this.f19482.mo5523(i);
    }

    @Override // p438.InterfaceC5180
    /* renamed from: ᵎﹶ */
    public final Set mo10158() {
        return this.f19480;
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ᵔᵢ */
    public final boolean mo5524() {
        return true;
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ⁱˊ */
    public final String mo5525() {
        return this.f19481;
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ﹳٴ */
    public final int mo5526(String str) {
        return this.f19482.mo5526(str);
    }

    @Override // p150.InterfaceC2417
    /* renamed from: ﾞᴵ */
    public final boolean mo5527() {
        return this.f19482.mo5527();
    }
}
