package p062;

import p336.C4213;
import p336.InterfaceC4216;
import p343.InterfaceC4267;
import p462.InterfaceC5417;
import p462.InterfaceC5418;

/* renamed from: ʾˈ.ˈⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1551 implements InterfaceC5418 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC5417 f6087;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f6088;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC4267 f6089;

    public /* synthetic */ C1551(InterfaceC5417 interfaceC5417, InterfaceC5417 interfaceC54172, int i) {
        this.f6088 = i;
        this.f6089 = interfaceC5417;
        this.f6087 = interfaceC54172;
    }

    @Override // p343.InterfaceC4267
    public final Object get() {
        switch (this.f6088) {
            case 0:
                return new C1588((C1549) this.f6089.get(), (C1591) this.f6087.get());
            default:
                return new C4213((InterfaceC4216) this.f6089.get(), (InterfaceC4216) this.f6087.get());
        }
    }
}
