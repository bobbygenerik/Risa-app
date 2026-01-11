package p191;

import android.content.Context;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.ComponentCallbacks2C0238;
import com.bumptech.glide.EnumC0235;
import com.bumptech.glide.load.data.InterfaceC0218;
import com.bumptech.glide.load.data.InterfaceC0220;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import p383.C4579;

/* renamed from: ˋﾞ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2875 implements InterfaceC0220 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f10792;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f10793;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public Object f10794;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Comparable f10795;

    public /* synthetic */ C2875(int i, Comparable comparable, Object obj) {
        this.f10793 = i;
        this.f10795 = comparable;
        this.f10792 = obj;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static C2875 m6374(Context context, Uri uri, InterfaceC2873 interfaceC2873) {
        return new C2875(0, uri, new C2874(ComponentCallbacks2C0238.m1182(context).f1705.m1144().m1179(), interfaceC2873, ComponentCallbacks2C0238.m1182(context).f1710, context.getContentResolver()));
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    private final void m6375() {
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    private final void m6376() {
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    private final void m6377() {
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    public final void cancel() {
        int i = this.f10793;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x002d, code lost:
    
        if (r7 != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x004c, code lost:
    
        if (r7 != null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x002f, code lost:
    
        r7.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0032, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 7, insn: 0x0028: MOVE (r6 I:??[OBJECT, ARRAY]) = (r7 I:??[OBJECT, ARRAY]), block:B:68:0x0028 */
    /* JADX WARN: Removed duplicated region for block: B:13:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00df  */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.NullPointerException] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r6v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.io.InputStream m6378() {
        /*
            Method dump skipped, instructions count: 227
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p191.C2875.m6378():java.io.InputStream");
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ˑﹳ */
    public final int mo1111() {
        switch (this.f10793) {
            case 0:
                return 1;
            case 1:
                return 1;
            default:
                return 1;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ⁱˊ */
    public final void mo1112() {
        switch (this.f10793) {
            case 0:
                InputStream inputStream = (InputStream) this.f10794;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                        return;
                    } catch (IOException unused) {
                        return;
                    }
                }
                return;
            case 1:
                try {
                    ((ByteArrayInputStream) this.f10794).close();
                    return;
                } catch (IOException unused2) {
                    return;
                }
            default:
                Object obj = this.f10794;
                if (obj != null) {
                    try {
                        switch (((C4579) this.f10792).f17069) {
                            case 4:
                                ((ParcelFileDescriptor) obj).close();
                                break;
                            default:
                                ((InputStream) obj).close();
                                break;
                        }
                        return;
                    } catch (IOException unused3) {
                        return;
                    }
                }
                return;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﹳٴ */
    public final Class mo1113() {
        switch (this.f10793) {
            case 0:
                return InputStream.class;
            case 1:
                ((C4579) this.f10792).getClass();
                return InputStream.class;
            default:
                return ((C4579) this.f10792).m9128();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﾞᴵ */
    public final void mo1114(EnumC0235 enumC0235, InterfaceC0218 interfaceC0218) {
        Object open;
        switch (this.f10793) {
            case 0:
                try {
                    InputStream m6378 = m6378();
                    this.f10794 = m6378;
                    interfaceC0218.mo1108(m6378);
                    return;
                } catch (FileNotFoundException e) {
                    if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                    }
                    interfaceC0218.mo1107(e);
                    return;
                }
            case 1:
                try {
                    ByteArrayInputStream m9127 = C4579.m9127((String) this.f10795);
                    this.f10794 = m9127;
                    interfaceC0218.mo1108(m9127);
                    return;
                } catch (IllegalArgumentException e2) {
                    interfaceC0218.mo1107(e2);
                    return;
                }
            default:
                try {
                    C4579 c4579 = (C4579) this.f10792;
                    File file = (File) this.f10795;
                    switch (c4579.f17069) {
                        case 4:
                            open = ParcelFileDescriptor.open(file, 268435456);
                            break;
                        default:
                            open = new FileInputStream(file);
                            break;
                    }
                    this.f10794 = open;
                    interfaceC0218.mo1108(open);
                    return;
                } catch (FileNotFoundException e3) {
                    if (Log.isLoggable("FileLoader", 3)) {
                    }
                    interfaceC0218.mo1107(e3);
                    return;
                }
        }
    }
}
