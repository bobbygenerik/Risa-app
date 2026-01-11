package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import java.io.FileNotFoundException;

/* renamed from: com.bumptech.glide.load.data.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0226 extends AbstractC0225 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f1631;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0226(ContentResolver contentResolver, Uri uri, int i) {
        super(1, uri, contentResolver);
        this.f1631 = i;
    }

    @Override // com.bumptech.glide.load.data.AbstractC0225
    /* renamed from: ʼˎ */
    public final Object mo1117(Uri uri, ContentResolver contentResolver) {
        switch (this.f1631) {
            case 0:
                AssetFileDescriptor openAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uri, "r");
                if (openAssetFileDescriptor != null) {
                    return openAssetFileDescriptor;
                }
                throw new FileNotFoundException("FileDescriptor is null for: " + uri);
            default:
                AssetFileDescriptor openAssetFileDescriptor2 = contentResolver.openAssetFileDescriptor(uri, "r");
                if (openAssetFileDescriptor2 != null) {
                    return openAssetFileDescriptor2.getParcelFileDescriptor();
                }
                throw new FileNotFoundException("FileDescriptor is null for: " + uri);
        }
    }

    @Override // com.bumptech.glide.load.data.AbstractC0225
    /* renamed from: ᵎﹶ */
    public final void mo1115(Object obj) {
        switch (this.f1631) {
            case 0:
                ((AssetFileDescriptor) obj).close();
                return;
            default:
                ((ParcelFileDescriptor) obj).close();
                return;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﹳٴ */
    public final Class mo1113() {
        switch (this.f1631) {
            case 0:
                return AssetFileDescriptor.class;
            default:
                return ParcelFileDescriptor.class;
        }
    }
}
