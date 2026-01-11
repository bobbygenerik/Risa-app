package p361;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import p164.C2571;
import p164.C2580;
import p164.C2599;
import p164.InterfaceC2588;
import p164.InterfaceC2592;
import p394.AbstractC4710;

/* renamed from: ᵔᐧ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4392 implements InterfaceC2588 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f16333;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2592 f16334;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f16335;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f16336;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f16337;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f16338;

    public C4392(InterfaceC2592 interfaceC2592) {
        this.f16334 = interfaceC2592;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ˑﹳ */
    public final C2580 mo5762() {
        return this.f16334.mo5762();
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ٴﹶ */
    public final long mo5763(C2599 c2599, long j) {
        int i;
        int readInt;
        do {
            int i2 = this.f16338;
            InterfaceC2592 interfaceC2592 = this.f16334;
            if (i2 == 0) {
                interfaceC2592.skip(this.f16336);
                this.f16336 = 0;
                if ((this.f16333 & 4) == 0) {
                    i = this.f16335;
                    int m9439 = AbstractC4710.m9439(interfaceC2592);
                    this.f16338 = m9439;
                    this.f16337 = m9439;
                    int readByte = interfaceC2592.readByte() & 255;
                    this.f16333 = interfaceC2592.readByte() & 255;
                    Logger logger = C4396.f16351;
                    if (logger.isLoggable(Level.FINE)) {
                        C2571 c2571 = AbstractC4398.f16359;
                        logger.fine(AbstractC4398.m8898(true, this.f16335, this.f16337, readByte, this.f16333));
                    }
                    readInt = interfaceC2592.readInt() & Integer.MAX_VALUE;
                    this.f16335 = readInt;
                    if (readByte != 9) {
                        throw new IOException(readByte + " != TYPE_CONTINUATION");
                    }
                }
            } else {
                long mo5763 = interfaceC2592.mo5763(c2599, Math.min(j, i2));
                if (mo5763 != -1) {
                    this.f16338 -= (int) mo5763;
                    return mo5763;
                }
            }
            return -1L;
        } while (readInt == i);
        throw new IOException("TYPE_CONTINUATION streamId changed");
    }
}
