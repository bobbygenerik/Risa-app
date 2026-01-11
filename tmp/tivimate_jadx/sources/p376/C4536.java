package p376;

import android.graphics.Bitmap;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import p257.C3397;
import p257.InterfaceC3396;
import p262.C3433;

/* renamed from: ᵢٴ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4536 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public byte[] f16974;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final int f16975;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3433 f16976;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int[] f16977;

    /* renamed from: ˈ, reason: contains not printable characters */
    public ByteBuffer f16978;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public Bitmap f16979;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f16980;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public byte[] f16982;

    /* renamed from: יـ, reason: contains not printable characters */
    public Boolean f16983;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f16984;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public byte[] f16985;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final boolean f16986;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public byte[] f16987;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int f16988;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int[] f16990;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final int f16991;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public C4537 f16992;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public short[] f16993;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int[] f16989 = new int[256];

    /* renamed from: ˏי, reason: contains not printable characters */
    public Bitmap.Config f16981 = Bitmap.Config.ARGB_8888;

    public C4536(C3433 c3433, C4537 c4537, ByteBuffer byteBuffer, int i) {
        this.f16976 = c3433;
        this.f16992 = new C4537();
        synchronized (this) {
            try {
                if (i <= 0) {
                    throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
                }
                int highestOneBit = Integer.highestOneBit(i);
                int i2 = 0;
                this.f16980 = 0;
                this.f16992 = c4537;
                this.f16984 = -1;
                ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                this.f16978 = asReadOnlyBuffer;
                asReadOnlyBuffer.position(0);
                this.f16978.order(ByteOrder.LITTLE_ENDIAN);
                this.f16986 = false;
                ArrayList arrayList = c4537.f16998;
                int size = arrayList.size();
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    Object obj = arrayList.get(i2);
                    i2++;
                    if (((C4538) obj).f17011 == 3) {
                        this.f16986 = true;
                        break;
                    }
                }
                this.f16975 = highestOneBit;
                int i3 = c4537.f17004;
                this.f16991 = i3 / highestOneBit;
                int i4 = c4537.f17000;
                this.f16988 = i4 / highestOneBit;
                int i5 = i3 * i4;
                C3397 c3397 = (C3397) this.f16976.f13456;
                this.f16974 = c3397 == null ? new byte[i5] : (byte[]) c3397.m7293(i5, byte[].class);
                C3433 c34332 = this.f16976;
                int i6 = this.f16991 * this.f16988;
                C3397 c33972 = (C3397) c34332.f13456;
                this.f16977 = c33972 == null ? new int[i6] : (int[]) c33972.m7293(i6, int[].class);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m9110(Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
        if (config == config3 || config == (config2 = Bitmap.Config.RGB_565)) {
            this.f16981 = config;
            return;
        }
        throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + config3 + " or " + config2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0045, code lost:
    
        if (r5.f16996 == r36.f17012) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005e  */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap m9111(p376.C4538 r36, p376.C4538 r37) {
        /*
            Method dump skipped, instructions count: 1042
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p376.C4536.m9111(ᵢٴ.ﹳٴ, ᵢٴ.ﹳٴ):android.graphics.Bitmap");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004f A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x003e, B:14:0x0048, B:16:0x004f, B:18:0x0059, B:19:0x0064, B:20:0x005c, B:21:0x0066, B:23:0x0077, B:24:0x0083, B:27:0x008c, B:29:0x0090, B:31:0x0098, B:32:0x00a9, B:36:0x00ad, B:38:0x00b1, B:40:0x00c3, B:42:0x00c7, B:43:0x00cb, B:46:0x0088, B:48:0x00d1, B:50:0x00d9, B:53:0x0017, B:55:0x001f, B:56:0x003c), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0077 A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x003e, B:14:0x0048, B:16:0x004f, B:18:0x0059, B:19:0x0064, B:20:0x005c, B:21:0x0066, B:23:0x0077, B:24:0x0083, B:27:0x008c, B:29:0x0090, B:31:0x0098, B:32:0x00a9, B:36:0x00ad, B:38:0x00b1, B:40:0x00c3, B:42:0x00c7, B:43:0x00cb, B:46:0x0088, B:48:0x00d1, B:50:0x00d9, B:53:0x0017, B:55:0x001f, B:56:0x003c), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0090 A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x003e, B:14:0x0048, B:16:0x004f, B:18:0x0059, B:19:0x0064, B:20:0x005c, B:21:0x0066, B:23:0x0077, B:24:0x0083, B:27:0x008c, B:29:0x0090, B:31:0x0098, B:32:0x00a9, B:36:0x00ad, B:38:0x00b1, B:40:0x00c3, B:42:0x00c7, B:43:0x00cb, B:46:0x0088, B:48:0x00d1, B:50:0x00d9, B:53:0x0017, B:55:0x001f, B:56:0x003c), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ad A[Catch: all -> 0x0014, TRY_ENTER, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x003e, B:14:0x0048, B:16:0x004f, B:18:0x0059, B:19:0x0064, B:20:0x005c, B:21:0x0066, B:23:0x0077, B:24:0x0083, B:27:0x008c, B:29:0x0090, B:31:0x0098, B:32:0x00a9, B:36:0x00ad, B:38:0x00b1, B:40:0x00c3, B:42:0x00c7, B:43:0x00cb, B:46:0x0088, B:48:0x00d1, B:50:0x00d9, B:53:0x0017, B:55:0x001f, B:56:0x003c), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0088 A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x003e, B:14:0x0048, B:16:0x004f, B:18:0x0059, B:19:0x0064, B:20:0x005c, B:21:0x0066, B:23:0x0077, B:24:0x0083, B:27:0x008c, B:29:0x0090, B:31:0x0098, B:32:0x00a9, B:36:0x00ad, B:38:0x00b1, B:40:0x00c3, B:42:0x00c7, B:43:0x00cb, B:46:0x0088, B:48:0x00d1, B:50:0x00d9, B:53:0x0017, B:55:0x001f, B:56:0x003c), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00d9 A[Catch: all -> 0x0014, TRY_LEAVE, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x003e, B:14:0x0048, B:16:0x004f, B:18:0x0059, B:19:0x0064, B:20:0x005c, B:21:0x0066, B:23:0x0077, B:24:0x0083, B:27:0x008c, B:29:0x0090, B:31:0x0098, B:32:0x00a9, B:36:0x00ad, B:38:0x00b1, B:40:0x00c3, B:42:0x00c7, B:43:0x00cb, B:46:0x0088, B:48:0x00d1, B:50:0x00d9, B:53:0x0017, B:55:0x001f, B:56:0x003c), top: B:3:0x0007 }] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized android.graphics.Bitmap m9112() {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p376.C4536.m9112():android.graphics.Bitmap");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Bitmap m9113() {
        Boolean bool = this.f16983;
        Bitmap mo7282 = ((InterfaceC3396) this.f16976.f13458).mo7282(this.f16991, this.f16988, (bool == null || bool.booleanValue()) ? Bitmap.Config.ARGB_8888 : this.f16981);
        mo7282.setHasAlpha(true);
        return mo7282;
    }
}
