package p138;

import android.content.Context;
import android.net.Uri;
import p031.C1143;
import p031.C1144;
import p031.InterfaceC1139;
import p080.InterfaceC1710;

/* renamed from: ˉˈ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2355 implements InterfaceC1139 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C1143 f9108 = new C1143("com.bumptech.glide.load.resource.bitmap.Downsampler.Theme", null, C1143.f4404);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f9109;

    public C2355(Context context) {
        this.f9109 = context.getApplicationContext();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0036  */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p080.InterfaceC1710 m5440(android.net.Uri r9, p031.C1144 r10) {
        /*
            Method dump skipped, instructions count: 262
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p138.C2355.m5440(android.net.Uri, ʼᵔ.ᵔᵢ):ʿʾ.ᵢˏ");
    }

    @Override // p031.InterfaceC1139
    /* renamed from: ⁱˊ */
    public final /* bridge */ /* synthetic */ InterfaceC1710 mo3568(Object obj, int i, int i2, C1144 c1144) {
        return m5440((Uri) obj, c1144);
    }

    @Override // p031.InterfaceC1139
    /* renamed from: ﹳٴ */
    public final boolean mo3569(Object obj, C1144 c1144) {
        String scheme = ((Uri) obj).getScheme();
        return scheme != null && scheme.equals("android.resource");
    }
}
