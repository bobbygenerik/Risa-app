package com.bumptech.glide.load.data;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import java.io.InputStream;

/* renamed from: com.bumptech.glide.load.data.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0221 extends AbstractC0225 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f1624;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0221(AssetManager assetManager, String str, int i) {
        super(0, str, assetManager);
        this.f1624 = i;
    }

    @Override // com.bumptech.glide.load.data.AbstractC0225
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo1115(Object obj) {
        switch (this.f1624) {
            case 0:
                ((AssetFileDescriptor) obj).close();
                return;
            default:
                ((InputStream) obj).close();
                return;
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC0225
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final Object mo1116(AssetManager assetManager, String str) {
        switch (this.f1624) {
            case 0:
                return assetManager.openFd(str);
            default:
                return assetManager.open(str);
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﹳٴ */
    public final Class mo1113() {
        switch (this.f1624) {
            case 0:
                return AssetFileDescriptor.class;
            default:
                return InputStream.class;
        }
    }
}
