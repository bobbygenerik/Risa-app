package androidx.lifecycle;

import p036.C1256;
import p229.C3125;

/* renamed from: androidx.lifecycle.ˋᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0178 implements InterfaceC0183, AutoCloseable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f1066;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f1067;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C0181 f1068;

    public C0178(String str, C0181 c0181) {
        this.f1067 = str;
        this.f1068 = c0181;
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m705(C3125 c3125, C0184 c0184) {
        if (this.f1066) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.f1066 = true;
        c0184.m714(this);
        c3125.m6832(this.f1067, (C1256) this.f1068.f1070.ᴵˊ);
    }

    @Override // androidx.lifecycle.InterfaceC0183
    /* renamed from: ᵎﹶ */
    public final void mo679(InterfaceC0162 interfaceC0162, EnumC0174 enumC0174) {
        if (enumC0174 == EnumC0174.ON_DESTROY) {
            this.f1066 = false;
            interfaceC0162.mo691().m715(this);
        }
    }
}
