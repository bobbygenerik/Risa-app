package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.res.AssetManager;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.EnumC0235;
import java.io.FileNotFoundException;
import java.io.IOException;

/* renamed from: com.bumptech.glide.load.data.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0225 implements InterfaceC0220 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Comparable f1627;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f1628;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Object f1629;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f1630;

    public /* synthetic */ AbstractC0225(int i, Comparable comparable, Object obj) {
        this.f1628 = i;
        this.f1629 = obj;
        this.f1627 = comparable;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    private final void m1118() {
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    private final void m1119() {
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    public final void cancel() {
        int i = this.f1628;
    }

    /* renamed from: ʼˎ */
    public abstract Object mo1117(Uri uri, ContentResolver contentResolver);

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ˑﹳ */
    public final int mo1111() {
        switch (this.f1628) {
            case 0:
                return 1;
            default:
                return 1;
        }
    }

    /* renamed from: ᵎﹶ */
    public abstract void mo1115(Object obj);

    /* renamed from: ᵔᵢ */
    public abstract Object mo1116(AssetManager assetManager, String str);

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ⁱˊ */
    public final void mo1112() {
        switch (this.f1628) {
            case 0:
                Object obj = this.f1630;
                if (obj != null) {
                    try {
                        mo1115(obj);
                    } catch (IOException unused) {
                        return;
                    }
                }
                return;
            default:
                Object obj2 = this.f1630;
                if (obj2 != null) {
                    try {
                        mo1115(obj2);
                        return;
                    } catch (IOException unused2) {
                        return;
                    }
                }
                return;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﾞᴵ */
    public final void mo1114(EnumC0235 enumC0235, InterfaceC0218 interfaceC0218) {
        switch (this.f1628) {
            case 0:
                try {
                    Object mo1116 = mo1116((AssetManager) this.f1629, (String) this.f1627);
                    this.f1630 = mo1116;
                    interfaceC0218.mo1108(mo1116);
                    return;
                } catch (IOException e) {
                    if (Log.isLoggable("AssetPathFetcher", 3)) {
                    }
                    interfaceC0218.mo1107(e);
                    return;
                }
            default:
                try {
                    Object mo1117 = mo1117((Uri) this.f1627, (ContentResolver) this.f1629);
                    this.f1630 = mo1117;
                    interfaceC0218.mo1108(mo1117);
                    return;
                } catch (FileNotFoundException e2) {
                    if (Log.isLoggable("LocalUriFetcher", 3)) {
                    }
                    interfaceC0218.mo1107(e2);
                    return;
                }
        }
    }
}
