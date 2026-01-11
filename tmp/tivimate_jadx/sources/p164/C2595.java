package p164;

import com.bumptech.glide.ˈ;
import java.io.IOException;
import java.io.OutputStream;
import p393.C4709;

/* renamed from: ˊᐧ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2595 implements InterfaceC2576 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f9829;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f9830;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f9831;

    public /* synthetic */ C2595(Object obj, int i, Object obj2) {
        this.f9830 = i;
        this.f9831 = obj;
        this.f9829 = obj2;
    }

    @Override // p164.InterfaceC2576, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        switch (this.f9830) {
            case 0:
                C4709 c4709 = (C4709) this.f9831;
                C2595 c2595 = (C2595) this.f9829;
                c4709.m5779();
                try {
                    c2595.close();
                    if (c4709.m5777()) {
                        throw c4709.m9426(null);
                    }
                    return;
                } catch (IOException e) {
                    if (!c4709.m5777()) {
                        throw e;
                    }
                    throw c4709.m9426(e);
                } finally {
                    c4709.m5777();
                }
            default:
                ((OutputStream) this.f9831).close();
                return;
        }
    }

    @Override // p164.InterfaceC2576, java.io.Flushable
    public final void flush() {
        switch (this.f9830) {
            case 0:
                C4709 c4709 = (C4709) this.f9831;
                C2595 c2595 = (C2595) this.f9829;
                c4709.m5779();
                try {
                    c2595.flush();
                    if (c4709.m5777()) {
                        throw c4709.m9426(null);
                    }
                    return;
                } catch (IOException e) {
                    if (!c4709.m5777()) {
                        throw e;
                    }
                    throw c4709.m9426(e);
                } finally {
                    c4709.m5777();
                }
            default:
                ((OutputStream) this.f9831).flush();
                return;
        }
    }

    public final String toString() {
        switch (this.f9830) {
            case 0:
                return "AsyncTimeout.sink(" + ((C2595) this.f9829) + ')';
            default:
                return "sink(" + ((OutputStream) this.f9831) + ')';
        }
    }

    @Override // p164.InterfaceC2576
    /* renamed from: ˑﹳ */
    public final C2580 mo5737() {
        switch (this.f9830) {
            case 0:
                return (C4709) this.f9831;
            default:
                return (C2580) this.f9829;
        }
    }

    @Override // p164.InterfaceC2576
    /* renamed from: ᵔי */
    public final void mo5741(C2599 c2599, long j) {
        switch (this.f9830) {
            case 0:
                ˈ.ᵔᵢ(c2599.f9835, 0L, j);
                long j2 = j;
                while (true) {
                    long j3 = 0;
                    if (j2 <= 0) {
                        return;
                    }
                    C2577 c2577 = c2599.f9834;
                    while (true) {
                        if (j3 < 65536) {
                            j3 += c2577.f9778 - c2577.f9782;
                            if (j3 >= j2) {
                                j3 = j2;
                            } else {
                                c2577 = c2577.f9784;
                            }
                        }
                    }
                    C4709 c4709 = (C4709) this.f9831;
                    C2595 c2595 = (C2595) this.f9829;
                    c4709.m5779();
                    try {
                        try {
                            c2595.mo5741(c2599, j3);
                            if (c4709.m5777()) {
                                throw c4709.m9426(null);
                            }
                            j2 -= j3;
                        } catch (IOException e) {
                            if (!c4709.m5777()) {
                                throw e;
                            }
                            throw c4709.m9426(e);
                        }
                    } catch (Throwable th) {
                        c4709.m5777();
                        throw th;
                    }
                }
            default:
                ˈ.ᵔᵢ(c2599.f9835, 0L, j);
                while (j > 0) {
                    ((C2580) this.f9829).mo5766();
                    C2577 c25772 = c2599.f9834;
                    int min = (int) Math.min(j, c25772.f9778 - c25772.f9782);
                    ((OutputStream) this.f9831).write(c25772.f9783, c25772.f9782, min);
                    int i = c25772.f9782 + min;
                    c25772.f9782 = i;
                    long j4 = min;
                    j -= j4;
                    c2599.f9835 -= j4;
                    if (i == c25772.f9778) {
                        c2599.f9834 = c25772.m5776();
                        AbstractC2570.m5744(c25772);
                    }
                }
                return;
        }
    }
}
