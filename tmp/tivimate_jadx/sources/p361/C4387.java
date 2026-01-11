package p361;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import p010.AbstractC0844;
import p164.C2599;
import p164.InterfaceC2590;
import p307.AbstractC3740;
import p394.AbstractC4710;

/* renamed from: ᵔᐧ.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4387 implements Closeable {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final Logger f16294 = Logger.getLogger(AbstractC4398.class.getName());

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f16295;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2590 f16296;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f16297;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2599 f16298;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C4381 f16299;

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    public C4387(InterfaceC2590 interfaceC2590) {
        this.f16296 = interfaceC2590;
        ?? obj = new Object();
        this.f16298 = obj;
        this.f16295 = 16384;
        this.f16299 = new C4381(obj);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        synchronized (this) {
            this.f16297 = true;
            this.f16296.close();
        }
    }

    public final void flush() {
        synchronized (this) {
            if (this.f16297) {
                throw new IOException("closed");
            }
            this.f16296.flush();
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8870(C4393 c4393) {
        synchronized (this) {
            try {
                if (this.f16297) {
                    throw new IOException("closed");
                }
                int i = this.f16295;
                int i2 = c4393.f16340;
                if ((i2 & 32) != 0) {
                    i = c4393.f16339[5];
                }
                this.f16295 = i;
                if (((i2 & 2) != 0 ? c4393.f16339[1] : -1) != -1) {
                    C4381 c4381 = this.f16299;
                    int min = Math.min((i2 & 2) != 0 ? c4393.f16339[1] : -1, 16384);
                    int i3 = c4381.f16265;
                    if (i3 != min) {
                        if (min < i3) {
                            c4381.f16269 = Math.min(c4381.f16269, min);
                        }
                        c4381.f16264 = true;
                        c4381.f16265 = min;
                        int i4 = c4381.f16268;
                        if (min < i4) {
                            if (min == 0) {
                                C4394[] c4394Arr = c4381.f16266;
                                Arrays.fill(c4394Arr, 0, c4394Arr.length, (Object) null);
                                c4381.f16271 = c4381.f16266.length - 1;
                                c4381.f16267 = 0;
                                c4381.f16268 = 0;
                            } else {
                                c4381.m8867(i4 - min);
                            }
                        }
                    }
                }
                m8874(0, 0, 4, 1);
                this.f16296.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void m8871(int i, int i2, boolean z) {
        synchronized (this) {
            if (this.f16297) {
                throw new IOException("closed");
            }
            m8874(0, 8, 6, z ? 1 : 0);
            this.f16296.writeInt(i);
            this.f16296.writeInt(i2);
            this.f16296.flush();
        }
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final void m8872(int i, long j) {
        synchronized (this) {
            try {
                if (this.f16297) {
                    throw new IOException("closed");
                }
                if (j == 0 || j > 2147483647L) {
                    throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j).toString());
                }
                Logger logger = f16294;
                if (logger.isLoggable(Level.FINE)) {
                    logger.fine(AbstractC4398.m8897(i, 4, j, false));
                }
                m8874(i, 4, 8, 0);
                this.f16296.writeInt((int) j);
                this.f16296.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m8873(int i, int i2) {
        synchronized (this) {
            if (this.f16297) {
                throw new IOException("closed");
            }
            if (AbstractC0844.m3018(i2) == -1) {
                throw new IllegalArgumentException("Failed requirement.");
            }
            m8874(i, 4, 3, 0);
            this.f16296.writeInt(AbstractC0844.m3018(i2));
            this.f16296.flush();
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m8874(int i, int i2, int i3, int i4) {
        if (i3 != 8) {
            Level level = Level.FINE;
            Logger logger = f16294;
            if (logger.isLoggable(level)) {
                logger.fine(AbstractC4398.m8898(false, i, i2, i3, i4));
            }
        }
        if (i2 > this.f16295) {
            throw new IllegalArgumentException(("FRAME_SIZE_ERROR length > " + this.f16295 + ": " + i2).toString());
        }
        if ((Integer.MIN_VALUE & i) != 0) {
            throw new IllegalArgumentException(AbstractC3740.m7932(i, "reserved bit set: ").toString());
        }
        byte[] bArr = AbstractC4710.f17800;
        InterfaceC2590 interfaceC2590 = this.f16296;
        interfaceC2590.writeByte((i2 >>> 16) & 255);
        interfaceC2590.writeByte((i2 >>> 8) & 255);
        interfaceC2590.writeByte(i2 & 255);
        interfaceC2590.writeByte(i3 & 255);
        interfaceC2590.writeByte(i4 & 255);
        interfaceC2590.writeInt(i & Integer.MAX_VALUE);
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m8875(boolean z, int i, ArrayList arrayList) {
        synchronized (this) {
            if (this.f16297) {
                throw new IOException("closed");
            }
            this.f16299.m8864(arrayList);
            long j = this.f16298.f9835;
            long min = Math.min(this.f16295, j);
            int i2 = j == min ? 4 : 0;
            if (z) {
                i2 |= 1;
            }
            m8874(i, (int) min, 1, i2);
            this.f16296.mo5741(this.f16298, min);
            if (j > min) {
                long j2 = j - min;
                while (j2 > 0) {
                    long min2 = Math.min(this.f16295, j2);
                    j2 -= min2;
                    m8874(i, (int) min2, 9, j2 == 0 ? 4 : 0);
                    this.f16296.mo5741(this.f16298, min2);
                }
            }
        }
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final void m8876(C4393 c4393) {
        synchronized (this) {
            try {
                if (this.f16297) {
                    throw new IOException("closed");
                }
                m8874(0, Integer.bitCount(c4393.f16340) * 6, 4, 0);
                for (int i = 0; i < 10; i++) {
                    boolean z = true;
                    if (((1 << i) & c4393.f16340) == 0) {
                        z = false;
                    }
                    if (z) {
                        this.f16296.writeShort(i);
                        this.f16296.writeInt(c4393.f16339[i]);
                    }
                }
                this.f16296.flush();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m8877(boolean z, int i, C2599 c2599, int i2) {
        synchronized (this) {
            if (this.f16297) {
                throw new IOException("closed");
            }
            m8874(i, i2, 0, z ? 1 : 0);
            if (i2 > 0) {
                this.f16296.mo5741(c2599, i2);
            }
        }
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m8878(byte[] bArr, int i, int i2) {
        synchronized (this) {
            if (this.f16297) {
                throw new IOException("closed");
            }
            if (AbstractC0844.m3018(i2) == -1) {
                throw new IllegalArgumentException("errorCode.httpCode == -1");
            }
            m8874(0, bArr.length + 8, 7, 0);
            this.f16296.writeInt(i);
            this.f16296.writeInt(AbstractC0844.m3018(i2));
            if (bArr.length != 0) {
                this.f16296.write(bArr);
            }
            this.f16296.flush();
        }
    }
}
