package p108;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import android.provider.MediaStore;
import android.text.TextUtils;
import com.bumptech.glide.EnumC0235;
import com.bumptech.glide.load.data.InterfaceC0218;
import com.bumptech.glide.load.data.InterfaceC0220;
import java.io.File;
import java.io.FileNotFoundException;
import p031.C1144;
import p383.C4586;
import p383.InterfaceC4578;
import ﹳٴ.ﹳٴ;

/* renamed from: ˆᴵ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1943 implements InterfaceC0220 {

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public static final String[] f7707 = {"_data"};

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC4578 f7708;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Context f7709;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Uri f7710;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final Class f7711;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f7712;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public volatile InterfaceC0220 f7713;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C1144 f7714;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final InterfaceC4578 f7715;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f7716;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public volatile boolean f7717;

    public C1943(Context context, InterfaceC4578 interfaceC4578, InterfaceC4578 interfaceC45782, Uri uri, int i, int i2, C1144 c1144, Class cls) {
        this.f7709 = context.getApplicationContext();
        this.f7715 = interfaceC4578;
        this.f7708 = interfaceC45782;
        this.f7710 = uri;
        this.f7716 = i;
        this.f7712 = i2;
        this.f7714 = c1144;
        this.f7711 = cls;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    public final void cancel() {
        this.f7717 = true;
        InterfaceC0220 interfaceC0220 = this.f7713;
        if (interfaceC0220 != null) {
            interfaceC0220.cancel();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC0220 m4902() {
        C4586 mo4900;
        boolean isExternalStorageLegacy = Environment.isExternalStorageLegacy();
        Cursor cursor = null;
        Context context = this.f7709;
        C1144 c1144 = this.f7714;
        int i = this.f7712;
        int i2 = this.f7716;
        if (isExternalStorageLegacy) {
            Uri uri = this.f7710;
            try {
                Cursor query = context.getContentResolver().query(uri, f7707, null, null, null);
                if (query != null) {
                    try {
                        if (query.moveToFirst()) {
                            String string = query.getString(query.getColumnIndexOrThrow("_data"));
                            if (TextUtils.isEmpty(string)) {
                                throw new FileNotFoundException("File path was empty in media store for: " + uri);
                            }
                            File file = new File(string);
                            query.close();
                            mo4900 = this.f7715.mo4900(file, i2, i, c1144);
                        }
                    } catch (Throwable th) {
                        th = th;
                        cursor = query;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                }
                throw new FileNotFoundException("Failed to media store entry for: " + uri);
            } catch (Throwable th2) {
                th = th2;
            }
        } else {
            Uri uri2 = this.f7710;
            boolean z = ﹳٴ.ʽʽ(uri2);
            InterfaceC4578 interfaceC4578 = this.f7708;
            if (z && uri2.getPathSegments().contains("picker")) {
                mo4900 = interfaceC4578.mo4900(uri2, i2, i, c1144);
            } else {
                if (context.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0) {
                    uri2 = MediaStore.setRequireOriginal(uri2);
                }
                mo4900 = interfaceC4578.mo4900(uri2, i2, i, c1144);
            }
        }
        if (mo4900 != null) {
            return mo4900.f17080;
        }
        return null;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ˑﹳ */
    public final int mo1111() {
        return 1;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ⁱˊ */
    public final void mo1112() {
        InterfaceC0220 interfaceC0220 = this.f7713;
        if (interfaceC0220 != null) {
            interfaceC0220.mo1112();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﹳٴ */
    public final Class mo1113() {
        return this.f7711;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﾞᴵ */
    public final void mo1114(EnumC0235 enumC0235, InterfaceC0218 interfaceC0218) {
        try {
            InterfaceC0220 m4902 = m4902();
            if (m4902 == null) {
                interfaceC0218.mo1107(new IllegalArgumentException("Failed to build fetcher for: " + this.f7710));
            } else {
                this.f7713 = m4902;
                if (this.f7717) {
                    cancel();
                } else {
                    m4902.mo1114(enumC0235, interfaceC0218);
                }
            }
        } catch (FileNotFoundException e) {
            interfaceC0218.mo1107(e);
        }
    }
}
