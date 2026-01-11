package com.bumptech.glide.load.data;

import java.io.InputStream;
import p257.C3397;

/* renamed from: com.bumptech.glide.load.data.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0219 implements InterfaceC0228 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3397 f1623;

    public C0219(C3397 c3397) {
        this.f1623 = c3397;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0228
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC0222 mo1109(Object obj) {
        return new C0215((InputStream) obj, this.f1623);
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0228
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Class mo1110() {
        return InputStream.class;
    }
}
