package p157;

import android.graphics.SurfaceTexture;
import android.media.MediaFormat;
import android.opengl.GLES20;
import android.opengl.Matrix;
import androidx.media3.common.util.GlUtil$GlException;
import com.bumptech.glide.C0229;
import java.nio.Buffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import p004.C0815;
import p055.C1495;
import p305.AbstractC3731;
import p305.C3732;
import p457.InterfaceC5386;
import ﹳˋ.ʽʽ;

/* renamed from: ˊˊ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2512 implements InterfaceC5386, InterfaceC2521 {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public byte[] f9547;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C0229 f9548;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final float[] f9549;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C0815 f9550;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public SurfaceTexture f9551;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final float[] f9552;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C0815 f9554;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public volatile int f9555;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public int f9556;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f9557;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AtomicBoolean f9546 = new AtomicBoolean();

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final AtomicBoolean f9553 = new AtomicBoolean(true);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C2518 f9545 = new Object();

    /* JADX WARN: Type inference failed for: r0v2, types: [ˊˊ.ᵎﹶ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, com.bumptech.glide.ʼˎ] */
    public C2512() {
        ?? obj = new Object();
        obj.f1646 = new float[16];
        obj.f1643 = new float[16];
        obj.f1645 = new C0815();
        this.f9548 = obj;
        this.f9554 = new C0815();
        this.f9550 = new C0815();
        this.f9552 = new float[16];
        this.f9549 = new float[16];
        this.f9555 = 0;
        this.f9557 = -1;
    }

    @Override // p457.InterfaceC5386
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo5637(long j, long j2, C1495 c1495, MediaFormat mediaFormat) {
        int i;
        ArrayList arrayList;
        int m7893;
        this.f9554.m2966(j2, Long.valueOf(j));
        byte[] bArr = c1495.f5925;
        int i2 = c1495.f5904;
        byte[] bArr2 = this.f9547;
        int i3 = this.f9557;
        this.f9547 = bArr;
        if (i2 == -1) {
            i2 = this.f9555;
        }
        this.f9557 = i2;
        if (i3 == i2 && Arrays.equals(bArr2, this.f9547)) {
            return;
        }
        byte[] bArr3 = this.f9547;
        C2523 c2523 = null;
        if (bArr3 != null) {
            int i4 = this.f9557;
            C3732 c3732 = new C3732(bArr3);
            try {
                c3732.m7900(4);
                m7893 = c3732.m7893();
                c3732.m7896(0);
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            if (m7893 == 1886547818) {
                c3732.m7900(8);
                int i5 = c3732.f14533;
                int i6 = c3732.f14532;
                while (i5 < i6) {
                    int m78932 = c3732.m7893() + i5;
                    if (m78932 <= i5 || m78932 > i6) {
                        break;
                    }
                    int m78933 = c3732.m7893();
                    if (m78933 != 2037673328 && m78933 != 1836279920) {
                        c3732.m7896(m78932);
                        i5 = m78932;
                    }
                    c3732.m7891(m78932);
                    arrayList = ʽʽ.ʽﹳ(c3732);
                    break;
                }
                arrayList = null;
            } else {
                arrayList = ʽʽ.ʽﹳ(c3732);
            }
            if (arrayList != null) {
                int size = arrayList.size();
                if (size == 1) {
                    C2516 c2516 = (C2516) arrayList.get(0);
                    c2523 = new C2523(c2516, c2516, i4);
                } else if (size == 2) {
                    c2523 = new C2523((C2516) arrayList.get(0), (C2516) arrayList.get(1), i4);
                }
            }
        }
        if (c2523 == null || !C2518.m5644(c2523)) {
            int i7 = this.f9557;
            float radians = (float) Math.toRadians(180.0f);
            float radians2 = (float) Math.toRadians(360.0f);
            float f = radians / 36;
            float f2 = radians2 / 72;
            float[] fArr = new float[15984];
            float[] fArr2 = new float[10656];
            int i8 = 0;
            int i9 = 0;
            int i10 = 0;
            for (int i11 = 36; i8 < i11; i11 = 36) {
                float f3 = radians / 2.0f;
                float f4 = (i8 * f) - f3;
                int i12 = i8 + 1;
                float f5 = (i12 * f) - f3;
                int i13 = 0;
                while (i13 < 73) {
                    int i14 = i12;
                    float f6 = f5;
                    float f7 = radians;
                    int i15 = i9;
                    int i16 = i10;
                    int i17 = 0;
                    int i18 = 2;
                    while (i17 < i18) {
                        float f8 = i17 == 0 ? f4 : f6;
                        float f9 = radians2;
                        float f10 = i13 * f2;
                        float f11 = f4;
                        float f12 = f;
                        double d = 50.0f;
                        double d2 = (f10 + 3.1415927f) - (f9 / 2.0f);
                        double d3 = f8;
                        fArr[i15] = -((float) (Math.cos(d3) * Math.sin(d2) * d));
                        fArr[i15 + 1] = (float) (Math.sin(d3) * d);
                        int i19 = i15 + 3;
                        fArr[i15 + 2] = (float) (Math.cos(d3) * Math.cos(d2) * d);
                        fArr2[i16] = f10 / f9;
                        int i20 = i16 + 2;
                        fArr2[i16 + 1] = ((i8 + i17) * f12) / f7;
                        if ((i13 != 0 || i17 != 0) && (i13 != 72 || i17 != 1)) {
                            i = 2;
                            i15 = i19;
                            i16 = i20;
                            i17++;
                            i18 = i;
                            radians2 = f9;
                            f4 = f11;
                            f = f12;
                        }
                        System.arraycopy(fArr, i15, fArr, i19, 3);
                        i15 += 6;
                        i = 2;
                        System.arraycopy(fArr2, i16, fArr2, i20, 2);
                        i16 += 4;
                        i17++;
                        i18 = i;
                        radians2 = f9;
                        f4 = f11;
                        f = f12;
                    }
                    i13++;
                    i9 = i15;
                    i10 = i16;
                    i12 = i14;
                    f5 = f6;
                    radians = f7;
                    radians2 = radians2;
                    f = f;
                }
                i8 = i12;
            }
            C2516 c25162 = new C2516(new C0815(0, fArr, fArr2, 1));
            c2523 = new C2523(c25162, c25162, i7);
        }
        this.f9550.m2966(j2, c2523);
    }

    @Override // p157.InterfaceC2521
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo5638() {
        this.f9554.m2965();
        C0229 c0229 = this.f9548;
        ((C0815) c0229.f1645).m2965();
        c0229.f1644 = false;
        this.f9553.set(true);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final SurfaceTexture m5639() {
        try {
            GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
            AbstractC3731.m7854();
            this.f9545.m5645();
            AbstractC3731.m7854();
            int[] iArr = new int[1];
            GLES20.glGenTextures(1, iArr, 0);
            AbstractC3731.m7854();
            int i = iArr[0];
            AbstractC3731.m7865(36197, i);
            this.f9556 = i;
        } catch (GlUtil$GlException e) {
            AbstractC3731.m7863("SceneRenderer", "Failed to initialize the renderer", e);
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.f9556);
        this.f9551 = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: ˊˊ.ᵔᵢ
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                C2512.this.f9546.set(true);
            }
        });
        return this.f9551;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5640(float[] fArr) {
        Object m2962;
        GLES20.glClear(16384);
        try {
            AbstractC3731.m7854();
        } catch (GlUtil$GlException e) {
            AbstractC3731.m7863("SceneRenderer", "Failed to draw a frame", e);
        }
        if (this.f9546.compareAndSet(true, false)) {
            SurfaceTexture surfaceTexture = this.f9551;
            surfaceTexture.getClass();
            surfaceTexture.updateTexImage();
            try {
                AbstractC3731.m7854();
            } catch (GlUtil$GlException e2) {
                AbstractC3731.m7863("SceneRenderer", "Failed to draw a frame", e2);
            }
            if (this.f9553.compareAndSet(true, false)) {
                Matrix.setIdentityM(this.f9552, 0);
            }
            long timestamp = this.f9551.getTimestamp();
            C0815 c0815 = this.f9554;
            synchronized (c0815) {
                m2962 = c0815.m2962(false, timestamp);
            }
            Long l = (Long) m2962;
            if (l != null) {
                C0229 c0229 = this.f9548;
                float[] fArr2 = this.f9552;
                float[] fArr3 = (float[]) ((C0815) c0229.f1645).m2964(l.longValue());
                if (fArr3 != null) {
                    float[] fArr4 = (float[]) c0229.f1643;
                    float f = fArr3[0];
                    float f2 = -fArr3[1];
                    float f3 = -fArr3[2];
                    float length = Matrix.length(f, f2, f3);
                    if (length != 0.0f) {
                        Matrix.setRotateM(fArr4, 0, (float) Math.toDegrees(length), f / length, f2 / length, f3 / length);
                    } else {
                        Matrix.setIdentityM(fArr4, 0);
                    }
                    if (!c0229.f1644) {
                        C0229.m1127((float[]) c0229.f1646, (float[]) c0229.f1643);
                        c0229.f1644 = true;
                    }
                    Matrix.multiplyMM(fArr2, 0, (float[]) c0229.f1646, 0, (float[]) c0229.f1643, 0);
                }
            }
            C2523 c2523 = (C2523) this.f9550.m2964(timestamp);
            if (c2523 != null) {
                C2518 c2518 = this.f9545;
                c2518.getClass();
                if (C2518.m5644(c2523)) {
                    c2518.f9598 = c2523.f9611;
                    c2518.f9597 = new C0815(c2523.f9614.f9576[0]);
                    if (!c2523.f9612) {
                        new C0815(c2523.f9613.f9576[0]);
                    }
                }
            }
        }
        Matrix.multiplyMM(this.f9549, 0, fArr, 0, this.f9552, 0);
        C2518 c25182 = this.f9545;
        int i = this.f9556;
        float[] fArr5 = this.f9549;
        C0815 c08152 = c25182.f9597;
        if (c08152 == null) {
            return;
        }
        int i2 = c25182.f9598;
        GLES20.glUniformMatrix3fv(c25182.f9594, 1, false, i2 == 1 ? C2518.f9590 : i2 == 2 ? C2518.f9591 : C2518.f9589, 0);
        GLES20.glUniformMatrix4fv(c25182.f9593, 1, false, fArr5, 0);
        GLES20.glActiveTexture(33984);
        GLES20.glBindTexture(36197, i);
        GLES20.glUniform1i(c25182.f9596, 0);
        try {
            AbstractC3731.m7854();
        } catch (GlUtil$GlException e3) {
        }
        GLES20.glVertexAttribPointer(c25182.f9599, 3, 5126, false, 12, (Buffer) c08152.f3476);
        try {
            AbstractC3731.m7854();
        } catch (GlUtil$GlException e4) {
        }
        GLES20.glVertexAttribPointer(c25182.f9595, 2, 5126, false, 8, (Buffer) c08152.f3478);
        try {
            AbstractC3731.m7854();
        } catch (GlUtil$GlException e5) {
        }
        GLES20.glDrawArrays(c08152.f3479, 0, c08152.f3477);
        try {
            AbstractC3731.m7854();
        } catch (GlUtil$GlException e6) {
        }
    }

    @Override // p157.InterfaceC2521
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo5641(long j, float[] fArr) {
        ((C0815) this.f9548.f1645).m2966(j, fArr);
    }
}
