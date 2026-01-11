package p383;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.EnumC0235;
import com.bumptech.glide.load.data.InterfaceC0218;
import com.bumptech.glide.load.data.InterfaceC0220;
import com.google.android.gms.internal.play_billing.י;
import java.io.IOException;
import java.io.InputStream;
import p108.C1944;

/* renamed from: ⁱʼ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4588 implements InterfaceC0220 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C1944 f17090;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Resources.Theme f17091;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f17092;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Resources f17093;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Object f17094;

    public C4588(Resources.Theme theme, Resources resources, C1944 c1944, int i) {
        this.f17091 = theme;
        this.f17093 = resources;
        this.f17090 = c1944;
        this.f17092 = i;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    public final void cancel() {
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ˑﹳ */
    public final int mo1111() {
        return 1;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ⁱˊ */
    public final void mo1112() {
        Object obj = this.f17094;
        if (obj != null) {
            try {
                switch (this.f17090.f7719) {
                    case 2:
                        ((AssetFileDescriptor) obj).close();
                        break;
                    case 3:
                        break;
                    default:
                        ((InputStream) obj).close();
                        break;
                }
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﹳٴ */
    public final Class mo1113() {
        switch (this.f17090.f7719) {
            case 2:
                return AssetFileDescriptor.class;
            case 3:
                return Drawable.class;
            default:
                return InputStream.class;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﾞᴵ */
    public final void mo1114(EnumC0235 enumC0235, InterfaceC0218 interfaceC0218) {
        Object openRawResourceFd;
        try {
            C1944 c1944 = this.f17090;
            Resources.Theme theme = this.f17091;
            Resources resources = this.f17093;
            int i = this.f17092;
            switch (c1944.f7719) {
                case 2:
                    openRawResourceFd = resources.openRawResourceFd(i);
                    break;
                case 3:
                    Context context = c1944.f7718;
                    openRawResourceFd = י.יـ(context, context, i, theme);
                    break;
                default:
                    openRawResourceFd = resources.openRawResource(i);
                    break;
            }
            this.f17094 = openRawResourceFd;
            interfaceC0218.mo1108(openRawResourceFd);
        } catch (Resources.NotFoundException e) {
            interfaceC0218.mo1107(e);
        }
    }
}
