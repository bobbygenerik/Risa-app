package p331;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.google.android.gms.internal.measurement.ˏʻ;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import p031.C1144;
import p031.InterfaceC1139;
import p080.InterfaceC1710;
import p257.C3397;

/* renamed from: ᴵﹶ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4193 implements InterfaceC1139 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3397 f15603;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4195 f15604;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ArrayList f15605;

    public C4193(ArrayList arrayList, C4195 c4195, C3397 c3397) {
        this.f15605 = arrayList;
        this.f15604 = c4195;
        this.f15603 = c3397;
    }

    @Override // p031.InterfaceC1139
    /* renamed from: ⁱˊ */
    public final InterfaceC1710 mo3568(Object obj, int i, int i2, C1144 c1144) {
        byte[] bArr;
        InputStream inputStream = (InputStream) obj;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr2 = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr2);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
            byteArrayOutputStream.flush();
            bArr = byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
            }
            bArr = null;
        }
        if (bArr == null) {
            return null;
        }
        return this.f15604.mo3568(ByteBuffer.wrap(bArr), i, i2, c1144);
    }

    @Override // p031.InterfaceC1139
    /* renamed from: ﹳٴ */
    public final boolean mo3569(Object obj, C1144 c1144) {
        return !((Boolean) c1144.m3577(AbstractC4192.f15601)).booleanValue() && ˏʻ.ﹳᐧ(this.f15605, (InputStream) obj, this.f15603) == ImageHeaderParser$ImageType.GIF;
    }
}
