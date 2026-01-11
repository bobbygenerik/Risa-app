package p383;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.EnumC0235;
import com.bumptech.glide.load.data.InterfaceC0218;
import com.bumptech.glide.load.data.InterfaceC0220;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.nio.ByteBuffer;

/* renamed from: ⁱʼ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4601 implements InterfaceC0220 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final String[] f17121 = {"_data"};

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f17122;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f17123;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f17124;

    public /* synthetic */ C4601(Object obj, int i, Object obj2) {
        this.f17123 = i;
        this.f17124 = obj;
        this.f17122 = obj2;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    private final void m9140() {
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    private final void m9141() {
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    private final void m9142() {
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    private final void m9143() {
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    public final void cancel() {
        int i = this.f17123;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ˑﹳ */
    public final int mo1111() {
        switch (this.f17123) {
            case 0:
                return 1;
            default:
                return 1;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ⁱˊ */
    public final void mo1112() {
        int i = this.f17123;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﹳٴ */
    public final Class mo1113() {
        switch (this.f17123) {
            case 0:
                return File.class;
            default:
                return ((C4579) this.f17122).m9128();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﾞᴵ */
    public final void mo1114(EnumC0235 enumC0235, InterfaceC0218 interfaceC0218) {
        Object wrap;
        switch (this.f17123) {
            case 0:
                Cursor query = ((Context) this.f17124).getContentResolver().query((Uri) this.f17122, f17121, null, null, null);
                if (query != null) {
                    try {
                        r0 = query.moveToFirst() ? query.getString(query.getColumnIndexOrThrow("_data")) : null;
                        query.close();
                    } catch (Throwable th) {
                        query.close();
                        throw th;
                    }
                }
                if (!TextUtils.isEmpty(r0)) {
                    interfaceC0218.mo1108(new File(r0));
                    return;
                }
                interfaceC0218.mo1107(new FileNotFoundException("Failed to find file path for: " + ((Uri) this.f17122)));
                return;
            default:
                C4579 c4579 = (C4579) this.f17122;
                byte[] bArr = (byte[]) this.f17124;
                switch (c4579.f17069) {
                    case 0:
                        wrap = ByteBuffer.wrap(bArr);
                        break;
                    default:
                        wrap = new ByteArrayInputStream(bArr);
                        break;
                }
                interfaceC0218.mo1108(wrap);
                return;
        }
    }
}
