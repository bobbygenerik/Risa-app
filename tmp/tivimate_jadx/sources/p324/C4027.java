package p324;

import p137.AbstractC2305;

/* renamed from: ᴵי.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4027 implements InterfaceC4024 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean f15406;

    public C4027(boolean z) {
        this.f15406 = z;
    }

    public final String toString() {
        return AbstractC2305.m5384(new StringBuilder("Empty{"), this.f15406 ? "Active" : "New", '}');
    }

    @Override // p324.InterfaceC4024
    /* renamed from: ʽ */
    public final boolean mo8150() {
        return this.f15406;
    }

    @Override // p324.InterfaceC4024
    /* renamed from: ˈ */
    public final C4018 mo8151() {
        return null;
    }
}
