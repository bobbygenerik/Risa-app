package com.bumptech.glide.load.data;

import android.os.ParcelFileDescriptor;
import java.io.InputStream;
import java.util.HashMap;
import p257.C3397;
import p366.C4462;

/* renamed from: com.bumptech.glide.load.data.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0215 implements InterfaceC0222 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final C0224 f1612 = new C0224(0);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f1613;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f1614;

    public C0215() {
        this.f1613 = 0;
        this.f1614 = new HashMap();
    }

    public C0215(ParcelFileDescriptor parcelFileDescriptor) {
        this.f1613 = 1;
        this.f1614 = new ParcelFileDescriptorRewinder$InternalRewinder(parcelFileDescriptor);
    }

    public C0215(InputStream inputStream, C3397 c3397) {
        this.f1613 = 3;
        C4462 c4462 = new C4462(inputStream, c3397);
        this.f1614 = c4462;
        c4462.mark(5242880);
    }

    public C0215(Object obj) {
        this.f1613 = 2;
        this.f1614 = obj;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    private final void m1102() {
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    private final void m1103() {
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public ParcelFileDescriptor m1104() {
        return ((ParcelFileDescriptorRewinder$InternalRewinder) this.f1614).rewind();
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0222
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void mo1105() {
        switch (this.f1613) {
            case 1:
            case 2:
                return;
            default:
                ((C4462) this.f1614).m9014();
                return;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0222
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Object mo1106() {
        switch (this.f1613) {
            case 1:
                return ((ParcelFileDescriptorRewinder$InternalRewinder) this.f1614).rewind();
            case 2:
                return this.f1614;
            default:
                C4462 c4462 = (C4462) this.f1614;
                c4462.reset();
                return c4462;
        }
    }
}
