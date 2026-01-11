package com.bumptech.glide.load.data;

import android.os.ParcelFileDescriptor;
import java.nio.ByteBuffer;
import p199.C2904;

/* renamed from: com.bumptech.glide.load.data.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0224 implements InterfaceC0228 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f1626;

    public /* synthetic */ C0224(int i) {
        this.f1626 = i;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0228
    /* renamed from: ⁱˊ */
    public final InterfaceC0222 mo1109(Object obj) {
        switch (this.f1626) {
            case 0:
                return new C0215(obj);
            case 1:
                return new C0215((ParcelFileDescriptor) obj);
            default:
                return new C2904((ByteBuffer) obj);
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0228
    /* renamed from: ﹳٴ */
    public final Class mo1110() {
        switch (this.f1626) {
            case 0:
                throw new UnsupportedOperationException("Not implemented");
            case 1:
                return ParcelFileDescriptor.class;
            default:
                return ByteBuffer.class;
        }
    }
}
