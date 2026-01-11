package p383;

import android.os.ParcelFileDescriptor;
import android.util.Base64;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import p031.C1144;
import p031.InterfaceC1145;
import p087.AbstractC1748;

/* renamed from: ⁱʼ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4579 implements InterfaceC1145 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f17069;

    public /* synthetic */ C4579(int i) {
        this.f17069 = i;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static ByteArrayInputStream m9127(String str) {
        if (!str.startsWith("data:image")) {
            throw new IllegalArgumentException("Not a valid image data URL.");
        }
        int indexOf = str.indexOf(44);
        if (indexOf == -1) {
            throw new IllegalArgumentException("Missing comma in data URL.");
        }
        if (str.substring(0, indexOf).endsWith(";base64")) {
            return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
        }
        throw new IllegalArgumentException("Not a base64 image data URL.");
    }

    @Override // p031.InterfaceC1145
    /* renamed from: ˉˆ */
    public boolean mo3578(Object obj, File file, C1144 c1144) {
        try {
            AbstractC1748.m4708((ByteBuffer) obj, file);
            return true;
        } catch (IOException e) {
            return Log.isLoggable("ByteBufferEncoder", 3) ? false : false;
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public Class m9128() {
        switch (this.f17069) {
            case 0:
                return ByteBuffer.class;
            case 1:
                return InputStream.class;
            case 2:
            case 3:
            default:
                return InputStream.class;
            case 4:
                return ParcelFileDescriptor.class;
        }
    }
}
