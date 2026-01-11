package p090;

import com.bumptech.glide.ʽ;
import com.bumptech.glide.ˈ;
import p126.InterfaceC2138;
import p126.InterfaceC2139;
import p126.InterfaceC2142;
import p329.InterfaceC4087;

/* renamed from: ʿᵢ.ٴﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1812 implements InterfaceC2142 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1812 f7310;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C1791 f7311;

    public C1812(C1812 c1812, C1791 c1791) {
        this.f7310 = c1812;
        this.f7311 = c1791;
    }

    @Override // p126.InterfaceC2142
    public final InterfaceC2138 getKey() {
        return C1803.f7283;
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ʿᵢ */
    public final Object mo3418(Object obj, InterfaceC4087 interfaceC4087) {
        return interfaceC4087.mo3749(obj, this);
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ˊᵔ */
    public final InterfaceC2142 mo3419(InterfaceC2138 interfaceC2138) {
        return ˈ.ᵔﹳ(this, interfaceC2138);
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ـˆ */
    public final InterfaceC2139 mo3420(InterfaceC2138 interfaceC2138) {
        return ˈ.ʾˋ(this, interfaceC2138);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4756(C1791 c1791) {
        if (this.f7311 == c1791) {
            throw new IllegalStateException("Calling updateData inside updateData on the same DataStore instance is not supported\nsince updates made in the parent updateData call will not be visible to the nested\nupdateData call. See https://issuetracker.google.com/issues/241760537 for details.");
        }
        C1812 c1812 = this.f7310;
        if (c1812 != null) {
            c1812.m4756(c1791);
        }
    }

    @Override // p126.InterfaceC2139
    /* renamed from: ﹶᐧ */
    public final InterfaceC2139 mo3421(InterfaceC2139 interfaceC2139) {
        return ʽ.ˏי(this, interfaceC2139);
    }
}
