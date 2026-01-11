package p164;

import java.io.OutputStream;
import java.nio.channels.WritableByteChannel;

/* renamed from: ˊᐧ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public interface InterfaceC2590 extends InterfaceC2576, WritableByteChannel {
    @Override // p164.InterfaceC2576, java.io.Flushable
    void flush();

    InterfaceC2590 write(byte[] bArr);

    InterfaceC2590 writeByte(int i);

    InterfaceC2590 writeInt(int i);

    InterfaceC2590 writeShort(int i);

    /* renamed from: ʼᐧ */
    InterfaceC2590 mo5732(long j);

    /* renamed from: ʾᵎ */
    InterfaceC2590 mo5734(int i, int i2, String str);

    /* renamed from: ʿ */
    InterfaceC2590 mo5735(int i, byte[] bArr);

    /* renamed from: ˈ */
    C2599 mo5736();

    /* renamed from: ـﹶ */
    OutputStream mo5738();

    /* renamed from: ᐧᴵ */
    InterfaceC2590 mo5739(String str);

    /* renamed from: ﾞʻ */
    InterfaceC2590 mo5742(C2571 c2571);
}
