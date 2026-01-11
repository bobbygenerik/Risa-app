package p127;

import android.os.Handler;
import java.io.DataInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import p003.RunnableC0786;
import p017.AbstractC0993;
import p305.AbstractC3731;
import p364.InterfaceC4445;
import ˈˊ.ˉˆ;
import ﹶﾞ.ⁱי;

/* renamed from: ˈـ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2151 implements InterfaceC4445 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public volatile boolean f8369;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final DataInputStream f8370;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C2173 f8371;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2162 f8372;

    /* JADX WARN: Type inference failed for: r1v2, types: [ˈـ.ـˆ, java.lang.Object] */
    public C2151(C2173 c2173, InputStream inputStream) {
        this.f8371 = c2173;
        this.f8370 = new DataInputStream(inputStream);
        ?? obj = new Object();
        obj.f8423 = new ArrayList();
        obj.f8425 = 1;
        this.f8372 = obj;
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo5106() {
        String str;
        while (!this.f8369) {
            byte readByte = this.f8370.readByte();
            if (readByte == 36) {
                int readUnsignedByte = this.f8370.readUnsignedByte();
                int readUnsignedShort = this.f8370.readUnsignedShort();
                byte[] bArr = new byte[readUnsignedShort];
                this.f8370.readFully(bArr, 0, readUnsignedShort);
                C2168 c2168 = (C2168) this.f8371.f8502.get(Integer.valueOf(readUnsignedByte));
                if (c2168 != null && !this.f8371.f8505) {
                    c2168.f8458.add(bArr);
                }
            } else if (this.f8371.f8505) {
                continue;
            } else {
                ⁱי r1 = this.f8371.f8503;
                C2162 c2162 = this.f8372;
                DataInputStream dataInputStream = this.f8370;
                c2162.getClass();
                AbstractC0993 m5138 = c2162.m5138(C2162.m5136(readByte, dataInputStream));
                while (m5138 == null) {
                    if (c2162.f8425 == 3) {
                        long j = c2162.f8424;
                        if (j <= 0) {
                            throw new IllegalStateException("Expects a greater than zero Content-Length.");
                        }
                        int i = ˉˆ.ᵔᵢ(j);
                        AbstractC3731.m7857(i != -1);
                        byte[] bArr2 = new byte[i];
                        dataInputStream.readFully(bArr2, 0, i);
                        ArrayList arrayList = (ArrayList) c2162.f8423;
                        AbstractC3731.m7857(c2162.f8425 == 3);
                        if (i > 0) {
                            int i2 = i - 1;
                            if (bArr2[i2] == 10) {
                                if (i > 1) {
                                    int i3 = i - 2;
                                    if (bArr2[i3] == 13) {
                                        str = new String(bArr2, 0, i3, C2173.f8501);
                                        arrayList.add(str);
                                        m5138 = AbstractC0993.m3264(arrayList);
                                        ((ArrayList) c2162.f8423).clear();
                                        c2162.f8425 = 1;
                                        c2162.f8424 = 0L;
                                    }
                                }
                                str = new String(bArr2, 0, i2, C2173.f8501);
                                arrayList.add(str);
                                m5138 = AbstractC0993.m3264(arrayList);
                                ((ArrayList) c2162.f8423).clear();
                                c2162.f8425 = 1;
                                c2162.f8424 = 0L;
                            }
                        }
                        throw new IllegalArgumentException("Message body is empty or does not end with a LF.");
                    }
                    m5138 = c2162.m5138(C2162.m5136(dataInputStream.readByte(), dataInputStream));
                }
                ((Handler) r1.ᴵˊ).post(new RunnableC0786(r1, 12, m5138));
            }
        }
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void mo5107() {
        this.f8369 = true;
    }
}
